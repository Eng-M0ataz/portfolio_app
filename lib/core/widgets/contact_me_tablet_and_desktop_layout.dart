import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/functions/validations.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/custom_row_text_form_filled.dart';
import 'package:portfolio_website/core/widgets/custom_textform_field.dart';

class ContactMeTabletAndDeskTopLayout extends StatelessWidget {
  const ContactMeTabletAndDeskTopLayout({
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
        spacing: AppSizes.spaceBetweenItems_32,
        children: [
          CustomRowTextFiled(
            hintText1: LocaleKeys.name.tr(),
            hintText2: LocaleKeys.email.tr(),
            firstController: nameController,
            secondController: emailController,
            firstValidator: Validations.validateName,
            secondValidator: Validations.validateEmail,
          ),
          CustomRowTextFiled(
            hintText1: LocaleKeys.phone_number.tr(),
            hintText2: LocaleKeys.service_of_interest.tr(),
            firstController: phoneController,
            secondController: serviceController,
            firstValidator: Validations.validatePhoneNumber,
            secondValidator: Validations.validateService,
          ),
          CustomRowTextFiled(
            hintText1: LocaleKeys.timeline.tr(),
            hintText2: LocaleKeys.country.tr(),
            firstController: timelineController,
            secondController: countryController,
            firstValidator: Validations.validateTimeline,
            secondValidator: Validations.validateCountry,
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
