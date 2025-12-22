import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/custom_elevated_button.dart';
import 'package:portfolio_website/core/widgets/custom_textform_field.dart';
import 'package:portfolio_website/core/widgets/elvated_button_custom_them.dart';
import 'package:portfolio_website/presentation/widgets/section_header.dart';

class ContactMeMobileLayout extends StatelessWidget {
  const ContactMeMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSizes.spaceBetweenItems_16,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.paddingMd_16,
          ),
          child: SectionHeader(
            sectionName: LocaleKeys.contact_me.tr(),
            description: LocaleKeys.cultivating_connections.tr(),
          ),
        ),
        SizedBox(height: AppSizes.spaceBetweenItems_24),
        CustomTextFormField(
          hintText: LocaleKeys.name.tr(),
          controller: TextEditingController(),
        ),
        CustomTextFormField(
          hintText: LocaleKeys.email.tr(),
          controller: TextEditingController(),
        ),
        CustomTextFormField(
          hintText: LocaleKeys.phone_number.tr(),
          controller: TextEditingController(),
        ),
        CustomTextFormField(
          hintText: LocaleKeys.service_of_interest.tr(),
          controller: TextEditingController(),
        ),
        CustomTextFormField(
          hintText: LocaleKeys.timeline.tr(),
          controller: TextEditingController(),
        ),
        CustomTextFormField(
          hintText: LocaleKeys.project_details.tr(),
          controller: TextEditingController(),
          contentPadding: EdgeInsets.only(
            left: AppSizes.paddingLg_24,
            right: AppSizes.paddingLg_24,
            top: AppSizes.paddingMd_16,
            bottom: AppSizes.padding_214,
          ),
        ),
        SizedBox(height: AppSizes.spaceBetweenItems_16),
        CustomElvatedButtonThem(
          child: CustomElevatedButton(
            onPressed: () {},
            child: Text(
              LocaleKeys.send.tr(),
              style: AppTextStyles.bold_20(
                context,
              ).copyWith(color: AppColorsDark.white),
            ),
          ),
        ),
      ],
    );
  }
}
