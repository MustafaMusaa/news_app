import 'package:flutter/material.dart';
import 'package:news_app/app_utls/app_styles.dart';
import 'app_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.white,
  appBarTheme: AppBarTheme(
  backgroundColor: AppColors.white,
  color: AppColors.white,
  centerTitle: true,),
  textTheme: TextTheme(
  labelLarge: AppStyle.black20w500,),
    primaryColor: AppColors.white,

  );


  static final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.black,
  appBarTheme: AppBarTheme(
  backgroundColor: AppColors.white,
  color: AppColors.black,
  centerTitle: true,),
  textTheme: TextTheme(
  labelLarge: AppStyle.white20medium
  ),
  primaryColor: AppColors.black,

  );
}
