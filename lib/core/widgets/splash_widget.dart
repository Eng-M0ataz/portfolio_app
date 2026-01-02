import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SpinKitDualRing(color: Colors.orange, size: 300, lineWidth: 5),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Image.asset(Assets.assetsImagesLogoDesign),
        ),
      ],
    );
  }
}
