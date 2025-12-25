import 'package:flutter/material.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';

class PersonalImageWidget extends StatelessWidget {
  const PersonalImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDeskTop = context.isDeskTop;
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: isDeskTop ? 520 : 300),
      child: Image.asset(Assets.assetsImagesMe),
    );
  }
}
