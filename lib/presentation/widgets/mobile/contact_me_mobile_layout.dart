import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/custom_textform_field.dart';

class ContactMeMobileLayOut extends StatelessWidget {
  const ContactMeMobileLayOut({
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
      spacing: AppSizes.spaceBetweenItems_16,
      children: [
        CustomTextFormField(
          hintText: LocaleKeys.name.tr(),
          controller: nameController,
        ),
        CustomTextFormField(
          hintText: LocaleKeys.email.tr(),
          controller: emailController,
        ),
        CustomTextFormField(
          hintText: LocaleKeys.phone_number.tr(),
          controller: phoneController,
        ),
        CustomTextFormField(
          hintText: LocaleKeys.service_of_interest.tr(),
          controller: serviceController,
        ),
        CustomTextFormField(
          hintText: LocaleKeys.timeline.tr(),
          controller: timelineController,
        ),
        CustomTextFormField(
          hintText: LocaleKeys.project_details.tr(),
          controller: projectDetailsController,
          maxLines: 10,
        ),
      ],
    );
  }
}
