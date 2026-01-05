import 'package:flutter/material.dart';
import 'package:portfolio_website/core/widgets/sections_registry.dart';

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

class _MobileLayoutState extends State<MobileLayout> {
  late final ScrollController _scrollController;
  late final List<GlobalKey> globalKeysList;
  late final List<Widget> _sections;
  @override
  void initState() {
    _scrollController = ScrollController();
    globalKeysList = [
      widget.homeKey,
      widget.servicesKey,
      widget.aboutKey,
      widget.portfolioKey,
      widget.contactKey,
    ];
    _sections = sectionsForMobile(
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
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        cacheExtent: 0,
        controller: _scrollController,
        itemCount: _sections.length,
        itemBuilder: (_, index) => _sections[index],
      ),
    );
  }
}
