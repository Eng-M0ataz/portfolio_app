import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/buttom_bar_section.dart';
import 'package:portfolio_website/presentation/widgets/about_me_section.dart';
import 'package:portfolio_website/presentation/widgets/contact_me_section.dart';
import 'package:portfolio_website/presentation/widgets/mobile/mobile_hero_intro_section.dart';
import 'package:portfolio_website/presentation/widgets/portfolio_section.dart';
import 'package:portfolio_website/presentation/widgets/service_section.dart';
import 'package:portfolio_website/presentation/widgets/tablet/tablet_hero_intro_section.dart';
import 'package:portfolio_website/presentation/widgets/web/web_hero_intro_section.dart';

/// Returns the sections used in the mobile layout.
List<Widget> sectionsForMobile({
  required GlobalKey homeKey,
  required GlobalKey servicesKey,
  required GlobalKey aboutKey,
  required GlobalKey portfolioKey,
  required GlobalKey contactKey,
  required TextEditingController nameController,
  required TextEditingController emailController,
  required TextEditingController phoneController,
  required TextEditingController serviceController,
  required TextEditingController timelineController,
  required TextEditingController countryController,
  required TextEditingController projectDetailsController,
  required GlobalKey<FormState> formKey,
  required List<GlobalKey> globalKeysList,
}) {
  return [
    MobileHeroIntroSection(
      key: homeKey,
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.paddingLg_24,
        vertical: AppSizes.paddingXxl_50,
      ),
    ),
    ServicesSection(
      key: servicesKey,
      padding: EdgeInsetsGeometry.symmetric(
        horizontal: AppSizes.paddingLg_24,
        vertical: AppSizes.paddingXxl_50,
      ),
    ),
    AboutMeSection(
      key: aboutKey,
      padding: EdgeInsetsGeometry.symmetric(
        horizontal: AppSizes.paddingLg_24,
        vertical: AppSizes.paddingXxl_50,
      ),
    ),
    PortfolioSection(key: portfolioKey),
    ContactMeSection(
      key: contactKey,
      padding: EdgeInsetsGeometry.symmetric(
        horizontal: AppSizes.paddingLg_24,
        vertical: AppSizes.paddingXxl_50,
      ),
      nameController: nameController,
      emailController: emailController,
      phoneController: phoneController,
      serviceController: serviceController,
      timelineController: timelineController,
      countryController: countryController,
      projectDetailsController: projectDetailsController,
      formKey: formKey,
    ),
    BottomBarSection(
      padding: EdgeInsetsGeometry.only(top: AppSizes.paddingXxl_50),
      globalKeysList: globalKeysList,
    ),
  ];
}

/// Returns the sections used in the tablet layout.
List<Widget> sectionsForTablet({
  required GlobalKey<FormState> formKey,
  required List<GlobalKey> globalKeysList,
  required GlobalKey homeKey,
  required GlobalKey servicesKey,
  required GlobalKey aboutKey,
  required GlobalKey portfolioKey,
  required GlobalKey contactKey,
  required TextEditingController nameController,
  required TextEditingController emailController,
  required TextEditingController phoneController,
  required TextEditingController serviceController,
  required TextEditingController timelineController,
  required TextEditingController countryController,
  required TextEditingController projectDetailsController,
}) {
  return [
    TabletHeroIntroSection(
      globalKeysList: globalKeysList,
      key: homeKey,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.paddingXxl_48,
        vertical: AppSizes.paddingXxl_60,
      ),
    ),
    ServicesSection(
      key: servicesKey,
      padding: EdgeInsetsGeometry.symmetric(
        horizontal: AppSizes.paddingXxl_48,
        vertical: AppSizes.paddingXxl_60,
      ),
    ),
    AboutMeSection(
      key: aboutKey,
      padding: EdgeInsetsGeometry.symmetric(
        horizontal: AppSizes.paddingXxl_48,
        vertical: AppSizes.paddingXxl_60,
      ),
    ),
    PortfolioSection(key: portfolioKey),
    ContactMeSection(
      key: contactKey,
      padding: EdgeInsetsGeometry.symmetric(
        horizontal: AppSizes.paddingXxl_48,
        vertical: AppSizes.paddingXxl_60,
      ),
      nameController: nameController,
      emailController: emailController,
      phoneController: phoneController,
      serviceController: serviceController,
      timelineController: timelineController,
      countryController: countryController,
      projectDetailsController: projectDetailsController,
      formKey: formKey,
    ),
    BottomBarSection(
      padding: EdgeInsetsGeometry.only(top: AppSizes.paddingXxl_60),
      globalKeysList: globalKeysList,
    ),
  ];
}

/// Returns the sections used in the desktop/web layout.
List<Widget> sectionsForDesktop({
  required GlobalKey homeKey,
  required GlobalKey servicesKey,
  required GlobalKey aboutKey,
  required GlobalKey portfolioKey,
  required GlobalKey contactKey,
  required TextEditingController nameController,
  required TextEditingController emailController,
  required TextEditingController phoneController,
  required TextEditingController serviceController,
  required TextEditingController timelineController,
  required TextEditingController countryController,
  required TextEditingController projectDetailsController,
  required GlobalKey<FormState> formKey,

  required List<GlobalKey> globalKeysList,
}) {
  return [
    WebHeroIntroSection(homeKey: homeKey),
    ServicesSection(
      key: servicesKey,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.padding_80,
        vertical: AppSizes.padding_75,
      ),
    ),
    AboutMeSection(
      key: aboutKey,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.padding_80,
        vertical: AppSizes.padding_75,
      ),
    ),
    PortfolioSection(key: portfolioKey),
    ContactMeSection(
      key: contactKey,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.padding_80,
        vertical: AppSizes.padding_75,
      ),
      nameController: nameController,
      emailController: emailController,
      phoneController: phoneController,
      serviceController: serviceController,
      timelineController: timelineController,
      countryController: countryController,
      projectDetailsController: projectDetailsController,
      formKey: formKey,
    ),
    BottomBarSection(
      padding: const EdgeInsets.only(top: AppSizes.padding_75),
      globalKeysList: globalKeysList,
    ),
  ];
}
