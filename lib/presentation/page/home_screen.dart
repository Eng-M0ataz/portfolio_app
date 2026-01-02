import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/presentation/page/desktop_layout.dart';
import 'package:portfolio_website/presentation/page/mobile_layout.dart';
import 'package:portfolio_website/presentation/page/tablet_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final GlobalKey homeKey;
  late final GlobalKey servicesKey;
  late final GlobalKey aboutKey;
  late final GlobalKey portfolioKey;
  late final GlobalKey contactKey;
  @override
  void initState() {
    homeKey = GlobalKey();
    servicesKey = GlobalKey();
    aboutKey = GlobalKey();
    portfolioKey = GlobalKey();
    contactKey = GlobalKey();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        log(constraints.maxWidth.toString());
        if (constraints.maxWidth <= 320) {
          return SizedBox.shrink();
        } else if (context.isTablet) {
          return TabletLayout(
            homeKey: homeKey,
            servicesKey: servicesKey,
            aboutKey: aboutKey,
            portfolioKey: portfolioKey,
            contactKey: contactKey,
          );
        } else if (context.isMobile) {
          return MobileLayout(
            homeKey: homeKey,
            servicesKey: servicesKey,
            aboutKey: aboutKey,
            portfolioKey: portfolioKey,
            contactKey: contactKey,
          );
        } else {
          return DesktopLayout(
            homeKey: homeKey,
            servicesKey: servicesKey,
            aboutKey: aboutKey,
            portfolioKey: portfolioKey,
            contactKey: contactKey,
          );
        }
      },
    );
  }
}
