import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: VerticalDivider(
        color: AppColorsDark.grey_959595,
        thickness: 1,
        width: 30,
      ),
    );
  }
}
