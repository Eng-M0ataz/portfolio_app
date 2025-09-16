import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({super.key, required this.number, required this.text});
  final String number, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          number,
          style: Theme.of(
            context,
          ).textTheme.displaySmall!.copyWith(color: AppColorsDark.orange),
        ),
        SizedBox(height: AppSizes.spaceBetweenItems_12),
        Text(
          text,
          style: Theme.of(
            context,
          ).textTheme.displayLarge!.copyWith(color: AppColorsDark.greyDFDF),
        ),
      ],
    );
  }
}
