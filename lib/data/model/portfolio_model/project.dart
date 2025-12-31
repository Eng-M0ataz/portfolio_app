import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

@JsonSerializable()
class Project {
  @JsonKey(name: 'project_name')
  final String? projectName;
  final String? category;
  final String? thumbnail;
  final List<String>? images;

  Project({this.projectName, this.category, this.thumbnail, this.images});

  factory Project.fromJson(Map<String, dynamic> json) {
    return _$ProjectFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}
