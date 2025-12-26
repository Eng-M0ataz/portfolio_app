import 'package:portfolio_website/data/model/service_dto.dart';
import 'package:portfolio_website/domain/entity/service.dart';

extension ServiceDtoMapper on ServiceDto {
  Service toEntity() {
    return Service(
      name: name ?? '',
      photo: photo ?? '',
      description: description ?? '',
    );
  }
}
