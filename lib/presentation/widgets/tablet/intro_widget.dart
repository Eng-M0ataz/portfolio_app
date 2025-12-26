import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/intro_action_buttons.dart';
import 'package:portfolio_website/core/widgets/social_media_widget.dart';
import 'package:portfolio_website/core/widgets/stats_overview_widget.dart';
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final profileData = context.read<HomeViewModel>().state.profileData;
    final isDesktop = context.isDeskTop;
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
          profileData?.name ?? LocaleKeys.my_name.tr(),
          style: AppTextStyles.bold_28(
            context,
          ).copyWith(color: AppColorsDark.grey_959),
        ),
        SvgPicture.asset(Assets.assetsImagesFlutterDev),
        SocialMediaWidget(),
        SizedBox(
          height: isDesktop
              ? AppSizes.spaceBetweenItems_56
              : AppSizes.spaceBetweenItems_24,
        ),
        IntroActionButtons(),
        SizedBox(
          height: isDesktop
              ? AppSizes.spaceBetweenItems_56
              : AppSizes.spaceBetweenItems_24,
        ),

        Visibility(visible: isDesktop, child: const StatsOverviewWidget()),
      ],
    );
  }
}
