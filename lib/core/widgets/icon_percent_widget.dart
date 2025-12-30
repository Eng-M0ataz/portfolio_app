import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/domain/entity/skill.dart';

class SkillItem extends StatelessWidget {
  final SkillEntity skillEntity;

  const SkillItem({super.key, required this.skillEntity});

  @override
  Widget build(BuildContext context) {
    final isDeskTop = context.isDeskTop;
    return Column(
      children: [
        CircularPercentIndicator(
          radius: isDeskTop ? 65 : 35,
          lineWidth: 6,
          percent: skillEntity.percentage,
          animation: true,
          animationDuration: 2000,
          backgroundColor: AppColorsDark.grey_252525,
          progressColor: AppColorsDark.orange,
          circularStrokeCap: CircularStrokeCap.round,
          center: CachedNetworkImage(
            imageUrl: skillEntity.icon,
            placeholder: (context, url) => CircularProgressIndicator(),
          ),
        ),
        const SizedBox(height: AppSizes.spaceBetweenItems_8),
        Text(
          '${(skillEntity.percentage * 100).toInt()}%',
          style: AppTextStyles.bold_24(
            context,
          ).copyWith(color: AppColorsDark.orange),
        ),
        const SizedBox(height: AppSizes.spaceBetweenItems_4),
        SizedBox(
          width: isDeskTop ? 132 : 92,
          child: Text(
            skillEntity.title,
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
