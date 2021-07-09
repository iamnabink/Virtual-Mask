import 'dart:async';
import 'package:virtual_mask/app_config/app_colors.dart';
import 'package:virtual_mask/app_config/ui_assets.dart';
import 'package:virtual_mask/services/service_locator.dart';
import 'package:virtual_mask/viewmodel/viewmodel.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller; //to control our animation
  // Animation animation; //animation to show

  late Animation<double> fadeInFadeOut; //we will use fadeInFadeOut Animation

  @override
  void initState() {
    //initializing controller
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    fadeInFadeOut = Tween(begin: 0.0, end: 1.0)
        .animate(controller); //initializing animation

    //timer to show for desired duration of time
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    controller.forward();
    Timer(const Duration(seconds: 4), () async {
      locator<AppSettingViewModel>().navigateToScreenSplash(context);
      // locator.get<AppSettingViewModel>().navigateToScreenSplash(context);
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.colorWhite(1),
        body: Center(
          child: FadeTransition(
            opacity: fadeInFadeOut,
            child: Image.asset(UIAssets.appLogo,width: 200,),
          ),
        ));

  }
}
