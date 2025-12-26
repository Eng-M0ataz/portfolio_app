import 'package:portfolio_website/data/mappers/service_dto_mapper.dart';
import 'package:portfolio_website/data/mappers/skill_dto_mapper.dart';
import 'package:portfolio_website/data/mappers/social_link_dto_mapper.dart';
import 'package:portfolio_website/data/mappers/stats_dto_mapper.dart';
import 'package:portfolio_website/data/model/profile_data_dto.dart';
import 'package:portfolio_website/domain/entity/profile_data_entity.dart';
import 'package:portfolio_website/domain/entity/social_link.dart';
import 'package:portfolio_website/domain/entity/stats.dart';

extension ProfileDataDtoMapper on ProfileDataDto {
  ProfileDataEntity toEntity() {
    return ProfileDataEntity(
      id: id ?? 0,
      name: name ?? '',
      email: email ?? '',
      cvUrl: cvUrl ?? '',
      stats:
          stats?.toEntity() ??
          Stats(experienceYears: 0, projectsNumber: 0, happyClients: 0),
      skills: skills?.map((skill) => skill.toEntity()).toList() ?? [],
      services: services?.map((service) => service.toEntity()).toList() ?? [],
      socialLinks:
          socialLinks?.toEntity() ??
          SocialLink(github: '', linkedin: '', whatsapp: ''),
    );
  }
}
