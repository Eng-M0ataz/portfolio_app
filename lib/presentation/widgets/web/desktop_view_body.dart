import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/buttom_bar_section.dart';
import 'package:portfolio_website/presentation/widgets/about_me_section.dart';
import 'package:portfolio_website/presentation/widgets/contact_me_section.dart';
import 'package:portfolio_website/presentation/widgets/service_section.dart';
import 'package:portfolio_website/presentation/widgets/web/web_hero_intro_section.dart';

class DesktopViewBody extends StatelessWidget {
  const DesktopViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          WebHeroIntroSection(),
          ServicesSection(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: AppSizes.padding_80,
              vertical: AppSizes.padding_75,
            ),
          ),
          AboutMeSection(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: AppSizes.padding_80,
              vertical: AppSizes.padding_75,
            ),
          ),

          // PortfolioSection(),
          ContactMeSection(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: AppSizes.padding_80,
              vertical: AppSizes.padding_75,
            ),
          ),
          BottomBarSection(
            padding: EdgeInsetsGeometry.only(top: AppSizes.padding_75),
          ),
        ],
      ),
    );
  }
}
