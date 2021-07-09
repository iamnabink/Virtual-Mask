import 'package:flutter/material.dart';
import 'package:virtual_mask/views/widgets/widget_helper.dart';
import 'package:virtual_mask/app_config/configs.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class LoadingShimmerEffect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, config, themeData) {
        return ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          physics: const BouncingScrollPhysics(),
          children: [
            config.verticalSpaceSmall(),
          ],
        );
      },
    );
  }
}

class GridViewProductsShimmerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
        builder: (context, config, themeData){
          return StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount: 6,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) => Container(
              margin: EdgeInsets.all(config.appHorizontalPadding(1)),
              decoration: BoxDecoration(
                color: AppColors.colorWhite(1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset(
                        UIAssets.gifLoading,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            staggeredTileBuilder: (int index) => const StaggeredTile.fit(2),
            mainAxisSpacing: 1.0,
            crossAxisSpacing: 1.0,
          );
        }
    );
  }
}

