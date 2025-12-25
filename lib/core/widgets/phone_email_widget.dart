import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';

class PhoneEmailWidget extends StatelessWidget {
  const PhoneEmailWidget({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: AppColorsDark.grey_959595),
        SizedBox(width: AppSizes.spaceBetweenItems_10),
        Text(
          text,
          style: AppTextStyles.medium_16(
            context,
          ).copyWith(color: AppColorsDark.grey_959595),
        ),
      ],
    );
  }
}
