class ProjectEntity {
  final String projectName;
  final String category;
  final String thumbnail;
  final List<String> images;
  final String githubLink;
  final String demoLink;
  final String description;

  ProjectEntity({
    required this.projectName,
    required this.category,
    required this.thumbnail,
    required this.images,
    required this.githubLink,
    required this.demoLink,
    required this.description,
  });
}
