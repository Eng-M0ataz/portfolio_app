import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';

class MobileAppBarLayout extends StatelessWidget {
  const MobileAppBarLayout({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(Icons.menu),
        ),
        Spacer(),
        Image.asset(
          Assets.assetsImagesLogoDesign,
          cacheWidth: 80,
          cacheHeight: 80,
          fit: BoxFit.cover,
        ),
        Spacer(),
        SizedBox(width: AppSizes.spaceBetweenItems_24),
      ],
    );
  }
}
