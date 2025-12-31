import 'package:json_annotation/json_annotation.dart';

part 'services_list.g.dart';

@JsonSerializable()
class ServicesList {
  final int? id;
  final String? name;
  final String? description;
  final String? photo;

  ServicesList({this.id, this.name, this.description, this.photo});

  factory ServicesList.fromJson(Map<String, dynamic> json) {
    return _$ServicesListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ServicesListToJson(this);
}
