import 'package:portfolio_website/domain/entity/service.dart';
import 'package:portfolio_website/domain/entity/skill.dart';
import 'package:portfolio_website/domain/entity/social_link.dart';
import 'package:portfolio_website/domain/entity/stats.dart';

class ProfileDataEntity {
  final int? id;
  final String? name;
  final String? email;
  final String? cvUrl;
  final Stats? stats;
  final List<Skill>? skills;
  final List<Service>? services;
  final SocialLink? socialLinks;

  ProfileDataEntity({
    this.id,
    this.name,
    this.email,
    this.cvUrl,
    this.stats,
    this.skills,
    this.services,
    this.socialLinks,
  });
}
