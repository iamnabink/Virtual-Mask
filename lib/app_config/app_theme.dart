import 'package:flutter/material.dart';
import 'package:virtual_mask/app_config/app_colors.dart';

class AppTheme {
  static ThemeData appTheme() {
    return ThemeData(
      fontFamily: 'Roboto',
      primaryColor: AppColors.primaryColor(1),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(elevation: 0, foregroundColor: Colors.white),
      brightness: Brightness.light,
      backgroundColor: AppColors.backgroundColor(1),
      scaffoldBackgroundColor: AppColors.scaffoldColor(0.8),
      // indicatorColor: ,
      // highlightColor: ,
      // hoverColor: ,
      // disabledColor: ,
      // canvasColor: ,
      // appBarTheme: ,
      // buttonColor: ,
      accentColor: AppColors.secondaryColor(1),
      dividerColor: AppColors.secondaryColor(0.1),
      focusColor: AppColors.secondaryColor(1),
      hintColor: AppColors.secondaryColor(0.4),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(color: AppColors.primaryColor(1)),

      textTheme: TextTheme(
        headline6: TextStyle(
            fontSize: 15.0,
            color: AppColors.colorBlack(1),
            height: 1.3),
        headline5: TextStyle(
            fontSize: 16.0,
            color:AppColors.colorBlack(1),
            height: 1.3),
        headline4: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.w500,
            color:AppColors.colorBlack(1),
            height: 1.3),
        headline3: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.w700,
            color:AppColors.colorBlack(1),
            height: 1.3),
        headline2: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
            color:AppColors.colorBlack(1),
            height: 1.4),
        headline1: TextStyle(
            fontSize: 19.0,
            fontWeight: FontWeight.w300,
            color:AppColors.colorBlack(1),
            height: 1.4),
        subtitle1: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w500,
            color:AppColors.colorBlack(1),
            height: 1.3),
        bodyText2: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w400,
            color:AppColors.colorBlack(1),
            height: 1.2),
        bodyText1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color:AppColors.colorBlack(1),
            height: 1.3),
        caption: TextStyle(
            fontSize: 10.0,
            fontWeight: FontWeight.w300,
            color: AppColors.colorBlack(1),
            height: 1.2),
      ),
    );
  }
}
