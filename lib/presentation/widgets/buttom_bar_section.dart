import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/helpers/resposive_helper.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/presentation/widgets/social_media_widget.dart';

class BottomBarSection extends StatelessWidget {
  const BottomBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDeskTop = context.isDeskTop;
    return Container(
      decoration: const BoxDecoration(color: AppColorsDark.grey_252525),
      padding: EdgeInsets.all(AppSizes.spaceBetweenItems_24),
      child: Column(
        spacing: AppSizes.borderRadiusXxl_24,
        children: [
          SvgPicture.asset(Assets.assetsImagesLOGO),
          Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.start,
            runSpacing: AppSizes.spaceBetweenItems_16,
            spacing: isDeskTop
                ? AppSizes.spaceBetweenItems_50
                : AppSizes.spaceBetweenItems_24,
            children: [
              sectionText(context, LocaleKeys.home.tr()),
              sectionText(context, LocaleKeys.services.tr()),
              sectionText(context, LocaleKeys.about_me.tr()),
              sectionText(context, LocaleKeys.portfolio.tr()),
              sectionText(context, LocaleKeys.contact_me.tr()),
            ],
          ),
          SocialMediaWidget(mainAxisAlignment: MainAxisAlignment.center),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email_outlined, color: AppColorsDark.grey_959595),
              SizedBox(width: AppSizes.spaceBetweenItems_10),
              Text(
                'example@example.com',
                style: AppTextStyles.medium_16(
                  context,
                ).copyWith(color: AppColorsDark.grey_959595),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.call_outlined, color: AppColorsDark.grey_959595),
              SizedBox(width: AppSizes.spaceBetweenItems_10),
              Text(
                '+20 1012461616',
                style: AppTextStyles.medium_16(
                  context,
                ).copyWith(color: AppColorsDark.grey_959595),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget sectionText(BuildContext context, String text) {
  return Text(
    text,
    style: AppTextStyles.medium_16(
      context,
    ).copyWith(color: AppColorsDark.grey_959595),
  );
}
