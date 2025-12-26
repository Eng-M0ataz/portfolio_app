import 'package:portfolio_website/data/model/skill_dto.dart';
import 'package:portfolio_website/domain/entity/skill.dart';

extension SkillDtoMapper on SkillDto {
  Skill toEntity() {
    return Skill(
      icon: icon ?? '',
      title: title ?? '',
      percentage: percentage ?? 0,
    );
  }
}
