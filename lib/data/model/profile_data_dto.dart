import 'package:json_annotation/json_annotation.dart';
import 'package:portfolio_website/data/model/service_dto.dart';
import 'package:portfolio_website/data/model/skill_dto.dart';
import 'package:portfolio_website/data/model/social_link_dto.dart';
import 'package:portfolio_website/data/model/stats_dto.dart';

part 'profile_data_dto.g.dart';

@JsonSerializable()
class ProfileDataDto {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "email")
  final String? email;
  @JsonKey(name: "cv_link")
  final String? cvUrl;
  @JsonKey(name: "stats")
  final StatsDto? stats;
  @JsonKey(name: "skills")
  final List<SkillDto>? skills;
  @JsonKey(name: "services")
  final List<ServiceDto>? services;
  @JsonKey(name: "social_links")
  final SocialLinkDto? socialLinks;

  ProfileDataDto({
    this.id,
    this.name,
    this.email,
    this.cvUrl,
    this.stats,
    this.skills,
    this.services,
    this.socialLinks,
  });

  factory ProfileDataDto.fromJson(Map<String, dynamic> json) {
    return _$ProfileDataDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ProfileDataDtoToJson(this);
  }
}
