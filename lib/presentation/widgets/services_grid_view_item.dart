import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/helpers/resposive_helper.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/hover_container.dart';

class ServicesGridViewItemm extends StatefulWidget {
  const ServicesGridViewItemm({super.key});

  @override
  State<ServicesGridViewItemm> createState() => _ServicesGridViewItemmState();
}

class _ServicesGridViewItemmState extends State<ServicesGridViewItemm> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final isDesktop = context.isDeskTop;
    final isTablet = context.isTablet;
    return HoverContainer(
      width: isDesktop
          ? 399
          : isTablet
          ? 300
          : double.infinity,
      margin: EdgeInsetsGeometry.symmetric(
        horizontal: isDesktop ? AppSizes.padding_70 : AppSizes.paddingLg_24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.assetsImages2User),
          SizedBox(height: AppSizes.spaceBetweenItems_16),
          Text(
            'App Design',
            maxLines: 3,
            style: AppTextStyles.bold_24(
              context,
            ).copyWith(color: AppColorsDark.orange),
          ),
          SizedBox(
            height: isDesktop
                ? AppSizes.spaceBetweenItems_32
                : AppSizes.spaceBetweenItems_16,
          ),
          Text(
            textAlign: TextAlign.center,
            maxLines: 3,
            ' Lorem ipsum dolor sit amet . Imperdiet Lorem ipsum dolor sit amet consectetur',
            style: isDesktop
                ? AppTextStyles.medium_20(
                    context,
                  ).copyWith(color: AppColorsDark.grey_5757)
                : AppTextStyles.medium_16(
                    context,
                  ).copyWith(color: AppColorsDark.grey_5757),
          ),
        ],
      ),
    );
  }
}
