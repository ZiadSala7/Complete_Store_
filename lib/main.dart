import 'dart:io';

import 'package:flutter/services.dart';
import 'core/app/connectivity_controller.dart';
import 'core/app/env.variables.dart';
import 'firebase_options_method.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/app/app_value_listener_builder.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariables.instance.initEnv(envType: EnvTypeEnum.dev);
  ConnectivityController.instance.init();
  Platform.isAndroid
      ? await Firebase.initializeApp(options: firebaseOptionsMethod())
      : await Firebase.initializeApp();

  // to make the app in portrait mode only
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const AppValueListenerBuilder());
  });
}
