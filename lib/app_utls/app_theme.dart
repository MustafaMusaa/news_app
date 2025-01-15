import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.bglight,
    appBarTheme:const AppBarTheme(color: AppColors.white),
    primaryColor: AppColors.primaryColorLight,
    primaryColorLight: AppColors.bglight,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.transparent,
      shape: StadiumBorder(
        side: BorderSide(
          color: AppColors.white,
          width: 5,
        ),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      showUnselectedLabels: true,
    ),
  );
  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.primaryColorDark,
      primaryColorDark: AppColors.primaryColorDark,
      appBarTheme:const AppBarTheme(color: AppColors.black),
      primaryColor: AppColors.primaryColorDark,
      primaryColorLight: AppColors.primaryColorDark,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.transparent,
        shape: StadiumBorder(
          side: BorderSide(
            color: AppColors.white,
            width: 5,
          ),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 0,
        showUnselectedLabels: true,
      ));
}
