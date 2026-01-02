import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

@JsonSerializable()
class Project {
  @JsonKey(name: 'project_name')
  final String? projectName;
  final String? category;
  final String? thumbnail;
  final List<String>? images;
  @JsonKey(name: 'github_link')
  final String? githubLink;
  @JsonKey(name: 'demo_link')
  final String? demoLink;
  @JsonKey(name: 'description')
  final String? description;

  Project({
    this.projectName,
    this.category,
    this.thumbnail,
    this.images,
    this.githubLink,
    this.demoLink,
    this.description,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return _$ProjectFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}
