import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:virtual_mask/app_config/configs.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  const CustomCachedNetworkImage(this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      // imageUrl:"https://iso.500px.com/wp-content/uploads/2015/09/pluto_cover-1947x2000.jpg",
      imageUrl: imageUrl != "" && imageUrl != null ? "http://api.virtual_mask.com$imageUrl" : "https://www.bkgymswim.com.au/wp-content/uploads/2017/08/image_large.png",
      imageBuilder: (context, imageProvider) =>
          AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
            ),
          ),
        ),
      ),
      placeholder: (context, url) => AspectRatio(
        aspectRatio: 1,
        child: Image.asset(
          UIAssets.gifLoading,
          fit: BoxFit.cover,
        ),
      ),
      errorWidget: (context, url, error) => AspectRatio(
        aspectRatio: 1,
        child: Image.asset(
          UIAssets.gifLoading,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
