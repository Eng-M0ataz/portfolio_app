import 'package:flutter/material.dart';
import 'package:portfolio_website/core/widgets/sections_registry.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({
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
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  late List<GlobalKey> globalKeysList;
  late List<Widget> _sectionsList;
  @override
  void initState() {
    globalKeysList = [
      widget.homeKey,
      widget.servicesKey,
      widget.aboutKey,
      widget.portfolioKey,
      widget.contactKey,
    ];
    _sectionsList = sectionsForDesktop(
      homeKey: widget.homeKey,
      servicesKey: widget.servicesKey,
      aboutKey: widget.aboutKey,
      portfolioKey: widget.portfolioKey,
      contactKey: widget.contactKey,
      globalKeysList: globalKeysList,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        cacheExtent: 0,
        padding: EdgeInsets.zero,
        itemCount: _sectionsList.length,
        itemBuilder: (context, index) => _sectionsList[index],
      ),
    );
  }
}
