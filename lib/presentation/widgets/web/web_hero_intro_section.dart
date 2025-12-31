import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
import 'package:portfolio_website/domain/entity/portfolio_entity.dart';
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';
import 'package:portfolio_website/presentation/widgets/web/web_app_bar.dart';

class WebHeroIntroSection extends StatelessWidget {
  const WebHeroIntroSection({
    super.key,
    required this.homeKey,
    required this.globalKeysList,
  });

  final GlobalKey homeKey;
  final List<GlobalKey> globalKeysList;

  @override
  Widget build(BuildContext context) {
    final profileData = context.read<HomeViewModel>().state.profileData;

    return Padding(
      key: homeKey,
      padding: const EdgeInsets.only(
        left: AppSizes.padding_80,
        right: AppSizes.padding_80,
        top: AppSizes.paddingXl_40,
        bottom: AppSizes.padding_75,
      ),
      child: Column(
        children: [
          WebCustomAppBar(globalKeysList: globalKeysList ),
          SizedBox(height: AppSizes.spaceBetweenItems_130),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(child: WebIntroWidget(profileData: profileData)),
              Flexible(child: PersonalImageWidget()),
            ],
          ),
        ],
      ),
    );
  }
}

class WebIntroWidget extends StatelessWidget {
  const WebIntroWidget({super.key, required this.profileData});

  final PortfolioEntity? profileData;

  @override
  Widget build(BuildContext context) {
    return Column(
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
          profileData?.personalInfo.name ?? LocaleKeys.my_name.tr(),
          style: AppTextStyles.bold_28(
            context,
          ).copyWith(color: AppColorsDark.grey_959),
        ),
        const SizedBox(height: AppSizes.spaceBetweenItems_24),

        SvgPicture.asset(Assets.assetsImagesFlutterDev),
        const SizedBox(height: AppSizes.spaceBetweenItems_32),
        const SocialMediaWidget(mainAxisAlignment: MainAxisAlignment.start),
        const SizedBox(height: AppSizes.spaceBetweenItems_60),
        const IntroActionButtons(),
        const SizedBox(height: AppSizes.spaceBetweenItems_80),
        StatsOverviewWidget(),
      ],
    );
  }
}
