import 'dart:io';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:virtual_mask/views/widgets/inapp_update_alertdialog.dart';

class InAppUpdateService{

  static Future<bool> isNewBuildAvailable() async {
    final RemoteConfig remoteConfig = await RemoteConfig.instance;
    final packageInfo = await PackageInfo.fromPlatform();
    await remoteConfig.fetch();
    await remoteConfig.fetchAndActivate();
    final latestVersionNumber = remoteConfig.getInt(Platform.isAndroid
        ? 'latestBuildNumberAndroid'
        : 'latestBuildNumberIOS');

    final currentBuildNumber = int.parse(packageInfo.buildNumber);
    if(currentBuildNumber < latestVersionNumber){
      return true;
    }
    else{
      return false;
    }
  }
  static void showAlertDialog(BuildContext context){
    showDialog(context: context, builder: (context){
      return const InAppUpdateAlertDialog(forceUpdate: true,
        closeButtonLabel: "Close",
        ignoreButtonLabel: "Later",
        updateButtonLabel: "Update",
        appName: 'virtual_mask',
        playStoreUrl: 'https://play.google.com/store/apps/details?id=com.provider.quicksewa_provider',
        titlePrefix: "Update",
        description: "Quicksewa recommends that you update to the latest version, so that you can enjoy latest features of the app",
      );
    },);
  }
}