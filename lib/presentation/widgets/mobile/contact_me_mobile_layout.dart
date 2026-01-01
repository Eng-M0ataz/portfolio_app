import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/functions/validations.dart';
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
    required this.countryController,
    required this.projectDetailsController,
    required this.formKey,
  });

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController serviceController;
  final TextEditingController timelineController;
  final TextEditingController countryController;
  final TextEditingController projectDetailsController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: AppSizes.spaceBetweenItems_16,
        children: [
          CustomTextFormField(
            hintText: LocaleKeys.name.tr(),
            controller: nameController,
            validator: Validations.validateName,
          ),
          CustomTextFormField(
            hintText: LocaleKeys.email.tr(),
            controller: emailController,
            validator: Validations.validateEmail,
          ),
          CustomTextFormField(
            hintText: LocaleKeys.phone_number.tr(),
            controller: phoneController,
            validator: Validations.validatePhoneNumber,
          ),
          CustomTextFormField(
            hintText: LocaleKeys.service_of_interest.tr(),
            controller: serviceController,
            validator: Validations.validateService,
          ),
          CustomTextFormField(
            hintText: LocaleKeys.timeline.tr(),
            controller: timelineController,
            validator: Validations.validateTimeline,
          ),
          CustomTextFormField(
            hintText: LocaleKeys.country.tr(),
            controller: countryController,
            validator: Validations.validateCountry,
          ),
          CustomTextFormField(
            hintText: LocaleKeys.project_details.tr(),
            controller: projectDetailsController,
            maxLines: 5,
            validator: Validations.validateProjectDetails,
          ),
        ],
      ),
    );
  }
}
