import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/intro_action_buttons.dart';
import 'package:portfolio_website/core/widgets/personal_image.dart';
import 'package:portfolio_website/core/widgets/social_media_widget.dart';
import 'package:portfolio_website/core/widgets/stats_overview_widget.dart';
import 'package:portfolio_website/presentation/widgets/web/web_app_bar.dart';

class WebHeroIntroSection extends StatelessWidget {
  const WebHeroIntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppSizes.padding_80,
        right: AppSizes.padding_80,
        top: AppSizes.paddingXl_40,
        bottom: AppSizes.padding_75,
      ),
      child: Column(
        children: [
          WebCustomAppBar(),
          SizedBox(height: AppSizes.spaceBetweenItems_130),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LocaleKeys.hi.tr(),
                    style: AppTextStyles.bold_24(context).copyWith(
                      color: AppColorsDark.grey_7070,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    LocaleKeys.my_name.tr(),
                    style: AppTextStyles.bold_28(
                      context,
                    ).copyWith(color: AppColorsDark.grey_959),
                  ),
                  const SizedBox(height: AppSizes.spaceBetweenItems_24),

                  SvgPicture.asset(Assets.assetsImagesFlutterDev),
                  const SizedBox(height: AppSizes.spaceBetweenItems_32),
                  const SocialMediaWidget(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  const SizedBox(height: AppSizes.spaceBetweenItems_60),
                  const IntroActionButtons(),
                  const SizedBox(height: AppSizes.spaceBetweenItems_80),
                  StatsOverviewWidget(),
                ],
              ),
              Flexible(child: PersonalImageWidget()),
            ],
          ),
        ],
      ),
    );
  }
}
