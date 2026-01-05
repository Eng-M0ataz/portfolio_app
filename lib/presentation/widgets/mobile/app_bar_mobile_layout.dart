import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';

class MobileAppBarLayout extends StatelessWidget {
  const MobileAppBarLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.assetsImagesLogoDesign,
      cacheWidth: 80,
      cacheHeight: 80,
      fit: BoxFit.cover,
    );
  }
}
