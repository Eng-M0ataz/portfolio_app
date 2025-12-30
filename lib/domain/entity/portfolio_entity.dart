import 'package:portfolio_website/domain/entity/about_me_entity.dart';
import 'package:portfolio_website/domain/entity/experience_entity.dart';
import 'package:portfolio_website/domain/entity/personal_info_entity.dart';
import 'package:portfolio_website/domain/entity/project_entity.dart';
import 'package:portfolio_website/domain/entity/service.dart';

class PortfolioEntity {
  final PersonalInfoEntity personalInfo;
  final ExperienceEntity experience;
  final AboutMeEntity aboutMe;
  final ServiceEntity serviceEntity;
  final List<ProjectEntity> projects;

  PortfolioEntity({
    required this.personalInfo,
    required this.experience,
    required this.aboutMe,
    required this.projects,
    required this.serviceEntity,
  });
}
