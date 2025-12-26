import 'package:portfolio_website/data/model/stats_dto.dart';
import 'package:portfolio_website/domain/entity/stats.dart';

extension StatsDtoMapper on StatsDto {
  Stats toEntity() {
    return Stats(
      happyClients: happyClients ?? 0,
      projectsNumber: projectsNumber ?? 0,
      experienceYears: experienceYears ?? 0,
    );
  }
}
