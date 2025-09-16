import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/config/theme/app_colors.dart';
import '../../core/utils/constants/sizes.dart';

class PortfolioCard extends StatelessWidget {
  final String imagePath;
  final String projectName;
  final String category;

  const PortfolioCard({
    super.key,
    required this.imagePath,
    required this.projectName,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 415,
      height: 473,
      decoration: BoxDecoration(
        color: AppColorsDark.white,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusXxl_24),
      ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppSizes.borderRadiusXxl_24),
                topRight: Radius.circular(AppSizes.borderRadiusXxl_24),
              ),
              child: SvgPicture.asset(imagePath, fit: BoxFit.cover),
            ),
          ),
          Container(
            height: 58,
            decoration: BoxDecoration(
              color: AppColorsDark.grey_252525,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(AppSizes.borderRadiusXxl_24),
                bottomRight: Radius.circular(AppSizes.borderRadiusXxl_24),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: AppSizes.paddingMd_16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  projectName,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: AppColorsDark.greyc6C6,
                  ),
                ),
                Text(
                  category,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: AppColorsDark.greyc6C6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
