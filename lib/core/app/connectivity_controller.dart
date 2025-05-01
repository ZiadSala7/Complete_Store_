// ignore_for_file: unrelated_type_equality_checks

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';

class ConnectivityController {
  // singleton for the class
  ConnectivityController._();
  static final ConnectivityController instance = ConnectivityController._();

  // to listen for the connection
  ValueNotifier<bool> isConnected = ValueNotifier(true);

  // to listen for the connection and update my app
  Future<void> init() async {
    final result = await Connectivity().checkConnectivity();
    internetFoundOrNot(result);
    Connectivity().onConnectivityChanged.listen(internetFoundOrNot);
  }

  // to check the connection is found or not found
  bool internetFoundOrNot(List<ConnectivityResult> result) {
    isConnected =
        result == ConnectivityResult.none
            ? ValueNotifier(false)
            : ValueNotifier(true);
    return (result == ConnectivityResult.none ? false : true);
  }
}
