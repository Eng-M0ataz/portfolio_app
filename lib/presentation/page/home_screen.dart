import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/presentation/page/desktop_layout.dart';
import 'package:portfolio_website/presentation/page/mobile_layout.dart';
import 'package:portfolio_website/presentation/page/tablet_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        log('${constraints.maxWidth}');
        if (context.isMobile) {
          return MobileLayout();
        } else if (context.isTablet) {
          return TabletLayout();
        } else {
          return DesktopLayout();
        }
      },
    );
  }
}
