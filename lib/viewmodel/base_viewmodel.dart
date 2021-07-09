import 'package:flutter/material.dart';
import 'package:virtual_mask/local_storage/cache_repository.dart';
import 'package:virtual_mask/utils/helper.dart';
import 'package:sentry/sentry.dart';


/// This class will hold all the common attributes for our all used view models

class BaseViewModel extends ChangeNotifier {

  late CacheRepository dbRepository; //for requesting requesting local stored data in the absence of internet connection

  late Helper helper; // helper function class


  BaseViewModel() {
    //initializing classes in it's constructor to avoid any null pointer exception
    dbRepository = CacheRepository(); //contains local hive function related
    helper = Helper(); //contains local hive function related
  }

  Future<void> sentryCaptureException(dynamic e, {dynamic stackTrace}) async {
    //register unexpected exception in sentry console
    await Sentry.captureException(e, stackTrace: stackTrace);
  }

  Future<bool> hasInternetConnection() async {
    //to check valid internet connection
    return Helper().hasConnection();
  }

}
