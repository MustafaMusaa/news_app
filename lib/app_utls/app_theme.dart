import 'package:flutter/material.dart';
import 'package:news_app/app_utls/app_styles.dart';
import 'app_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(

    ),
    textTheme: TextTheme(
      labelLarge: AppStyle.black20w500
    ),
    primaryColor: AppColors.white,

  );
  static final ThemeData darkTheme = ThemeData(

      ),
    textTheme: TextTheme(
        labelLarge: AppStyle.white20medium
    ),
      primaryColor: AppColors.black,

      );
}
