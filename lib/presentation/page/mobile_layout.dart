import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/presentation/widgets/about_me_section.dart';
import 'package:portfolio_website/presentation/widgets/buttom_bar_section.dart';
import 'package:portfolio_website/presentation/widgets/contact_me_mobile_layout.dart';
import 'package:portfolio_website/presentation/widgets/intro_action_buttons.dart';
import 'package:portfolio_website/presentation/widgets/mobile/mobile_app_bar.dart';
import 'package:portfolio_website/presentation/widgets/personal_image.dart';
import 'package:portfolio_website/presentation/widgets/service_section.dart';
import 'package:portfolio_website/presentation/widgets/social_media_widget.dart';
import 'package:portfolio_website/presentation/widgets/stats_info_widget.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

late GlobalKey<ScaffoldState> _scaffoldKey;

class _MobileLayoutState extends State<MobileLayout> {
  @override
  void initState() {
    _scaffoldKey = GlobalKey<ScaffoldState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MobileAppBar(scaffoldKey: _scaffoldKey),
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
            Padding(
              padding: EdgeInsets.only(left: AppSizes.paddingXl_40),
              child: SvgPicture.asset(Assets.assetsImagesFlutterDev),
            ),
            SizedBox(height: AppSizes.spaceBetweenItems_32),
            SocialMediaWidget(mainAxisAlignment: MainAxisAlignment.center),
            SizedBox(height: AppSizes.spaceBetweenItems_40),
            IntroActionButtons(),
            SizedBox(height: AppSizes.spaceBetweenItems_50),
            StatsInfoWidget(),
            SizedBox(height: AppSizes.spaceBetweenItems_24),
            PersonalImagWidget(),
            SizedBox(height: AppSizes.spaceBetweenItems_100),
            ServicesSection(edgeInsetsGeometry: EdgeInsetsGeometry.zero),
            SizedBox(height: AppSizes.spaceBetweenItems_100),
            AboutMeSection(edgeInsetsGeometry: EdgeInsetsGeometry.zero),
            SizedBox(height: AppSizes.spaceBetweenItems_100),
            // to do Portfolio widget
            ContactMeMobileLayout(),
            SizedBox(height: AppSizes.spaceBetweenItems_100),
            BottomBarSection(),
          ],
        ),
      ),
    );
  }
}
