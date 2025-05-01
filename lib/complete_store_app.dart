import 'core/styles/images/app_images.dart';

import 'core/app/complete_store_app_builder.dart';
import 'package:flutter/material.dart';

class CompleteStoreApp extends StatelessWidget {
  const CompleteStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Store App',
      home: Scaffold(body: Image.asset(AppImages.imagesCoreSplash)),
      debugShowCheckedModeBanner: false,
      builder: (context, widget) => CompleteStoreAppBuilder(widget: widget),
    );
  }
}
