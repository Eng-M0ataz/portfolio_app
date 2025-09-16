import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';

class PersonalImagWidget extends StatelessWidget {
  const PersonalImagWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 245,
      backgroundColor: AppColorsDark.grey_1b,
      child: Align(
        alignment: Alignment.topCenter,
        child: Image.asset(Assets.assetsImagesMe, height: 450, width: 450),
      ),
    );
  }
}
