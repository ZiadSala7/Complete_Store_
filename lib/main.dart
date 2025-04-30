import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'complete_store_app.dart';
import 'firebase_options_method.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(options: firebaseOptionsMethod())
      : await Firebase.initializeApp();
  runApp(const CompleteStoreApp());
}
