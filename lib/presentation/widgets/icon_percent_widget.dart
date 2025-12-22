import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/helpers/resposive_helper.dart';

import '../../core/utils/Constants/sizes.dart';

class IconPercentWidget extends StatelessWidget {
  final IconData icon;
  final double percent;
  final String label;

  const IconPercentWidget({
    super.key,
    required this.icon,
    required this.percent,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final isDeskTop = context.isDeskTop;
    return Column(
      children: [
        CircularPercentIndicator(
          radius: isDeskTop ? 65 : 35,
          lineWidth: 6,
          percent: percent,
          animation: true,
          animationDuration: 2000,
          backgroundColor: AppColorsDark.grey_252525,
          progressColor: AppColorsDark.orange,
          circularStrokeCap: CircularStrokeCap.round,
          center: FaIcon(
            icon,
            size: isDeskTop ? 60 : 30,
            color: AppColorsDark.grey_959595,
          ),
        ),
        const SizedBox(height: AppSizes.spaceBetweenItems_8),
        Text(
          '${(percent * 100).toInt()}%',
          style: AppTextStyles.bold_24(
            context,
          ).copyWith(color: AppColorsDark.orange),
        ),
        const SizedBox(height: AppSizes.spaceBetweenItems_4),
        SizedBox(
          width: isDeskTop ? 132 : 92,
          child: Text(
            label,
            maxLines: 3,
            textAlign: TextAlign.center,
            style: AppTextStyles.bold_16(
              context,
            ).copyWith(color: AppColorsDark.grey_959),
          ),
        ),
      ],
    );
  }
}
