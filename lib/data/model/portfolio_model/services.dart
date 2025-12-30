import 'package:json_annotation/json_annotation.dart';

import 'services_list.dart';

part 'services.g.dart';

@JsonSerializable()
class Services {
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'services_list')
  List<ServicesList>? servicesList;

  Services({this.title, this.description, this.servicesList});

  factory Services.fromJson(Map<String, dynamic> json) {
    return _$ServicesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ServicesToJson(this);
}
