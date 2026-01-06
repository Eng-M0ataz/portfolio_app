import 'package:flutter/material.dart';
import 'package:portfolio_website/core/widgets/sections_registry.dart';

class MobileLayout extends StatefulWidget {
  final GlobalKey homeKey;
  final GlobalKey servicesKey;
  final GlobalKey aboutKey;
  final GlobalKey portfolioKey;
  final GlobalKey contactKey;

  // Contact form controllers and keys
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController serviceController;
  final TextEditingController timelineController;
  final TextEditingController countryController;
  final TextEditingController projectDetailsController;

  final GlobalKey<FormState> formKey;

  const MobileLayout({
    super.key,
    required this.homeKey,
    required this.servicesKey,
    required this.aboutKey,
    required this.portfolioKey,
    required this.contactKey,
    required this.nameController,
    required this.emailController,
    required this.phoneController,
    required this.serviceController,
    required this.timelineController,
    required this.countryController,
    required this.projectDetailsController,
    required this.formKey,
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
      nameController: widget.nameController,
      emailController: widget.emailController,
      phoneController: widget.phoneController,
      serviceController: widget.serviceController,
      timelineController: widget.timelineController,
      countryController: widget.countryController,
      projectDetailsController: widget.projectDetailsController,
      formKey: widget.formKey,
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
