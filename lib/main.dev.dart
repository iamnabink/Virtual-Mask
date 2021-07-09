import 'package:device_preview/device_preview.dart';
import 'package:virtual_mask/main_common.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  mainCommon();
  runApp(DevicePreview(builder: (context) => MyApp()));
}
