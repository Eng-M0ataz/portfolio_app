
import 'package:json_annotation/json_annotation.dart';

part 'stats_dto.g.dart';

@JsonSerializable()
class StatsDto {
  @JsonKey(name: "happy_clients")
  final int? happyClients;
  @JsonKey(name: "projects_number")
  final int? projectsNumber;
  @JsonKey(name: "experience_years")
  final int? experienceYears;

  StatsDto ({
    this.happyClients,
    this.projectsNumber,
    this.experienceYears,
  });

  factory StatsDto.fromJson(Map<String, dynamic> json) {
    return _$StatsDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StatsDtoToJson(this);
  }
}