import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import '../../core/utils/Constants/sizes.dart';

class IconPercentBadge extends StatelessWidget {
  final IconData icon;
  final double percent;
  final String label;
  final double size;
  final double lineWidth;

  const IconPercentBadge({
    super.key,
    required this.icon,
    required this.percent,
    required this.label,
    this.size = AppSizes.icon_80,
    this.lineWidth = 6,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularPercentIndicator(
          radius: size / 2,
          lineWidth: lineWidth,
          percent: percent,
          animation: true,
          animationDuration: 1000,
          backgroundColor: AppColorsDark.grey_252525,
          progressColor: AppColorsDark.orange,
          circularStrokeCap: CircularStrokeCap.round,
          center: FaIcon(icon, size: size * 0.4, color: AppColorsDark.orange),
        ),
        const SizedBox(height: AppSizes.spaceBetweenItems_8),
        Text(
          '${(percent * 100).toInt()}%',
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: AppColorsDark.orange),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: AppColorsDark.grey_959),
        ),
      ],
    );
  }
}
