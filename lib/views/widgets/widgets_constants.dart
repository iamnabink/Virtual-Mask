import 'package:flutter/material.dart';
import 'package:virtual_mask/app_config/app_colors.dart';

class WidgetConstants {
  //this is box shadow constants for cards

  final kBoxShadowConstants = BoxShadow(
      color: AppColors.colorBlack(0.1),
      blurRadius: 7.0,
      offset: const Offset(0.0, 1));

  BoxDecoration kCircularBoxDecoration(double radius,
      {List<BoxShadow>? shadow, Color? color, Border? border}) {
    return BoxDecoration(
      color: color ?? AppColors.colorWhite(1),
      boxShadow: shadow,
      border: border,
      borderRadius: BorderRadius.circular(radius),
    );
  }

  LinearGradient kLinearGradient() {
    return const LinearGradient(
      begin: Alignment(-0.98, 0.0),
      end: Alignment(-0.97, 1.94),
      colors: [Color(0xffff6f41), Color(0xfffa3547)],
      stops: [0.0, 1.0],
    );
  }
  Widget horizontalLine(double width) {
    return Container(
      width: width,
      height: 0.3,
      color: AppColors.colorBlack(0.5),
    );
  }

  Widget verticalLine(double height) {
    return Container(
      width: 0.3,
      height: height,
      color: AppColors.secondaryColor(1),
    );
  }


  static LinearGradient profileBackgroundGradient(){
    return const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xffFF744A),
        Color(0xffFE6759),
        Color(0xffFD4857),
      ],
    );
  }



  static BoxDecoration kCircularBoxDecoration1(double radius,
      {List<BoxShadow>? shadow, Color? color, Border? border}) {
    return BoxDecoration(
      color: color ?? AppColors.colorWhite(1),
      boxShadow: shadow,
      border: border,
      borderRadius: BorderRadius.circular(radius),
    );
  }
}
