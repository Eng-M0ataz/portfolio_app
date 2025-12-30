import 'package:json_annotation/json_annotation.dart';

part 'personal_info.g.dart';

@JsonSerializable()
class PersonalInfo {
  int? id;
  String? name;
  String? photo;
  String? email;
  @JsonKey(name: 'github_link')
  String? githubLink;
  @JsonKey(name: 'cv_link')
  String? cvLink;
  @JsonKey(name: 'linkedin_link')
  String? linkedinLink;
  @JsonKey(name: 'whatsapp_number')
  String? whatsappNumber;

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
