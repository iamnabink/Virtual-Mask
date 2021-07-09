import 'package:flutter/cupertino.dart';
import 'package:virtual_mask/routes/route_name.dart';
import 'package:virtual_mask/viewmodel/viewmodel.dart';
import 'package:virtual_mask/local_storage/local_storage.dart';

/// this view model contains all the logic for intro, splash and app setting screen
class AppSettingViewModel extends AuthViewModel {
  AppSettingViewModel() {
    /// everything that needed to be started on screen start
    openCacheBoxOnStartup();
  }

  /// already opening some box on statrtup to fetch value without using async functions
  void openCacheBoxOnStartup() {
    dbRepository
        .openBox(DbConstants.appSettingBox); //opening setting box on start-tup
    // dbRepository.openBox(DbConstants.homeDataBox); //opening setting box on start-tup
    // dbRepository.openBox(DbConstants.userProfileBox); //opening userprofile box on start-tup
  }

  //set first time opened
  void setUserFirstTimeFalse(BuildContext context) {
    dbRepository.setIntroSettingPref(DbConstants.isFirstTime, false);
    Navigator.pushNamedAndRemoveUntil(
        context, RouteName.homePageRoute, (route) => false);
  }

  //check if user has opened app for the 1st time
  bool isFirstTime() {
    try {
      if (dbRepository.getIntroSettingPref(DbConstants.isFirstTime) == null) {
        return true;
      } else if (dbRepository.getIntroSettingPref(DbConstants.isFirstTime) ==
          false) {
        return false; //first time is set to true
      } else {
        return false; //first time is false
      }
    } catch (e) {
      return true; //
    }
  }

  //method for splash screen to navigate specific screen
  Future<void> navigateToScreenSplash(BuildContext context) async {
    // if (await InAppUpdateService.isNewBuildAvailable()) {
    //   InAppUpdateService.showAlertDialog(context);
    // } else {
      //using pushNamedAndRemovedUntil to prevent return back
      if (isFirstTime() == true) {
        Navigator.pushNamedAndRemoveUntil(
            context, RouteName.homePageRoute, (Route<dynamic> route) => false);
      } else {
        // this is the working one and need to change afterward.
        Navigator.pushNamedAndRemoveUntil(context, RouteName.homePageRoute,
            (Route<dynamic> route) => false);
      }
    // }
  }
}
