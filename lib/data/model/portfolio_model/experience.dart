import 'package:json_annotation/json_annotation.dart';

part 'experience.g.dart';

@JsonSerializable()
class Experience {
  int? id;
  @JsonKey(name: 'projects_number')
  int? projectsNumber;
  @JsonKey(name: 'happy_clients')
  int? happyClients;
  @JsonKey(name: 'Experiences')
  int? experiences;

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
