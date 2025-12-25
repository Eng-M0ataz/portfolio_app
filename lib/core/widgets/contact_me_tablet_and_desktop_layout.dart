import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/custom_row_text_form_filled.dart';

class ContactMeTabletAndDeskTopLayout extends StatelessWidget {
  const ContactMeTabletAndDeskTopLayout({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.phoneController,
    required this.serviceController,
    required this.timelineController,
    required this.projectDetailsController,
  });

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController serviceController;
  final TextEditingController timelineController;
  final TextEditingController projectDetailsController;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSizes.spaceBetweenItems_32,
      children: [
        CustomRowTextFiled(
          hintText1: LocaleKeys.name.tr(),
          hintText2: LocaleKeys.email.tr(),
          firstController: nameController,
          secondController: emailController,
        ),
        CustomRowTextFiled(
          hintText1: LocaleKeys.phone_number.tr(),
          hintText2: LocaleKeys.service_of_interest.tr(),
          firstController: phoneController,
          secondController: serviceController,
        ),
        CustomRowTextFiled(
          hintText1: LocaleKeys.timeline.tr(),
          hintText2: LocaleKeys.project_details.tr(),
          firstController: timelineController,
          secondController: projectDetailsController,
          secondMaxLines: 10,
        ),
      ],
    );
  }
}
