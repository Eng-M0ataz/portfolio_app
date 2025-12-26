import 'package:json_annotation/json_annotation.dart';

part 'service_dto.g.dart';

@JsonSerializable()
class ServiceDto {
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "photo")
  final String? photo;
  @JsonKey(name: "description")
  final String? description;

  ServiceDto({this.name, this.photo, this.description});

  factory ServiceDto.fromJson(Map<String, dynamic> json) {
    return _$ServiceDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ServiceDtoToJson(this);
  }
}
