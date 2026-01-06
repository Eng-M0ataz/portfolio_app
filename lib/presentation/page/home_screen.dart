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
  // Contact form controllers and keys
  late final GlobalKey<FormState> formKey;
  late final TextEditingController nameController;
  late final TextEditingController emailController;
  late final TextEditingController phoneController;
  late final TextEditingController serviceController;
  late final TextEditingController timelineController;
  late final TextEditingController countryController;
  late final TextEditingController projectDetailsController;

  @override
  void initState() {
    homeKey = GlobalKey();
    servicesKey = GlobalKey();
    aboutKey = GlobalKey();
    portfolioKey = GlobalKey();
    contactKey = GlobalKey();

    nameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    serviceController = TextEditingController();
    timelineController = TextEditingController();
    countryController = TextEditingController();
    projectDetailsController = TextEditingController();
    formKey = GlobalKey<FormState>();

    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    serviceController.dispose();
    timelineController.dispose();
    countryController.dispose();
    projectDetailsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 260) {
          return SizedBox.shrink();
        } else if (context.isTablet) {
          return TabletLayout(
            homeKey: homeKey,
            servicesKey: servicesKey,
            aboutKey: aboutKey,
            portfolioKey: portfolioKey,
            contactKey: contactKey,
            nameController: nameController,
            emailController: emailController,
            phoneController: phoneController,
            serviceController: serviceController,
            timelineController: timelineController,
            countryController: countryController,
            projectDetailsController: projectDetailsController,
            formKey: formKey,
          );
        } else if (context.isMobile) {
          return MobileLayout(
            homeKey: homeKey,
            servicesKey: servicesKey,
            aboutKey: aboutKey,
            portfolioKey: portfolioKey,
            contactKey: contactKey,
            nameController: nameController,
            emailController: emailController,
            phoneController: phoneController,
            serviceController: serviceController,
            timelineController: timelineController,
            countryController: countryController,
            projectDetailsController: projectDetailsController,
            formKey: formKey,
          );
        } else {
          return DesktopLayout(
            homeKey: homeKey,
            servicesKey: servicesKey,
            aboutKey: aboutKey,
            portfolioKey: portfolioKey,
            contactKey: contactKey,
            nameController: nameController,
            emailController: emailController,
            phoneController: phoneController,
            serviceController: serviceController,
            timelineController: timelineController,
            countryController: countryController,
            projectDetailsController: projectDetailsController,
            formKey: formKey,
          );
        }
      },
    );
  }
}
