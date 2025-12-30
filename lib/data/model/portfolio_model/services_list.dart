import 'package:json_annotation/json_annotation.dart';

part 'services_list.g.dart';

@JsonSerializable()
class ServicesList {
  int? id;
  String? name;
  String? description;
  String? photo;

  ServicesList({this.id, this.name, this.description, this.photo});

  factory ServicesList.fromJson(Map<String, dynamic> json) {
    return _$ServicesListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ServicesListToJson(this);
}
