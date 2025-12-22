import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';

class AppBarTextWidget extends StatelessWidget {
  const AppBarTextWidget({
    super.key,
    required this.text,
    this.onTap,
    this.isHome = false,
  });
  final String text;
  final void Function()? onTap;
  final bool? isHome;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: isHome!
            ? AppTextStyles.medium_20(
                context,
              ).copyWith(color: AppColorsDark.orange)
            : AppTextStyles.medium_20(
                context,
              ).copyWith(color: AppColorsDark.grey_959),
      ),
    );
  }
}
