import 'package:json_annotation/json_annotation.dart';

part 'personal_info.g.dart';

@JsonSerializable()
class PersonalInfo {
  final int? id;
  final String? name;
  final String? photo;
  final String? email;
  @JsonKey(name: 'github_link')
  final String? githubLink;
  @JsonKey(name: 'cv_link')
  final String? cvLink;
  @JsonKey(name: 'linkedin_link')
  final String? linkedinLink;
  @JsonKey(name: 'whatsapp_number')
  final String? whatsappNumber;

  PersonalInfo({
    this.id,
    this.name,
    this.photo,
    this.email,
    this.githubLink,
    this.cvLink,
    this.linkedinLink,
    this.whatsappNumber,
  });

  factory PersonalInfo.fromJson(Map<String, dynamic> json) {
    return _$PersonalInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PersonalInfoToJson(this);
}
