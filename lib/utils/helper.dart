import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:sentry/sentry.dart';

class Helper {
  //this class will hold all the helper methods that will be used through out the app

  late BuildContext context;
  late DateTime currentBackPressTime;

  Helper(); //creating default constructor

  Helper.of(this.context); //creating named constructor

  Future<void> sentryCaptureException(dynamic e, {dynamic stackTrace}) async {
    //register unexpected exception in sentry console
    await Sentry.captureException(e, stackTrace: stackTrace);
  }

  //toDate : Provided End date from where we need to get duration (end time duration)
  Duration getDateDifference(String toDate, {DateTime? fromDate}) {
    final DateTime date =
    DateTime.parse(toDate); //parse passed string to datetime
    final DateTime fromDet = fromDate ??
        DateTime
            .now(); //if from date passed null duration will be calculated from current time
    return date.difference(fromDet); //return difference
  }
  //checks internet connection and returns true if has connection
  Future<bool> hasConnection() async {
    final bool result = await InternetConnectionChecker().hasConnection;
    if (result == true) {
      return true;
    } else {
      // print(DataConnectionChecker().lastTryResults);
      return false;
    }
  }
}

/// convert a Map into a URL encoded string
String encodeMap(Map data) {
  return data.keys.map((key) => "${Uri.encodeComponent(key)}=${Uri.encodeComponent(data[key])}").join("&");
}

// Get first few words of a String
String getFirstWords(String sentence, int wordCounts) {
  return sentence.split(" ").sublist(0, wordCounts).join(" ");
}

// capitalize the first letter
String capitalizeFirstWord(String text) {
  return (text.toLowerCase()).capitalizeFirstofEach;
}

// extension StringExtension on String {
//   String capitalize() {
//     return "${this[0].toUpperCase()}${this.substring(1)}";
//   }
// }

extension CapExtension on String {
  String get inCaps =>
      this.isNotEmpty ? '${this[0].toUpperCase()}${this.substring(1)}' : '';

  String get allInCaps => this.toUpperCase();

  String get capitalizeFirstofEach => this
      .replaceAll(RegExp(' +'), ' ')
      .split(" ")
      .map((str) => str.inCaps)
      .join(" ");
}
