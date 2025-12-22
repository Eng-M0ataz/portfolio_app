import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({super.key, required this.number, required this.text});
  final String text;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TweenAnimationBuilder(
          tween: IntTween(begin: 0, end: number),
          duration: Duration(seconds: 1),
          builder: (context, value, child) => Text(
            value.toString(),
            style: AppTextStyles.bold_20(
              context,
            ).copyWith(color: AppColorsDark.orange),
          ),
        ),
        SizedBox(height: AppSizes.spaceBetweenItems_12),
        Text(
          text,
          style: AppTextStyles.bold_16(
            context,
          ).copyWith(color: AppColorsDark.greyDFDF),
        ),
      ],
    );
  }
}
