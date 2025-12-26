import 'package:json_annotation/json_annotation.dart';

part 'social_link_dto.g.dart';

@JsonSerializable()
class SocialLinkDto {
  @JsonKey(name: "github")
  final String? github;
  @JsonKey(name: "linkedin")
  final String? linkedin;
  @JsonKey(name: "whatsapp")
  final String? whatsapp;

  SocialLinkDto({this.github, this.linkedin, this.whatsapp});

  factory SocialLinkDto.fromJson(Map<String, dynamic> json) {
    return _$SocialLinkDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SocialLinkDtoToJson(this);
  }
}