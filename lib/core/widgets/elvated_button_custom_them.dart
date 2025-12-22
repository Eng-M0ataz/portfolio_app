import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart'
    show AppColorsDark;
import 'package:portfolio_website/core/utils/constants/sizes.dart';

class CustomElvatedButtonThem extends StatelessWidget {
  const CustomElvatedButtonThem({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.paddingMd_20,
              vertical: AppSizes.paddingSm_8,
            ),
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: AppColorsDark.grey_959, width: 2),
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd_8),
            ),
          ),
        ),
      ),
      child: child,
    );
  }
}
