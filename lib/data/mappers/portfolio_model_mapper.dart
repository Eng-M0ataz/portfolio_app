import 'package:portfolio_website/data/model/portfolio_model/about_me.dart';
import 'package:portfolio_website/data/model/portfolio_model/experience.dart';
import 'package:portfolio_website/data/model/portfolio_model/personal_info.dart';
import 'package:portfolio_website/data/model/portfolio_model/portfolio_model.dart';
import 'package:portfolio_website/data/model/portfolio_model/project.dart';
import 'package:portfolio_website/data/model/portfolio_model/services.dart';
import 'package:portfolio_website/data/model/portfolio_model/services_list.dart';
import 'package:portfolio_website/data/model/portfolio_model/skill.dart';
import 'package:portfolio_website/domain/entity/about_me_entity.dart';
import 'package:portfolio_website/domain/entity/experience_entity.dart';
import 'package:portfolio_website/domain/entity/personal_info_entity.dart';
import 'package:portfolio_website/domain/entity/portfolio_entity.dart';
import 'package:portfolio_website/domain/entity/project_entity.dart';
import 'package:portfolio_website/domain/entity/service.dart';
import 'package:portfolio_website/domain/entity/skill.dart';

extension PersonalInfoModelMapper on PersonalInfo {
  PersonalInfoEntity toEntity() {
    return PersonalInfoEntity(
      id: id ?? 0,
      name: name ?? '',
      photo: photo ?? '',
      email: email ?? '',
      githubLink: githubLink ?? '',
      cvLink: cvLink ?? '',
      linkedinLink: linkedinLink ?? '',
      whatsappNumber: whatsappNumber ?? '',
    );
  }
}

extension ExperienceModelMapper on Experience {
  ExperienceEntity toEntity() {
    return ExperienceEntity(
      id: id ?? 0,
      projectsNumber: projectsNumber ?? 0,
      happyClients: happyClients ?? 0,
      experiences: experiences ?? 0,
    );
  }
}

extension ProjectModelMapper on Project {
  ProjectEntity toEntity() {
    return ProjectEntity(
      projectName: projectName ?? '',
      category: category ?? '',
      thumbnail: thumbnail ?? '',
      images: images ?? [],
    );
  }
}

extension SkillModelMapper on Skill {
  SkillEntity toSkillEntity() {
    return SkillEntity(
      image: image ?? '',
      title: name ?? '',
      percentage: (percent ?? 0).toDouble(),
    );
  }
}

extension AboutMeModelMapper on AboutMe {
  AboutMeEntity toEntity() {
    return AboutMeEntity(
      title: title ?? '',
      description: description ?? '',
      aboutMe: aboutMe ?? '',
      skills: skills?.map((s) => s.toSkillEntity()).toList() ?? [],
    );
  }
}

extension ServicesListModelMapper on ServicesList {
  ServicesItemEntity toEntity() {
    return ServicesItemEntity(
      description: description ?? '',
      name: name ?? '',
      photo: photo ?? '',
    );
  }
}

extension ServicesModelMapper on Services {
  ServiceEntity toEntityList() {
    return ServiceEntity(
      description: description ?? '',
      title: title ?? '',
      servicesList: servicesList?.map((e) => e.toEntity()).toList() ?? [],
    );
  }
}

extension PortfolioModelMapper on PortfolioModel {
  PortfolioEntity toEntity() {
    return PortfolioEntity(
      personalInfo:
          personalInfo?.toEntity() ??
          PersonalInfoEntity(
            id: 0,
            name: '',
            photo: '',
            email: '',
            githubLink: '',
            cvLink: '',
            linkedinLink: '',
            whatsappNumber: '',
          ),
      experience:
          experience?.toEntity() ??
          ExperienceEntity(
            id: 0,
            projectsNumber: 0,
            happyClients: 0,
            experiences: 0,
          ),
      aboutMe:
          aboutMe?.toEntity() ??
          AboutMeEntity(title: '', description: '', aboutMe: '', skills: []),
      projects: projects?.map((p) => p.toEntity()).toList() ?? [],
      serviceEntity:
          services?.toEntityList() ??
          ServiceEntity(description: '', title: '', servicesList: []),
    );
  }
}
