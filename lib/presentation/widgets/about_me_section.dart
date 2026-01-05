import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/core/functions/do_animation.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/custom_elevated_button.dart';
import 'package:portfolio_website/core/widgets/section_header.dart';
import 'package:portfolio_website/core/widgets/skills_widget.dart';
import 'package:portfolio_website/presentation/viewModel/home_event.dart';
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';

class AboutMeSection extends StatefulWidget {
  const AboutMeSection({
    super.key,
    this.padding = const EdgeInsets.symmetric(horizontal: AppSizes.padding_80),
  });
  final EdgeInsetsGeometry padding;

  @override
  State<AboutMeSection> createState() => _AboutMeSectionState();
}

class _AboutMeSectionState extends State<AboutMeSection>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final data = context.read<HomeViewModel>().state.profileData!;
    return Padding(
      padding: widget.padding,
      child: Column(
        children: [
          SectionHeader(
            sectionName: data.aboutMe.title,
            description: data.aboutMe.description,
          ),
          SizedBox(height: AppSizes.spaceBetweenItems_24),
          CustomElevatedButton(
            onPressed: () {
              context.read<HomeViewModel>().doIntent(DownloadCvEvent());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.paddingMd_16,
                vertical: AppSizes.paddingMd_10,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(Assets.assetsImagesDownload),
                  SizedBox(width: AppSizes.spaceBetweenItems_10),
                  Text(
                    LocaleKeys.download_cv.tr(),
                    style: AppTextStyles.medium_20(context),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: AppSizes.spaceBetweenItems_72),
          SkillsWidget(skills: data.aboutMe.skills),
        ],
      ),
    ).applyMyStyle();
  }
}
