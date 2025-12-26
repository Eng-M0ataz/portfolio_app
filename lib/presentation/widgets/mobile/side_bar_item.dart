import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/app_bar_text_widget.dart';

class SidebarItem extends StatelessWidget {
  const SidebarItem({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  final String text;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSizes.paddingXl_32),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: AppColorsDark.orange, size: AppSizes.icon_20),
            const SizedBox(width: AppSizes.paddingMd_16),
            AppBarTextWidget(text: text, onTap: onTap),
          ],
        ),
      ),
    );
  }
}
