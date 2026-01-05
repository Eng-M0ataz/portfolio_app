import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/functions/do_animation.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/contact_me_tablet_and_desktop_layout.dart';
import 'package:portfolio_website/core/widgets/custom_elevated_button_bloc_consumer.dart';
import 'package:portfolio_website/core/widgets/elevated_button_custom_them.dart';
import 'package:portfolio_website/core/widgets/section_header.dart';
import 'package:portfolio_website/presentation/widgets/mobile/contact_me_mobile_layout.dart';

class ContactMeSection extends StatefulWidget {
  const ContactMeSection({super.key, required this.padding});

  final EdgeInsetsGeometry padding;

  @override
  State<ContactMeSection> createState() => _ContactMeSectionState();
}

class _ContactMeSectionState extends State<ContactMeSection>
    with AutomaticKeepAliveClientMixin {
  late final TextEditingController nameController;
  late final TextEditingController emailController;
  late final TextEditingController phoneController;
  late final TextEditingController serviceController;
  late final TextEditingController timelineController;
  late final TextEditingController countryController;
  late final TextEditingController projectDetailsController;
  late final GlobalKey<FormState> mobileFormKey;
  late final GlobalKey<FormState> formKey;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    serviceController = TextEditingController();
    timelineController = TextEditingController();
    countryController = TextEditingController();
    projectDetailsController = TextEditingController();
    formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: widget.padding,
      child: Column(
        spacing: AppSizes.spaceBetweenItems_24,
        children: [
          SectionHeader(
            sectionName: LocaleKeys.contact_me.tr(),
            description: LocaleKeys.cultivating_connections.tr(),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              return !context.isMobile
                  ? ContactMeTabletAndDeskTopLayout(
                      nameController: nameController,
                      emailController: emailController,
                      phoneController: phoneController,
                      serviceController: serviceController,
                      timelineController: timelineController,
                      countryController: countryController,
                      projectDetailsController: projectDetailsController,
                      formKey: formKey,
                    )
                  : ContactMeMobileLayOut(
                      nameController: nameController,
                      emailController: emailController,
                      phoneController: phoneController,
                      serviceController: serviceController,
                      timelineController: timelineController,
                      countryController: countryController,
                      projectDetailsController: projectDetailsController,
                      formKey: formKey,
                    );
            },
          ),

          CustomElevatedButtonThem(
            child: CustomElevatedButtonBlocConsumer(
              nameController: nameController,
              emailController: emailController,
              phoneController: phoneController,
              serviceController: serviceController,
              countryController: countryController,
              projectDetailsController: projectDetailsController,
              timelineController: timelineController,
              formKey: formKey,
            ),
          ),
        ],
      ),
    ).applyMyStyle();
  }

  @override
  bool get wantKeepAlive => true;
}
