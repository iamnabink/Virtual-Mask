import 'package:virtual_mask/routes/route_name.dart';
import 'package:virtual_mask/views/screens/splash.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  // Getting arguments passed in while calling Navigator.pushNamed
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // var args = settings.arguments; //this will holds our constructor parameter to be sent on another page/screen
    switch (settings.name) {
      case RouteName.splashRoute:
        return MaterialPageRoute(
            settings: settings, builder: (_) => SplashScreen());
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                body: SafeArea(child: Center(child: Text('No routes found')))));
    }
  }
}
