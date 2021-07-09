import 'dart:io';

import 'package:dio/dio.dart';

class ExceptionHandler {
  static String handleException(dynamic e) {
    if (e is Exception) {
      try {
        if (e is DioError) {
          return "Network Error Occurred";
        }
        else if (e is SocketException) {
          return "Socket Exception Occurred";
        } else {
          return "Unexpected Error occurred";
        }
      } on FormatException {
        // Helper.printError(e.toString());
        return "Format Exception";
      } catch (_) {
        return "Unexpected Error occurred";
      }
    }
    else if (e is SocketException){
      return "No Internet Connection";
    }
    else {
      if (e.toString().contains("is not a subtype of")) {
        return "Unable to process the data";
      } else {
        return "Unexpected Error occurred";
      }
    }
  }
}
