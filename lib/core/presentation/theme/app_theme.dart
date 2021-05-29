import 'package:flutter/material.dart';
import 'package:habitatu/core/presentation/constants.dart';

abstract class AppTheme {
  static ThemeData light() => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
        primaryColor: AppColors.white,
        accentColor: AppColors.accentGold,
        backgroundColor: AppColors.backgroundLightGray,
        scaffoldBackgroundColor: AppColors.backgroundLightGray,
      );
}
