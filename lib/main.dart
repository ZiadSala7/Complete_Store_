import 'dart:io';

import 'package:flutter/services.dart';
import 'complete_store_app.dart';
import 'core/app/env.variables.dart';
import 'firebase_options_method.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariables.instance.initEnv(envType: EnvTypeEnum.dev);
  Platform.isAndroid
      ? await Firebase.initializeApp(options: firebaseOptionsMethod())
      : await Firebase.initializeApp();

  // to make the app in portrait mode only
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const CompleteStoreApp());
  });
}
