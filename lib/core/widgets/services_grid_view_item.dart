import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/hover_container.dart';

class ServicesGridViewItem extends StatelessWidget {
  const ServicesGridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return HoverContainer(
      padding: const EdgeInsets.all(AppSizes.paddingLg_24),
      child: Column(
        mainAxisSize: MainAxisSize.min, // 👈 صح هنا
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.assetsImages2User),
          const SizedBox(height: AppSizes.spaceBetweenItems_16),
          Text(
            'App Design',
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.bold_24(
              context,
            ).copyWith(color: AppColorsDark.orange),
          ),
          const SizedBox(height: AppSizes.spaceBetweenItems_8),
          Text(
            'Lorem ipsum dolor sit amet consectetur',
            textAlign: TextAlign.center,
            maxLines: 10,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.medium_20(
              context,
            ).copyWith(color: AppColorsDark.grey_5757),
          ),
        ],
      ),
    );
  }
}
