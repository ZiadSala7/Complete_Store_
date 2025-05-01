import 'package:flutter/material.dart';

import '../../complete_store_app.dart';
import 'connectivity_controller.dart';
import '../common/screens/no_network_view.dart';

class AppValueListenerBuilder extends StatelessWidget {
  const AppValueListenerBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return CompleteStoreApp();
        } else {
          return NoNetworkView();
        }
      },
    );
  }
}
