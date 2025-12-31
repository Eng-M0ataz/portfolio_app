import 'package:json_annotation/json_annotation.dart';

import 'skill.dart';

part 'about_me.g.dart';

@JsonSerializable()
class AboutMe {
  final String? title;
  final String? description;
  @JsonKey(name: 'about_me')
  final String? aboutMe;
  final List<Skill>? skills;

  AboutMe({this.title, this.description, this.skills, this.aboutMe});

  factory AboutMe.fromJson(Map<String, dynamic> json) {
    return _$AboutMeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AboutMeToJson(this);
}
