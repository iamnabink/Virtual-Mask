import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:virtual_mask/app_config/app_colors.dart';
import 'package:virtual_mask/app_config/ui_assets.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: AppColors.primaryColor(1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const SizedBox(
            height: 150,
            width: 150,
            child:  FlareActor(
              UIAssets.liquidLoading,
                // animation:'Alarm',
                animation:'Untitled',
            ),
          ),
        ),
      ),
    );
  }
}
void showLoadingDialogue(BuildContext context){
  showDialog(
    barrierDismissible: false,
    context: context,
    barrierColor: Colors.transparent,
    builder: (BuildContext context) => LoadingWidget(),
  );
}

void hideLoadingDialogue(BuildContext context) {
  Navigator.of(context).pop(LoadingWidget());}
