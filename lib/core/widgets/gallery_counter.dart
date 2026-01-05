import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';

class GalleryCounter extends StatelessWidget {
  final int currentIndex;
  final int totalCount;

  const GalleryCounter({
    super.key,
    required this.currentIndex,
    required this.totalCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.paddingMd_16,
        vertical: AppSizes.paddingSm_8,
      ),
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusXxl_24),
      ),
      child: Text(
        "${currentIndex + 1} / $totalCount",
        style: AppTextStyles.medium_16(
          context,
        ).copyWith(color: AppColorsDark.orange,fontSize: 12),
      ),
    );
  }
}
