class ProjectEntity {
  final String projectName;
  final String category;
  final String thumbnail;
  final List<String> images;

  ProjectEntity({
    required this.projectName,
    required this.category,
    required this.thumbnail,
    required this.images,
  });
}
