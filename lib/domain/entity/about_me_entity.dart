import 'package:portfolio_website/domain/entity/skill.dart';

class AboutMeEntity {
  final String title;
  final String description;
  final String aboutMe;
  final List<SkillEntity> skills;

  AboutMeEntity({
    required this.title,
    required this.description,
    required this.aboutMe,
    required this.skills,
  });
}
