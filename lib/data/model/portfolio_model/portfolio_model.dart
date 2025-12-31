import 'package:json_annotation/json_annotation.dart';

import 'about_me.dart';
import 'experience.dart';
import 'personal_info.dart';
import 'project.dart';
import 'services.dart';

part 'portfolio_model.g.dart';

@JsonSerializable()
class PortfolioModel {
  @JsonKey(name: 'personal_info')
  final PersonalInfo? personalInfo;
  @JsonKey(name: 'experience')
  final Experience? experience;
  @JsonKey(name: 'about_me')
  final AboutMe? aboutMe;
  @JsonKey(name: 'services')
  final Services? services;
  final List<Project>? projects;

  PortfolioModel({
    this.personalInfo,
    this.experience,
    this.aboutMe,
    this.services,
    this.projects,
  });

  factory PortfolioModel.fromJson(Map<String, dynamic> json) {
    return _$PortfolioModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PortfolioModelToJson(this);
}
