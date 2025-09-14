import 'package:flutter/material.dart';
import 'package:portfolio_website/core/helpers/routing_extensions.dart';

import '../utils/Constants/sizes.dart';

class CustomBackButton extends StatelessWidget implements PreferredSizeWidget {
  const CustomBackButton({super.key, this.onTap, required this.title});
  final VoidCallback? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: onTap ?? context.pop,
          child: Icon(Icons.arrow_back_ios, size: 20),
        ),
        Text(title, style: theme.textTheme.bodySmall),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(AppSizes.appBarHigh);
}
