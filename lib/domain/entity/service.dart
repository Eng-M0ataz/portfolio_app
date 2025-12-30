class ServiceEntity {
  final String title;
  final String description;
  List<ServicesItemEntity> servicesList;

  ServiceEntity({
    required this.title,
    required this.servicesList,
    required this.description,
  });
}

class ServicesItemEntity {
  final String name;
  final String description;
  final String photo;

  ServicesItemEntity({
    required this.description,
    required this.name,
    required this.photo,
  });
}
