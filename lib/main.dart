import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolayca_app/features/auth_feature/presentation/screens/login_screen.dart';
import 'package:kolayca_app/features/home_feature/presentation/screens/about_us_screen.dart';
import 'package:kolayca_app/features/home_feature/presentation/screens/home_screen.dart';
import 'package:overlay_support/overlay_support.dart';
import 'app/services/cache_service.dart';
import 'app/themes/get_theme.dart';
import 'app/themes/theme_cubit/theme_cubit.dart';
import 'app/utils/bloc_observer.dart';
import 'app/utils/consts.dart';
import 'app/utils/get_it_injection.dart';
import 'app/utils/language_manager.dart';
import 'app/utils/navigation_helper.dart';
import 'app/widgets/carousel_widget/carousel_cubit/carousel_cubit.dart';
import 'features/auth_feature/presentation/presentation_logic_holder/auth_cubit.dart';
import 'features/home_feature/presentation/screens/recorded_lesson_screen.dart';
import 'features/intro_feature/screens/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await init();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<CarouselCubit>(
          create: (BuildContext context) => CarouselCubit(),
        ),
        BlocProvider<AuthCubit>(
          create: (BuildContext context) => AuthCubit(),
        ),
        BlocProvider<ThemeCubit>(
          create: (BuildContext context) => ThemeCubit(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key,});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [
        english_local,
        arabic_local,
      ],
      saveLocale: true,
      startLocale:arabic_local ,
      path: assets_path_localisations,
      fallbackLocale: english_local,
      //
      //* OverlaySupport
      //
      child: OverlaySupport.global(
        //
        //* ScreenUtilInit
        //
        child: ScreenUtilInit(
          designSize: const Size(504.33, 1082),
          minTextAdapt: true,
          splitScreenMode: true,
          //
          //* MaterialApp
          //
          builder: (context, child) => BlocBuilder<ThemeCubit,ThemeState>(
              builder: (cubit,state) {
                return MaterialApp(
                    localizationsDelegates: context.localizationDelegates,
                    supportedLocales: context.supportedLocales,
                    // locale: CookieManagerService.getLocale,
                    locale: context.locale,
                    title: 'Kolayca App',
                    theme: kolaycaTheme(),
                    debugShowCheckedModeBanner: false,
                    navigatorKey: getIt<NavHelper>().navigatorKey,
                    //
                    //* EasyLoading
                    //
                    builder: EasyLoading.init(
                      builder: (context, widget) {
                        return MediaQuery(
                          data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.0)),
                          child: widget!,
                        );
                      },
                    ),
                    home: const AboutUsScreen()
                );
              }
          ),
        ),
      ),
    );
  }
}