import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';

class PersonalImagWidget extends StatelessWidget {
  const PersonalImagWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(Assets.assetsImagesMe);
  }
}
