import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../core/config/theme/app_colors.dart';
import '../../core/utils/Constants/sizes.dart';

class ConnectionWidget extends StatelessWidget {
  const ConnectionWidget({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusFull),
          border: Border.all(color: AppColorsDark.grey_959),
        ),
        child: Center(
          child: FaIcon(
            icon,
            size: AppSizes.icon_40,
            color: AppColorsDark.greyDFDF,
          ),
        ),
      ),
    );
  }
}
