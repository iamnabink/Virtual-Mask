import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

class BannerSlider extends StatelessWidget {

  final List<String> imageUrl;
 const BannerSlider(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Carousel(
        images: List<Widget>.generate(imageUrl.length, (int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(imageUrl[index],fit: BoxFit.cover,),
            ),
          );
        }),
        dotSize: 6.0,
        dotSpacing: 14.0,
        showIndicator: false,

        // indicatorBgPadding: 1.0,
        dotBgColor: Colors.transparent,
        // dotBgColor: AppColors.black.withOpacity(0.4),
      ),
    );
  }
}


