import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.sectionName,
    required this.description,
  });
  final String sectionName, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          sectionName,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SizedBox(height: AppSizes.spaceBetweenItems_16),
        Text(
          description,
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.labelSmall!.copyWith(color: AppColorsDark.grey_7070),
        ),
      ],
    );
  }
}
