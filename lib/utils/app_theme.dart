import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_colors.dart';

class Apptheme {
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.transparentColor ,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.white,
            unselectedItemColor: AppColors.black,
            showUnselectedLabels: false,
    )

  ) ;

}