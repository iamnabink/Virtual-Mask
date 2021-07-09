import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:global_configuration/global_configuration.dart';
import 'package:hive/hive.dart';
import 'package:virtual_mask/app_config/app_theme.dart';
import 'package:virtual_mask/routes/route_generator.dart';
import 'package:virtual_mask/routes/route_name.dart';
import 'package:path_provider/path_provider.dart';
import 'package:virtual_mask/services/service_locator.dart';

Future<void> mainCommon() async {
  WidgetsFlutterBinding.ensureInitialized();

  // changing system ui overflow color to transparent so that we can use our own custom color
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    // transparent status bar
  ));

  //disable Landscape mode
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  //load global configuration file before app load
  // await GlobalConfiguration().loadFromAsset("configurations");
  //initializing hive
  await _initializeHive();
  setupLocator();


}

Future _initializeHive() async {
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  //opening small boxes to synchronously fetch some important values
  // await Hive.openBox(DbConstants.userProfileBox); // opening user information

}


final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: RouteName.splashRoute,
      //using splash route as initial route
      navigatorKey: navigatorKey,
      //using custom navigator key as global key
      debugShowCheckedModeBanner: false,
      //remove debug banner
      theme: AppTheme.appTheme(), //our custom app theme
    );
  }
}
