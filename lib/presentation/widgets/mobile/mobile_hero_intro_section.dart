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
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';
import 'package:portfolio_website/presentation/widgets/mobile/app_bar_mobile_layout.dart';

class MobileHeroIntroSection extends StatelessWidget {
  const MobileHeroIntroSection({
    super.key,
    this.padding = EdgeInsets.zero,
    required this.scaffoldKey,
  });

  final EdgeInsets padding;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    final profileData = context.read<HomeViewModel>().state.profileData;

    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MobileAppBarLayout(scaffoldKey: scaffoldKey),
          SizedBox(height: AppSizes.spaceBetweenItems_60),
          Text(
            LocaleKeys.hi.tr(),
            style: AppTextStyles.bold_24(context).copyWith(
              color: AppColorsDark.grey_7070,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            profileData?.name ?? LocaleKeys.my_name.tr(),
            style: AppTextStyles.bold_28(
              context,
            ).copyWith(color: AppColorsDark.grey_959),
          ),
          const SizedBox(height: AppSizes.spaceBetweenItems_24),
          SvgPicture.asset(Assets.assetsImagesFlutterDev),
          const SizedBox(height: AppSizes.spaceBetweenItems_32),
          const SocialMediaWidget(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: AppSizes.spaceBetweenItems_50),
          const IntroActionButtons(),
          const SizedBox(height: AppSizes.spaceBetweenItems_50),
          StatsOverviewWidget(),
          const SizedBox(height: AppSizes.spaceBetweenItems_24),
          PersonalImageWidget(),
        ],
      ),
    );
  }
}
