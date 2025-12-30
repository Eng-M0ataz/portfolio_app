import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/icon_percent_widget.dart';
import 'package:portfolio_website/domain/entity/skill.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key, required this.skills});
  final List<SkillEntity> skills;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppSizes.borderRadiusXxl_24,
      runSpacing: AppSizes.borderRadiusXxl_24,
      runAlignment: WrapAlignment.start,
      alignment: WrapAlignment.start,
      children: skills.map((e) => SkillItem(skillEntity: e)).toList(),
    );
  }
}
