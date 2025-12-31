import 'package:flutter/material.dart';
import 'package:portfolio_website/core/functions/navigate_to_sections.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/buttom_bar_section.dart';
import 'package:portfolio_website/presentation/widgets/about_me_section.dart';
import 'package:portfolio_website/presentation/widgets/contact_me_section.dart';
import 'package:portfolio_website/presentation/widgets/mobile/mobile_hero_intro_section.dart';
import 'package:portfolio_website/presentation/widgets/mobile/side_bar_widget.dart';
import 'package:portfolio_website/presentation/widgets/portfolio_section.dart';
import 'package:portfolio_website/presentation/widgets/service_section.dart';

class MobileLayout extends StatefulWidget {
  final GlobalKey homeKey;
  final GlobalKey servicesKey;
  final GlobalKey aboutKey;
  final GlobalKey portfolioKey;
  final GlobalKey contactKey;

  const MobileLayout({
    super.key,
    required this.homeKey,
    required this.servicesKey,
    required this.aboutKey,
    required this.portfolioKey,
    required this.contactKey,
  });

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

late GlobalKey<ScaffoldState> _scaffoldKey;
late ScrollController _scrollController;

late List<GlobalKey> globalKeysList;

class _MobileLayoutState extends State<MobileLayout> {
  @override
  void initState() {
    globalKeysList = [
      widget.homeKey,
      widget.servicesKey,
      widget.aboutKey,
      widget.portfolioKey,
      widget.contactKey,
    ];
    _scaffoldKey = GlobalKey<ScaffoldState>();
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
      key: _scaffoldKey,
      drawer: SideBarWidget(
        onTapItem: (index) {
          navigateToSections(
            context: context,
            globalKeyList: globalKeysList,
            index: index,
          );
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MobileHeroIntroSection(
              key: widget.homeKey,
              scaffoldKey: _scaffoldKey,
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.paddingLg_24,
                vertical: AppSizes.paddingXxl_50,
              ),
            ),
            ServicesSection(
              key: widget.servicesKey,
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: AppSizes.paddingLg_24,
                vertical: AppSizes.paddingXxl_50,
              ),
            ),
            AboutMeSection(
              key: widget.aboutKey,
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: AppSizes.paddingLg_24,
                vertical: AppSizes.paddingXxl_50,
              ),
            ),
            PortfolioSection(key: widget.portfolioKey),
            ContactMeSection(
              key: widget.contactKey,
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: AppSizes.paddingLg_24,
                vertical: AppSizes.paddingXxl_50,
              ),
            ),
            BottomBarSection(
              padding: EdgeInsetsGeometry.only(top: AppSizes.paddingXxl_50),
              globalKeysList: globalKeysList,
            ),
          ],
        ),
      ),
    );
  }
}
