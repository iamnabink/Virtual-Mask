import 'package:flutter/material.dart';
import 'package:virtual_mask/app_config/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:virtual_mask/utils/size_config.dart';
import 'package:virtual_mask/views/widgets/widgets_constants.dart';

class CustomButtons {
  late SizeConfig config;
  late ThemeData themeData;

  CustomButtons(BuildContext context) {
    this.config = SizeConfig(context);
    this.themeData = Theme.of(context);
  }

  Widget primaryButton(){
    return ElevatedButton(onPressed: (){}, child: Container());
  }
}



