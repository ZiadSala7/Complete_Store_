import '../../styles/images/app_images.dart';
import 'package:flutter/material.dart';

class NoNetworkView extends StatelessWidget {
  const NoNetworkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppImages.imagesCoreNoNetwork),
          ),
        ),
      ),
    );
  }
}
