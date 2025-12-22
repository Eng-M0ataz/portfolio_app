import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/helpers/resposive_helper.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/custom_elevated_button.dart';
import 'package:portfolio_website/presentation/widgets/percent_icons_row.dart';
import 'package:portfolio_website/presentation/widgets/section_header.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({
    super.key,
    this.edgeInsetsGeometry = const EdgeInsets.symmetric(
      horizontal: AppSizes.padding_80,
    ),
  });
  final EdgeInsetsGeometry edgeInsetsGeometry;
  @override
  Widget build(BuildContext context) {
    final isDesktop = context.isDeskTop;
    return Padding(
      padding: edgeInsetsGeometry,
      child: Column(
        children: [
          SectionHeader(
            description:
                'A software engineer, the modern-day architect of digital realms, navigates the ethereal landscapes of code, sculpting intangible structures that shape our technological world. With fingers poised over keyboards like virtuoso pianists, they compose symphonies of logic, their minds a labyrinth of algorithms and solutions.Their canvas is a screen, a vast expanse where lines of code dance in intricate patterns, weaving the fabric of programs and applications. Each keystroke is a brushstroke, crafting intricate architectures and breathing life into innovative designs.In this digital atelier, they don the mantle of problem solvers, confronting bugs and glitches like valiant knights in an ever-evolving quest for perfection. Debugging becomes a noble pursuit, unraveling the mysteries hidden within the tangled webs of code. designs.In this digital atelier.',
            sectionName: LocaleKeys.about_me.tr(),
          ),
          SizedBox(height: AppSizes.spaceBetweenItems_24),
          CustomElevatedButton(
            onPressed: () {},
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
                    style: isDesktop
                        ? AppTextStyles.medium_20(context)
                        : AppTextStyles.medium_16(context),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: AppSizes.spaceBetweenItems_72),
          PercentIconsRow(),
        ],
      ),
    );
  }
}
