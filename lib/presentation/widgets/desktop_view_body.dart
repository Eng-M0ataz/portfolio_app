import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/presentation/widgets/about_me_section.dart';
import 'package:portfolio_website/presentation/widgets/contact_me_section.dart';
import 'package:portfolio_website/presentation/widgets/custom_app_bar.dart';
import 'package:portfolio_website/presentation/widgets/intro_section.dart';
import 'package:portfolio_website/presentation/widgets/portfolio_section.dart';
import 'package:portfolio_website/presentation/widgets/service_section.dart';

class DesktopViewBody extends StatelessWidget {
  const DesktopViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          SizedBox(height: AppSizes.spaceBetweenItems_72),
          CustomAppBar(),
          SizedBox(height: AppSizes.spaceBetweenItems_130),
          IntroSection(),
          SizedBox(height: AppSizes.spaceBetweenItems_150),
          ServicesSection(),
          SizedBox(height: AppSizes.spaceBetweenItems_150),
          AboutMeSection(),
          SizedBox(height: AppSizes.spaceBetweenItems_100),
          PortfolioSection(),
          SizedBox(height: AppSizes.spaceBetweenItems_150),
          ContactMeSection(),
          SizedBox(height: AppSizes.spaceBetweenItems_150),
          // InfoSection(),
        ],
      ),
    );
  }
}
