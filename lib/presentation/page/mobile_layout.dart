import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/buttom_bar_section.dart';
import 'package:portfolio_website/presentation/widgets/about_me_section.dart';
import 'package:portfolio_website/presentation/widgets/contact_me_section.dart';
import 'package:portfolio_website/presentation/widgets/mobile/mobile_hero_intro_section.dart';
import 'package:portfolio_website/presentation/widgets/mobile/side_bar_widget.dart';
import 'package:portfolio_website/presentation/widgets/portfolio_section.dart';
import 'package:portfolio_website/presentation/widgets/service_section.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

late GlobalKey<ScaffoldState> _scaffoldKey;

class _MobileLayoutState extends State<MobileLayout> {
  @override
  void initState() {
    _scaffoldKey = GlobalKey<ScaffoldState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: SideBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MobileHeroIntroSection(
              scaffoldKey: _scaffoldKey,
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.paddingLg_24,
                vertical: AppSizes.paddingXxl_50,
              ),
            ),
            ServicesSection(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: AppSizes.paddingLg_24,
                vertical: AppSizes.paddingXxl_50,
              ),
            ),
            AboutMeSection(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: AppSizes.paddingLg_24,
                vertical: AppSizes.paddingXxl_50,
              ),
            ),
            PortfolioSection(),
            ContactMeSection(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: AppSizes.paddingLg_24,
                vertical: AppSizes.paddingXxl_50,
              ),
            ),
            BottomBarSection(
              padding: EdgeInsetsGeometry.only(top: AppSizes.paddingXxl_50),
            ),
          ],
        ),
      ),
    );
  }
}
