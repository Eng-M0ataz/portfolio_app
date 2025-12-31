import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/buttom_bar_section.dart';
import 'package:portfolio_website/presentation/widgets/about_me_section.dart';
import 'package:portfolio_website/presentation/widgets/contact_me_section.dart';
import 'package:portfolio_website/presentation/widgets/portfolio_section.dart';
import 'package:portfolio_website/presentation/widgets/service_section.dart';
import 'package:portfolio_website/presentation/widgets/tablet/tablet_hero_intro_section.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({
    super.key,
    required this.homeKey,
    required this.servicesKey,
    required this.aboutKey,
    required this.portfolioKey,
    required this.contactKey,
  });

  final GlobalKey homeKey;
  final GlobalKey servicesKey;
  final GlobalKey aboutKey;
  final GlobalKey portfolioKey;
  final GlobalKey contactKey;

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  late ScrollController _scrollController;
  late List<GlobalKey> globalKeysList;

  @override
  void initState() {
    globalKeysList = [
      widget.homeKey,
      widget.servicesKey,
      widget.aboutKey,
      widget.portfolioKey,
      widget.contactKey,
    ];
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TabletHeroIntroSection(
              globalKeysList: globalKeysList,
              key: widget.homeKey,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.paddingXxl_48,
                vertical: AppSizes.paddingXxl_60,
              ),
            ),
            ServicesSection(
              key: widget.servicesKey,
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: AppSizes.paddingXxl_48,
                vertical: AppSizes.paddingXxl_60,
              ),
            ),
            AboutMeSection(
              key: widget.aboutKey,
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: AppSizes.paddingXxl_48,
                vertical: AppSizes.paddingXxl_60,
              ),
            ),
            PortfolioSection(key: widget.portfolioKey),
            ContactMeSection(
              key: widget.contactKey,
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: AppSizes.paddingXxl_48,
                vertical: AppSizes.paddingXxl_60,
              ),
            ),

            BottomBarSection(
              padding: EdgeInsetsGeometry.only(top: AppSizes.paddingXxl_60),
              globalKeysList: globalKeysList,
            ),
          ],
        ),
      ),
    );
  }
}
