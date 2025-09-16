import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/presentation/widgets/about_me_section.dart';
import 'package:portfolio_website/presentation/widgets/contact_me_section.dart';
import 'package:portfolio_website/presentation/widgets/custom_app_bar.dart';
import 'package:portfolio_website/presentation/widgets/info_section.dart';
import 'package:portfolio_website/presentation/widgets/intro_section.dart';
import 'package:portfolio_website/presentation/widgets/portfolio_section.dart';
import 'package:portfolio_website/presentation/widgets/service_section.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: AppSizes.spaceBetweenItems_72),
        CustomAppBar(),
        SizedBox(height: AppSizes.spaceBetweenItems_130),
        IntroSection(),
        ServicesSection(),
        SizedBox(height: AppSizes.spaceBetweenItems_150),
        AboutMeSection(),
        SizedBox(height: AppSizes.spaceBetweenItems_100),
        PortfolioSection(),
        SizedBox(height: AppSizes.spaceBetweenItems_150),
        ContactMeSection(),
        SizedBox(height: AppSizes.spaceBetweenItems_150),
        InfoSection(),
      ],
    );
  }
}






 // SizedBox(
          //   height: 277,
          //   child: ListView.separated(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: 5,
          //     itemBuilder: (context, index) {},
          //     separatorBuilder: (context, index) {},
          //   ),
          // ),




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