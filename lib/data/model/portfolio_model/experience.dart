import 'package:json_annotation/json_annotation.dart';

part 'experience.g.dart';

@JsonSerializable()
class Experience {
  final int? id;
  @JsonKey(name: 'projects_number')
  final int? projectsNumber;
  @JsonKey(name: 'happy_clients')
  final int? happyClients;
  @JsonKey(name: 'Experiences')
  final int? experiences;

  Experience({
    this.id,
    this.projectsNumber,
    this.happyClients,
    this.experiences,
  });

  factory Experience.fromJson(Map<String, dynamic> json) {
    return _$ExperienceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ExperienceToJson(this);
}
