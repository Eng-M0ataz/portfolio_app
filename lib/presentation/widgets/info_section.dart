import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../core/config/theme/app_colors.dart';
import '../../core/utils/Constants/sizes.dart';
import '../../core/utils/constants/app_assets.dart';
import 'connection_widget.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: AppColorsDark.grey_252525),
      child: Column(
        children: [
          const SizedBox(height: AppSizes.spaceBetweenItems_40),
          SvgPicture.asset(Assets.assetsImagesLOGO, fit: BoxFit.cover),
          const SizedBox(height: AppSizes.spaceBetweenItems_50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConnectionWidget(
                icon: FontAwesomeIcons.linkedin,
                onPressed: () {},
              ),
              const SizedBox(width: AppSizes.spaceBetweenItems_16),
              ConnectionWidget(icon: FontAwesomeIcons.github, onPressed: () {}),
              const SizedBox(width: AppSizes.spaceBetweenItems_16),
              ConnectionWidget(
                icon: FontAwesomeIcons.envelope,
                onPressed: () {},
              ),
              const SizedBox(width: AppSizes.spaceBetweenItems_16),
              ConnectionWidget(icon: FontAwesomeIcons.phone, onPressed: () {}),
            ],
          ),

          const SizedBox(height: AppSizes.spaceBetweenItems_50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              sectionText(context, LocaleKeys.home.tr()),
              const SizedBox(width: AppSizes.spaceBetweenItems_50),
              sectionText(context, LocaleKeys.services.tr()),
              const SizedBox(width: AppSizes.spaceBetweenItems_50),
              sectionText(context, LocaleKeys.about_me.tr()),
              const SizedBox(width: AppSizes.spaceBetweenItems_50),
              sectionText(context, LocaleKeys.portfolio.tr()),
              const SizedBox(width: AppSizes.spaceBetweenItems_50),
              sectionText(context, LocaleKeys.contact_me.tr()),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBetweenItems_50),
        ],
      ),
    );
  }
}

Widget sectionText(BuildContext context, String text) {
  return Text(
    text,
    style: Theme.of(
      context,
    ).textTheme.bodyMedium!.copyWith(color: AppColorsDark.grey_959),
  );
}
