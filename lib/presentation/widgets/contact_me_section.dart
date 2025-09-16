import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import '../../core/localization/locale_keys.g.dart';
import '../../core/utils/constants/sizes.dart' show AppSizes;

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.padding_214),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            LocaleKeys.contact_me.tr(),
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: AppSizes.spaceBetweenItems_16),
          Text(
            LocaleKeys.cultivating_connections.tr(),
            style: Theme.of(
              context,
            ).textTheme.labelSmall!.copyWith(color: AppColorsDark.grey_7070),
          ),
          SizedBox(height: AppSizes.spaceBetweenItems_50),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customTextField(hint: LocaleKeys.name.tr(), context: context),
                  SizedBox(width: AppSizes.spaceBetweenItems_32),
                  customTextField(
                    hint: LocaleKeys.email.tr(),
                    context: context,
                  ),
                ],
              ),
              SizedBox(height: AppSizes.spaceBetweenItems_32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customTextField(
                    hint: LocaleKeys.phone_number.tr(),
                    context: context,
                  ),
                  SizedBox(width: AppSizes.spaceBetweenItems_32),
                  customTextField(
                    hint: LocaleKeys.service_of_interest.tr(),
                    context: context,
                  ),
                ],
              ),
              SizedBox(height: AppSizes.spaceBetweenItems_32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customTextField(
                    hint: LocaleKeys.timeline.tr(),
                    context: context,
                  ),
                  SizedBox(width: AppSizes.spaceBetweenItems_32),
                  Expanded(
                    child: SizedBox(
                      height: 162,
                      child: TextField(
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColorsDark.grey_959,
                        ),
                        maxLines:10,
                        decoration: InputDecoration(
                          hintText: LocaleKeys.project_details.tr(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSizes.spaceBetweenItems_32),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColorsDark.black,
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.paddingXl_40,
                        vertical: AppSizes.paddingMd_12,
                      ),
                      side: BorderSide(color: AppColorsDark.grey_959),
                    ),

                    onPressed: () {},
                    child: Text(
                      LocaleKeys.send.tr(),
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: AppColorsDark.grey_959,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget customTextField({required String hint, required BuildContext context}) {
  return Expanded(
    child: TextField(
      style: Theme.of(
        context,
      ).textTheme.bodySmall!.copyWith(color: AppColorsDark.grey_959),
      decoration: InputDecoration(hintText: hint, border: OutlineInputBorder()),
    ),
  );
}
