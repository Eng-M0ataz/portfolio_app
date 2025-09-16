import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/presentation/widgets/custom_app_bar.dart';
import 'package:portfolio_website/presentation/widgets/intro_widget.dart';
import 'package:portfolio_website/presentation/widgets/personal_image.dart';
import 'package:portfolio_website/presentation/widgets/section_header.dart';
import 'package:portfolio_website/presentation/widgets/services_grid_view.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.spaceBetweenItems_80,
      ),
      child: ListView(
        children: [
          SizedBox(height: AppSizes.spaceBetweenItems_72),
          CustomAppBar(),
          SizedBox(height: AppSizes.spaceBetweenItems_130),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IntroWidget(),
              SizedBox(height: AppSizes.spaceBetweenItems_130),
              PersonalImagWidget(),
            ],
          ),

          SectionHeader(
            sectionName: LocaleKeys.services.tr(),
            description:
                'Lorem ipsum dolor sit amet consectetur. Imperdiet convallis blandit felis ligula aliquam',
          ),
          SizedBox(height: AppSizes.spaceBetweenItems_80),
          ServicesGridView(),
          SizedBox(height: AppSizes.spaceBetweenItems_150),
          SectionHeader(description: '', sectionName: LocaleKeys.about_me.tr()),

          Text(
            'A software engineer, the modern-day architect of digital realms, navigates the ethereal landscapes of code, sculpting intangible structures that shape our technological world. With fingers poised over keyboards like virtuoso pianists, they compose symphonies of logic, their minds a labyrinth of algorithms and solutions.Their canvas is a screen, a vast expanse where lines of code dance in intricate patterns, weaving the fabric of programs and applications. Each keystroke is a brushstroke, crafting intricate architectures and breathing life into innovative designs.In this digital atelier, they don the mantle of problem solvers, confronting bugs and glitches like valiant knights in an ever-evolving quest for perfection. Debugging becomes a noble pursuit, unraveling the mysteries hidden within the tangled webs of code. designs.In this digital atelier.',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppSizes.spaceBetweenItems_24),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(Assets.assetsImagesDownload),
                  SizedBox(width: AppSizes.spaceBetweenItems_4),
                  Text(
                    LocaleKeys.download_cv.tr(),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: AppSizes.spaceBetweenItems_100),
          // SizedBox(
          //   height: 277,
          //   child: ListView.separated(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: 5,
          //     itemBuilder: (context, index) {},
          //     separatorBuilder: (context, index) {},
          //   ),
          // ),
        ],
      ),
    );
  }
}












  // ResponsiveRowColumn(
          //   rowSpacing: 128,
          //   columnSpacing: 125,
          //   layout: ResponsiveValue(
          //     context,
          //     conditionalValues: [
          //       Condition.smallerThan(
          //         name: DeviceType.desktop,
          //         value: ResponsiveRowColumnType.COLUMN,
          //       ),
          //     ],
          //     defaultValue: ResponsiveRowColumnType.ROW,
          //   ).value,
          //   children: [
          //     ResponsiveRowColumnItem(
          //       child:
          //     ),
          //     ResponsiveRowColumnItem(
          //       child:
          //     ),
          //   ],
          // ),