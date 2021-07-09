import 'package:flutter/material.dart';
import 'package:virtual_mask/main_common.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  mainCommon();
  await SentryFlutter.init((options)
  {options.dsn = 'https://82fd353788344389be9460b414a1c00d@o553426.ingest.sentry.io/5733072';},
  appRunner: () => runApp(MyApp()));
  // runApp(MyApp());
}
