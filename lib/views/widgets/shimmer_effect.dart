import 'package:flutter/material.dart';
import 'package:virtual_mask/app_config/configs.dart';

Widget circularShimmerView({required double radius}) {
  return CircleAvatar(
    radius: radius,
    backgroundImage: const ExactAssetImage(UIAssets.gifLoading),
  );
}

Widget rectangularShimmerView(
    {required double width, required double height, required double radius}) {
  return SizedBox(
    width: width,
    height: height,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.asset(
        UIAssets.gifLoading,
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget shimmerView(
    {double? radius}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(radius ?? 10),
    child: Image.asset(
      UIAssets.gifLoading,
      fit: BoxFit.cover,
    ),
  );
}
