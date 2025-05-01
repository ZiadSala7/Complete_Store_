import 'package:flutter/material.dart';

import 'connectivity_controller.dart';

class CompleteStoreAppBuilder extends StatelessWidget {
  final Widget? widget;
  const CompleteStoreAppBuilder({super.key, this.widget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          ConnectivityController.instance.init();
          return widget!;
        },
      ),
    );
  }
}
