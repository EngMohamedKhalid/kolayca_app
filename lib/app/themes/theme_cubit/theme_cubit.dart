

import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../services/cache_service.dart';
import '../../utils/get_it_injection.dart';
import '../../utils/navigation_helper.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());
  static ThemeCubit get() => BlocProvider.of(getIt<NavHelper>().navigatorKey.currentState!.context);
  bool isDarkMode =false;

  void changeThemeMode(String mode){
    emit(ChangeTheme());
    isDarkMode = mode =="dark";
    getIt<CacheService>().saveThemeMode(theme: mode);
    emit(ThemeInitial());
  }

}
