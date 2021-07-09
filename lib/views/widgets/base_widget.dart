import 'package:flutter/material.dart';
import 'package:virtual_mask/utils/size_config.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


// This widget is for screen component (item/widget) build
class BaseWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizeConfig config, ThemeData themeData) builder;

  const BaseWidget({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SizeConfig config = SizeConfig(context);
    final ThemeData themeData = Theme.of(context);
    return builder(context, config, themeData);
  }
}
/// base hook widget class for hook based widgets,
///
/// provides same information as BaseWidget provides like (theme, sizeConfig
class HookBaseWidget extends HookWidget {
  final Widget Function(
      BuildContext context, SizeConfig config, ThemeData themeData) builder;

  const HookBaseWidget({Key? key,required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SizeConfig config = SizeConfig(context);
    final ThemeData themeData = Theme.of(context);
    return builder(context, config, themeData);
  }
}


