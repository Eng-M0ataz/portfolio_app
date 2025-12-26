
import 'package:json_annotation/json_annotation.dart';

part 'skill_dto.g.dart';

@JsonSerializable()
class SkillDto {
  @JsonKey(name: "icon")
  final String? icon;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "percentage")
  final double? percentage;

  SkillDto({this.icon, this.title, this.percentage});

  factory SkillDto.fromJson(Map<String, dynamic> json) {
    return _$SkillDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SkillDtoToJson(this);
  }
}