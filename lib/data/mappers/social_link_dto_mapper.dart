import 'package:portfolio_website/data/model/social_link_dto.dart';
import 'package:portfolio_website/domain/entity/social_link.dart';

extension SocialLinkDtoMapper on SocialLinkDto {
  SocialLink toEntity() {
    return SocialLink(
      github: github ?? '',
      linkedin: linkedin ?? '',
      whatsapp: whatsapp ?? '',
    );
  }
}
