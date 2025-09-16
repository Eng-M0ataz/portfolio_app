import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';

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
            ? Theme.of(
                context,
              ).textTheme.displayLarge!.copyWith(color: AppColorsDark.orange)
            : Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(color: AppColorsDark.grey_959),
      ),
    );
  }
}
