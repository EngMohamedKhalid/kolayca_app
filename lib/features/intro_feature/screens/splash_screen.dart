
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/services/cache_service.dart';
import '../../../app/utils/app_assets.dart';
import '../../../app/utils/get_it_injection.dart';
import '../../../app/utils/helper.dart';
import '../../../app/widgets/image_widget.dart';
import '../../auth_feature/presentation/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2),(){
      late Widget widget ;
      if(getIt<CacheService>().getUserData() == null ){
        widget = const LoginScreen();
      }else{
        widget = const LoginScreen();
      }
      navigateTo(widget,removeAll: true);
    });
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: Center(
  child: ImageWidget(
      imageUrl: AppImages.appLogo,
    width: 250.w,
    height: 250.h,
  ),
),
    );
  }
}
