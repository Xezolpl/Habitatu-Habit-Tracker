import 'dart:ui';

import 'package:flutter/material.dart';

abstract class AppFontSizes {
  static const small = 12.0;
  static const normal = 14.0;
  static const big = 16.0;
}

abstract class AppColors {
  //Basic colors
  static const white = Color(0xffffffff);
  static const whiteGray = Color(0xffEFEFEF);
  static const lightGray = Color(0xffC4C4C4);
  static const gray = Color(0xff737373);
  static const black = Color(0xff000000);

  //Text colors
  static const textBlack = Color(0xff000000);
  static const textDark = Color(0xff555555);
  static const textDarkGray = Color(0xff737373);
  static const textLightGray = Color(0xff909090);
  static const textDarkWhite = Color(0xffABABAB);
  static const textWhite = Color(0xffE3E3E3);

  //Radios & Checkboxes
  static const accentGold = Color(0xffF6A600);
  static const radioBlack = Color(0xff161616);
  static const radioDarkGray = Color(0xff37343B);
  static const radioLightGray = Color(0xff5F5F5F);
  static const radioWhite = Color(0xffEFEBFF);

  //Background
  static const backgroundWhite = Color(0xffFAFAFA);
  static const backgroundLightGray = Color(0xffe5e5e5);
  static const backgroundDarkGray = Color(0xff242424);
  static const backgroundBlack = Color(0xff000000);

  //Icons
  static const iconLightGray = Color(0xffE3E3E3);
  static const iconBlack = Color(0xff000000);

  static Color getTextColorForBackground(Color backgroundColor) {
    return backgroundColor.computeLuminance() < 0.50 ? white : black;
  }
}

abstract class AppTextStyle {
  static TextStyle robotoBold(
          {Color? color,
          double? size,
          double? letterSpacing,
          double? height,
          TextDecoration? decoration}) =>
      _textStyle(
          fontFamily: 'Roboto',
          color: color,
          size: size,
          decoration: decoration,
          fontWeight: FontWeight.w700,
          letterSpacing: letterSpacing,
          height: height);

  static TextStyle robotoRegular(
          {Color? color,
          double? size,
          double? letterSpacing,
          double? height,
          TextDecoration? decoration}) =>
      _textStyle(
          fontFamily: 'Roboto',
          color: color,
          size: size,
          decoration: decoration,
          fontWeight: FontWeight.w400,
          letterSpacing: letterSpacing,
          height: height);

  static TextStyle robotoMedium({
    Color? color,
    double? size,
    double? height,
    TextDecoration? decoration,
    double? letterSpacing,
  }) =>
      _textStyle(
          fontFamily: 'Roboto',
          color: color,
          size: size,
          decoration: decoration,
          fontWeight: FontWeight.w600,
          letterSpacing: letterSpacing,
          height: height);

  static TextStyle _textStyle(
      {required String fontFamily,
      Color? color,
      double? size,
      FontWeight? fontWeight,
      TextDecoration? decoration,
      double? letterSpacing,
      double? height}) {
    return TextStyle(
        fontFamily: fontFamily,
        color: color,
        fontSize: size,
        fontWeight: fontWeight ?? FontWeight.w400,
        decoration: decoration ?? TextDecoration.none,
        letterSpacing: letterSpacing ?? 0,
        height: height);
  }
}
