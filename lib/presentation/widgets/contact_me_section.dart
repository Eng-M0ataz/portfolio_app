import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/contact_me_tablet_and_desktop_layout.dart';
import 'package:portfolio_website/core/widgets/custom_elevated_button.dart';
import 'package:portfolio_website/core/widgets/elevated_button_custom_them.dart';
import 'package:portfolio_website/core/widgets/section_header.dart';
import 'package:portfolio_website/presentation/widgets/mobile/contact_me_mobile_layout.dart';

class ContactMeSection extends StatefulWidget {
  const ContactMeSection({super.key, required this.padding});
  final EdgeInsetsGeometry padding;

  @override
  State<ContactMeSection> createState() => _ContactMeSectionState();
}

class _ContactMeSectionState extends State<ContactMeSection> {
  late final TextEditingController nameController;
  late final TextEditingController emailController;
  late final TextEditingController phoneController;
  late final TextEditingController serviceController;
  late final TextEditingController timelineController;
  late final TextEditingController projectDetailsController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    serviceController = TextEditingController();
    timelineController = TextEditingController();
    projectDetailsController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    serviceController.dispose();
    timelineController.dispose();
    projectDetailsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = context.isMobile;
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
                      projectDetailsController: projectDetailsController,
                    )
                  : ContactMeMobileLayOut(
                      nameController: nameController,
                      emailController: emailController,
                      phoneController: phoneController,
                      serviceController: serviceController,
                      timelineController: timelineController,
                      projectDetailsController: projectDetailsController,
                    );
            },
          ),
          Align(
            alignment: isMobile ? Alignment.center : Alignment.centerRight,
            child: CustomElevatedButtonThem(
              child: CustomElevatedButton(
                onPressed: () {},
                child: Text(
                  LocaleKeys.send.tr(),
                  style: AppTextStyles.bold_16(
                    context,
                  ).copyWith(color: AppColorsDark.grey_959),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
