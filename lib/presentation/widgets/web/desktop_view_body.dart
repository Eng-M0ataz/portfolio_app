import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/buttom_bar_section.dart';
import 'package:portfolio_website/presentation/widgets/about_me_section.dart';
import 'package:portfolio_website/presentation/widgets/contact_me_section.dart';
import 'package:portfolio_website/presentation/widgets/portfolio_section.dart';
import 'package:portfolio_website/presentation/widgets/service_section.dart';
import 'package:portfolio_website/presentation/widgets/web/web_hero_intro_section.dart';

class DesktopViewBody extends StatelessWidget {
  const DesktopViewBody({
    super.key,
    required this.homeKey,
    required this.servicesKey,
    required this.aboutKey,
    required this.portfolioKey,
    required this.contactKey,
    required this.globalKeysList,
  });

  final GlobalKey homeKey, servicesKey, aboutKey, portfolioKey, contactKey;
  final List<GlobalKey> globalKeysList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          WebHeroIntroSection(homeKey: homeKey, globalKeysList: globalKeysList),
          ServicesSection(
            key: servicesKey,
            padding: const EdgeInsetsGeometry.symmetric(
              horizontal: AppSizes.padding_80,
              vertical: AppSizes.padding_75,
            ),
          ),
          AboutMeSection(
            key: aboutKey,
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: AppSizes.padding_80,
              vertical: AppSizes.padding_75,
            ),
          ),

          PortfolioSection(key: portfolioKey),
          ContactMeSection(
            key: contactKey,
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: AppSizes.padding_80,
              vertical: AppSizes.padding_75,
            ),
          ),
          BottomBarSection(
            padding: EdgeInsetsGeometry.only(top: AppSizes.padding_75),
            globalKeysList: globalKeysList,
          ),
        ],
      ),
    );
  }
}
