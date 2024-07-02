import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:tsahel/app/utils/app_fonts.dart';
import '../utils/app_colors.dart';
import '../utils/app_fonts.dart';

  ThemeData americanBoardTheme() {
  return ThemeData(
    /// main colors of the app
    //   primaryColor: ColorManager.primary,
    //   primaryColorLight: ColorManager.primaryTwentyPercentLighter,
    //   primaryColorDark: ColorManager.success,
    //   disabledColor: ColorManager.lightColor,
    scaffoldBackgroundColor: AppColors.white,
    fontFamily: "PTSerif",
    bottomNavigationBarTheme:const BottomNavigationBarThemeData(
      backgroundColor: AppColors.black,

    ) ,
     canvasColor: Colors.transparent,
     // fontFamily: AppFonts.poppins,
      useMaterial3: true,
      /// App bar theme
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        // Status bar color
        //statusBarColor: AppColors.black,
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light
      ),
      centerTitle: false,
      backgroundColor: AppColors.white,
      elevation: 0,
      titleTextStyle: TextStyle(
        // fontFamily: AppFonts.poppins,
        fontSize: 22.sp,
        color: AppColors.white,
      ),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: AppColors.white,
      surfaceTintColor: AppColors.white,
    )
  );
}

class Themes {
  static final light = ThemeData.light(useMaterial3: true).copyWith(
    primaryColor: AppColors.primaryLight,
    hintColor: AppColors.grey515151,
    cardColor: AppColors.primaryLight,
    scaffoldBackgroundColor: AppColors.scaffoldBackGroundLight,
    dividerColor: AppColors.grey242A37.withOpacity(0.5),
    hoverColor: AppColors.primaryLight,
    textTheme: TextTheme(
      labelLarge: TextStyle(
          color: AppColors.buttonTextLight,
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
          fontFamily: AppFonts.pTSerif,
      ),
      displayLarge: TextStyle(
        color: AppColors.blackColor,
        fontSize: 34.sp,
        fontWeight: FontWeight.bold,
        fontFamily:AppFonts.pTSerif,
      ),
      displayMedium: TextStyle(
        color: AppColors.blackColor,
        fontSize: 22.sp,
        fontFamily: AppFonts.pTSerif,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        color: AppColors.blackColor,
        fontFamily: AppFonts.pTSerif,
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(
        fontFamily: AppFonts.pTSerif,
        color: AppColors.blackColor,
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        color: AppColors.blackColor,
        fontFamily:AppFonts.pTSerif,
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        color: AppColors.blackColor,
        fontFamily: AppFonts.pTSerif,
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: TextStyle(
        color: AppColors.blackColor,
        fontFamily: AppFonts.pTSerif,
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: AppColors.blackColor,
        fontFamily: AppFonts.pTSerif,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.primaryLight,
      unselectedItemColor: AppColors.grey8080,
      unselectedLabelStyle: TextStyle(
          fontSize: 11.sp, color: AppColors.grey8080, height: 2.h),
      selectedLabelStyle: TextStyle(
          fontSize: 11.sp, color: AppColors.primaryLight, height: 2.h),
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    ),
    colorScheme: const ColorScheme(
      background: AppColors.scaffoldBackGroundLight,
      primaryContainer: AppColors.white,
      onPrimaryContainer:AppColors.white ,
      brightness: Brightness.light,
      primary: AppColors.primaryLight,
      onPrimary:AppColors.primaryLight,
      secondary: AppColors.secondary,
      onSecondary: AppColors.secondary,
      error: AppColors.red,
      onError: AppColors.red,
      onBackground: AppColors.scaffoldBackGroundLight,
      surface: AppColors.primaryLight,
      onSurface: AppColors.white,
    ),
    // colorScheme: const ColorScheme(error: AppColors.errorColor),
    bottomAppBarTheme: const BottomAppBarTheme(color: AppColors.white),
  );
  static final dark = ThemeData.dark(useMaterial3: true).copyWith(
    primaryColor: AppColors.textDark,
    hintColor: AppColors.hintColorDark,
    cardColor: AppColors.textFieldColorDark,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColorDark,
    dividerColor: AppColors.white.withOpacity(0.5),
    hoverColor: AppColors.primaryLight,
    textTheme: TextTheme(
      labelLarge: TextStyle(
        fontFamily: AppFonts.pTSerif,
        color: AppColors.white,
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
      ),
      displayLarge: TextStyle(
        fontFamily: AppFonts.pTSerif,
        color: AppColors.white,
        fontSize: 34.sp,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        fontFamily: AppFonts.pTSerif,
        color: AppColors.white,
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        fontFamily: AppFonts.pTSerif,
        color: AppColors.white,
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(
        fontFamily: AppFonts.pTSerif,
        color: AppColors.white,
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontFamily: AppFonts.pTSerif,
        color: AppColors.white,
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        fontFamily: AppFonts.pTSerif,
        color: AppColors.white,
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: TextStyle(
        fontFamily: AppFonts.pTSerif,
        color: AppColors.white,
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontFamily:AppFonts.pTSerif,
        color: AppColors.white,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.blackColor,
      selectedItemColor: AppColors.primaryLight,
      unselectedItemColor: AppColors.hintColorDark,
      unselectedLabelStyle: TextStyle(
          fontSize: 11.sp, color: AppColors.hintColorDark, height: 2.h),
      selectedLabelStyle: TextStyle(
          fontSize: 11.sp, color: AppColors.primaryLight, height: 2.h),
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    ),
    colorScheme: const ColorScheme(
      background: AppColors.scaffoldBackgroundColorDark,
      primaryContainer: AppColors.black,
      brightness: Brightness.light,
      primary: AppColors.primaryLight,
      onPrimary:AppColors.primaryLight,
      secondary: AppColors.secondary,
      onSecondary: AppColors.secondary,
      error: AppColors.red,
      onError: AppColors.red,
      onBackground: AppColors.white,
      surface: AppColors.primaryLight,
      onSurface: AppColors.white,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(color: AppColors.blackColor),
  );
}
