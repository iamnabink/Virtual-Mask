import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor(double opacity) {
    try {
      // return Color(int.parse(settingRepo.setting.value.mainColor.replaceAll("#", "0xFF"))).withOpacity(opacity);
      return const Color(0xFFFF6B3C).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFFF6B3C).withOpacity(opacity);
    }
  }

  static Color secondaryColor(double opacity) {
    try {
      // return Color(int.parse(settingRepo.setting.value.mainColor.replaceAll("#", "0xFF"))).withOpacity(opacity);
      return const Color(0xFF0564D2).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFF0564D2).withOpacity(opacity);
    }
  }

  static Color secondaryDarkColor(double opacity) {
    try {
      // return Color(int.parse(settingRepo.setting.value.mainColor.replaceAll("#", "0xFF"))).withOpacity(opacity);
      return const Color(0xFF0564D2).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFF0564D2).withOpacity(opacity);
    }
  }

  static Color secondaryLightColor(double opacity) {
    try {
      // return Color(int.parse(settingRepo.setting.value.mainColor.replaceAll("#", "0xFF"))).withOpacity(opacity);
      return const Color(0xFF0564D2).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFF0564D2).withOpacity(opacity);
    }
  }

  static Color primaryDarkColor(double opacity) {
    try {
      // return Color(int.parse(settingRepo.setting.value.mainColor.replaceAll("#", "0xFF"))).withOpacity(opacity);
      return const Color(0xFFD80005);
    } catch (e) {
      return const Color(0xFFD80005).withOpacity(opacity);
    }
  }






  static Color scaffoldColor(double opacity) {
    try {
      // return Color(int.parse(settingRepo.setting.value.mainColor.replaceAll("#", "0xFF"))).withOpacity(opacity);
      return const Color(0xFFFFFFFF).withOpacity(0.97);
    } catch (e) {
      return const Color(0xFFFFFFFF).withOpacity(0.97);
    }
  }

  static Color colorBlack(double opacity) {
    try {
      // return Color(int.parse(settingRepo.setting.value.mainColor.replaceAll("#", "0xFF"))).withOpacity(opacity);
      return  Colors.black.withOpacity(opacity);
    } catch (e) {
      return  Colors.black.withOpacity(opacity);
    }
  }
  static Color colorWhite(double opacity) {
    try {
      // return Color(int.parse(settingRepo.setting.value.mainColor.replaceAll("#", "0xFF"))).withOpacity(opacity);
      return  Colors.white.withOpacity(opacity);
    } catch (e) {
      return  Colors.white.withOpacity(opacity);
    }
  }

  static Color backgroundColor(double opacity) {
    try {
      // return Color(int.parse(settingRepo.setting.value.mainColor.replaceAll("#", "0xFF"))).withOpacity(opacity);
      return const Color(0xFFFFFFFF);
    } catch (e) {
      return const Color(0xFFFFFFFF).withOpacity(opacity);
    }
  }

  //other colors
  static Color amber = const Color(0xFFF6B500);
  static Color grey1=const Color(0xffF6F6F6);

// LinearGradient buttonGradient =  LinearGradient(
//   begin: Alignment(0.96, 0.0),
//   end: Alignment(-0.95, 0.0),
//   colors: [Color(0xff006fc4), Color(0xff428cee)],
//   stops: [0.0, 1.0],
// );
}
