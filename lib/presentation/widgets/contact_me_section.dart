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
  const ContactMeSection({
    super.key,
    required this.padding,
    required this.countryController,
    required this.emailController,
    required this.formKey,
    required this.nameController,
    required this.phoneController,
    required this.projectDetailsController,
    required this.serviceController,
    required this.timelineController,
  });

  final EdgeInsetsGeometry padding;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController serviceController;
  final TextEditingController timelineController;
  final TextEditingController countryController;
  final TextEditingController projectDetailsController;
  final GlobalKey<FormState> formKey;

  @override
  State<ContactMeSection> createState() => _ContactMeSectionState();
}

class _ContactMeSectionState extends State<ContactMeSection>
    with AutomaticKeepAliveClientMixin {
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
                      nameController: widget.nameController,
                      emailController: widget.emailController,
                      phoneController: widget.phoneController,
                      serviceController: widget.serviceController,
                      timelineController: widget.timelineController,
                      countryController: widget.countryController,
                      projectDetailsController: widget.projectDetailsController,
                      formKey: widget.formKey,
                    )
                  : ContactMeMobileLayOut(
                      nameController: widget.nameController,
                      emailController: widget.emailController,
                      phoneController: widget.phoneController,
                      serviceController: widget.serviceController,
                      timelineController: widget.timelineController,
                      countryController: widget.countryController,
                      projectDetailsController: widget.projectDetailsController,
                      formKey: widget.formKey,
                    );
            },
          ),

          CustomElevatedButtonThem(
            child: CustomElevatedButtonBlocConsumer(
              nameController: widget.nameController,
              emailController: widget.emailController,
              phoneController: widget.phoneController,
              serviceController: widget.serviceController,
              countryController: widget.countryController,
              projectDetailsController: widget.projectDetailsController,
              timelineController: widget.timelineController,
              formKey: widget.formKey,
            ),
          ),
        ],
      ),
    ).applyMyStyle();
  }

  @override
  bool get wantKeepAlive => true;
}
