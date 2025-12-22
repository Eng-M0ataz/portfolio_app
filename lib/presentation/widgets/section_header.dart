import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/helpers/resposive_helper.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.sectionName,
    required this.description,
  });
  final String sectionName, description;

  @override
  Widget build(BuildContext context) {
    final isDesktop = context.isDeskTop;
    return Column(
      children: [
        Text(
          sectionName,
          textAlign: TextAlign.center,
          style: isDesktop
              ? AppTextStyles.bold_40(context)
              : AppTextStyles.bold_24(context),
        ),
        SizedBox(height: AppSizes.spaceBetweenItems_16),
        Text(
          description,
          textAlign: TextAlign.center,
          style: isDesktop
              ? AppTextStyles.medium_20(
                  context,
                ).copyWith(color: AppColorsDark.grey_7070)
              : AppTextStyles.medium_16(
                  context,
                ).copyWith(color: AppColorsDark.grey_7070),
        ),
      ],
    );
  }
}
