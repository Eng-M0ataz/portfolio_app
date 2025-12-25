import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/buttom_bar_section.dart';
import 'package:portfolio_website/presentation/widgets/about_me_section.dart';
import 'package:portfolio_website/presentation/widgets/contact_me_section.dart';
import 'package:portfolio_website/presentation/widgets/service_section.dart';
import 'package:portfolio_website/presentation/widgets/tablet/tablet_hero_intro_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TabletHeroIntroSection(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.paddingXxl_48,
                vertical: AppSizes.paddingXxl_60,
              ),
            ),
            ServicesSection(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: AppSizes.paddingXxl_48,
                vertical: AppSizes.paddingXxl_60,
              ),
            ),
            AboutMeSection(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: AppSizes.paddingXxl_48,
                vertical: AppSizes.paddingXxl_60,
              ),
            ),
            // to do Portfolio widget
            ContactMeSection(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: AppSizes.paddingXxl_48,
                vertical: AppSizes.paddingXxl_60,
              ),
            ),

            BottomBarSection(
              padding: EdgeInsetsGeometry.only(top: AppSizes.paddingXxl_60),
            ),
          ],
        ),
      ),
    );
  }
}
