import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';

class ServicesGridViewItemm extends StatelessWidget {
  const ServicesGridViewItemm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.paddingLg_24,
        vertical: AppSizes.paddingLg_24,
      ),
      decoration: BoxDecoration(
        color: AppColorsDark.grey_1b,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusXl_16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.assetsImages2User),
          SizedBox(height: AppSizes.spaceBetweenItems_16),
          Text('App Design'),
          SizedBox(height: AppSizes.spaceBetweenItems_32),
          Text(
            textAlign: TextAlign.center,
            ' Lorem ipsum dolor sit amet . Imperdiet Lorem ipsum dolor sit amet consectetur',
          ),
        ],
      ),
    );
  }
}
