import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: AppSizes.spaceBetweenItems_16,
      children: [
        const Divider(
          color: AppColorsDark.grey_5757,
          indent: 400,
          endIndent: 400,
        ),
        Text(
          "Developed by Eng-Moataz Ebrahim",
          textAlign: TextAlign.center,
          style: AppTextStyles.bold_20(
            context,
          ).copyWith(color: AppColorsDark.grey_959),
        ),
        Text(
          "© ${DateTime.now().year} Eng-Moataz Ebrahim. All rights reserved.",
          textAlign: TextAlign.center,
          style: AppTextStyles.medium_16(
            context,
          ).copyWith(color: AppColorsDark.grey_7070),
        ),
      ],
    );
  }
}
