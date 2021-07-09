
# *** Readme is under construction ***
# Virtual Mask app

A Virtual Mask app created in flutter using Provider. clone the appropriate branches mentioned below:

* Mobile: https://github.com/iamnabink/Virtual-Mask (stable channel)

## Getting Started

The Virtual Mask contains the minimal implementation required to create a new library or app. The repository code is preloaded with some basic components like basic app architecture, app theme, constants and required dependencies to create a new app. By using boiler plate code as standard initializer, we can have same patterns in all the apps that will inherit it. This will also help in reducing setup & development time by allowing you to use same code pattern and avoid re-writing from scratch.

## How to Use 

**Step 1:**

Download or clone this repo by using the link below:

```
https://gitlab.com/nabraj-sit/ktmkart.git
```

**Step 2:**

Go to app root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

**Step 3:**

This app uses `freezed` library that works with code generation, execute the following command to generate files only if you get some error related to freezed otherwise you are good to go:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

or watch command in order to keep the source code synced automatically:

```
flutter packages pub run build_runner watch
```

## Hide Generated Files (*Optional)

In-order to hide generated files, navigate to `Android Studio` -> `Preferences` -> `Editor` -> `File Types` and paste the below lines under `ignore files and folders` section:

```
*.network_exceptions.freezed.dart;*.g.dart;
```

In Visual Studio Code, navigate to `Preferences` -> `Settings` and search for `Files:Exclude`. Add the following patterns:
```
**/*.network_exceptions.freezed.dart
**/*.g.dart (if serializable package is used)
```

## Virtual Mask Features:

* Splash
* Login
* Home
* Routing
* Theme
* Dio (with auth interceptor)
* Database (sqflite)
* Provider (State Management)
* Validation
* Code Generation (Freezed)
* Flutter hooks
* User Notifications (FCM)
* Logging
* Dependency Injection

### Up-Coming Features:

* Connectivity Check Support

### Libraries & Tools Used

* [Dio](https://github.com/flutterchina/dio)
* [Database](https://pub.dev/packages/sqflite)
* [Provider](https://github.com/rrousselGit/provider) (State Management)
* [Encryption](https://github.com/xxtea/xxtea-dart)
* [Validation](https://github.com/dart-league/validators)
* [Logging](https://github.com/zubairehman/Flogs)
* [Notifications](https://github.com/AndreHaueisen/flushbar)
* [More to add](pubspec.yaml)
for more see pubspec.yml file

### Folder Structure
Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- assets
|- integration_test
|- ios
|- lib
|- test
|- test_driver
```

Here is the folder structure we have been using in this app

```
lib/
|- app_config/
|- local_storage/
|- models/
|- routes/
|- services/
|- utils/
|- viewmodel/
|- views/
|- main.dart
|- main.dev.dart
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- app_config - All the application level constants are defined in this directory with-in their respective files. This directory contains the constants for `theme`, `dimentions`, `api endpoints`, `preferences` and `strings`.
2- local_storage - Contains the data layer of our app, includes directories for local, network and shared pref/cache.
3- viewmodel - Contains store(s) for state-management of our application, to connect the reactive data of our application with the UI. 
4- views — Contains all the ui of our app, contains sub directory for each screen.
5- utils — Contains the utilities/common functions of our application.
6- widgets — Contains the common widgets for our applications. For example, Button, TextField etc.
7- routes — Contains all the routes for our application.
8- main.dart - This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.
```

### app_config

This directory contains all the application level constants. A separate file is created for each type as shown in example below:

```
app_config/
|- app_theme.dart
|- app_colors.dart
|- string_constants.dart
|- ui_assets.dart
```

### local_storage

All the business logic related to local repository of our application will go into this directory, it represents the data layer for local storage in our application. Since each layer exists independently, that makes it easier to unit test. The communication between UI and data layer is handled by using central repository.

```
local_storage/
|- db_client.dart
|- db_helper.dart
|- db_schema.dart
|- shared_pref.dart

```

### Stores

The store is where all our application state lives in flutter. The Store is basically a widget that stands at the top of the widget tree and passes it's data down using special methods. In-case of multiple stores, a separate folder for each store is created as shown in the example below:

```
stores/
|- login/
    |- login_store.dart
    |- form_validator.dart
```

### UI

This directory contains all the ui of our application. Each screen is located in a separate folder making it easy to combine group of files related to that particular screen. All the screen specific widgets will be placed in `widgets` directory as shown in the example below:

```
ui/
|- Home
   |- home.dart
   |- widgets
      |- shimmer_loading.dart
```

### Utils

Contains the common file(s) and utilities used in a app. The folder structure is as follows: 

```
utils/
|- date
  |- date_time.dart
```

### Widgets

Contains the common widgets that are shared across multiple screens. For example, Button, TextField etc.

```
widgets/
|- app_icon_widget.dart
|- empty_app_bar.dart
|- progress_indicator.dart
```

### Routes

This file contains all the routes for our application.

### Main

This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.

```dart
import 'package:device_preview/device_preview.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:ktmkart/routes/route_generator.dart';
import 'package:ktmkart/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'app_config/app_theme.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  // changing system ui overflow color to transparent so that we can use our own custom color
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    // transparent status bar
  ));

  //disable Landscape mode
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  //load global configuration file before app load
  await GlobalConfiguration().loadFromAsset("configurations");

  await SentryFlutter.init((options) {

    options.dsn = 'https://d559523431b84a1cb7f630f9e92a3d5b@o553426.ingest.sentry.io/5680660';},
    appRunner: () => runApp(
        DevicePreview(
          enabled: false,
          builder: (context) => MyApp(),
  ))
  );

  // runApp(MyApp());
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
```

## Conclusion

I will be happy to answer any questions that you may have on this approach, and if you want to lend a hand with the Virtual Mask then please feel free to submit an issue and/or pull request 🙂

Again to note, this is not a best and final version, you are always invited to edit and suggest changes, please make pull request to make changes this readme.

Author:
    Nabraj Khadka - Github [https://github.com/iamnabink]

