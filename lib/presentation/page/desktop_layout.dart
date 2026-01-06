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
    required this.nameController,
    required this.emailController,
    required this.phoneController,
    required this.serviceController,
    required this.timelineController,
    required this.countryController,
    required this.projectDetailsController,
    required this.formKey,
  });

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
