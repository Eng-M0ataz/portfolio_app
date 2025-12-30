import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/presentation/widgets/mobile/side_bar_item.dart';

class SideBarWidget extends StatelessWidget {
  const SideBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.paddingXl_32,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: AppSizes.paddingXl_32,
                ),
                child: Align(
                  alignment: AlignmentGeometry.center,
                  child: Image.asset(
                    Assets.assetsImagesLogoDesign,
                    cacheHeight: 80,
                    cacheWidth: 80,
                  ),
                ),
              ),
              const SizedBox(height: AppSizes.paddingSm_8),
              Text(
                LocaleKeys.portfolio_title.tr(),
                style: TextStyle(
                  fontSize: context.responsiveValue(
                    mobile: AppSizes.font_22,
                    tablet: AppSizes.font_24,
                    desktop: AppSizes.font_24,
                  ),
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.5,
                  color: AppColorsDark.orange,
                ),
              ),
              const SizedBox(height: AppSizes.paddingSm_8),
              Container(
                height: AppSizes.dividerHeight * 3,
                width: AppSizes.paddingXl_40,
                decoration: BoxDecoration(
                  color: AppColorsDark.orange,
                  borderRadius: BorderRadius.circular(
                    AppSizes.borderRadiusSm_4 / 2,
                  ),
                ),
              ),
              const SizedBox(height: AppSizes.paddingXxl_50),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    SidebarItem(
                      text: LocaleKeys.home,
                      icon: Icons.home_rounded,
                      onTap: () {},
                    ),

                    SidebarItem(
                      text: LocaleKeys.services,
                      icon: Icons.settings_suggest_rounded,
                      onTap: () {},
                    ),

                    SidebarItem(
                      text: LocaleKeys.about_me,
                      icon: Icons.person_rounded,
                      onTap: () {},
                    ),

                    SidebarItem(
                      text: LocaleKeys.portfolio,
                      icon: Icons.work_rounded,
                      onTap: () {},
                    ),

                    SidebarItem(
                      text: LocaleKeys.skills,
                      icon: Icons.psychology_rounded,
                      onTap: () {},
                    ),

                    SidebarItem(
                      text: LocaleKeys.contact_me,
                      icon: Icons.alternate_email_rounded,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
