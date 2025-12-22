import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/custom_elevated_button.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.paddingLg_24,
        vertical: AppSizes.paddingXl_40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
          SvgPicture.asset(Assets.assetsImagesLOGO),
          CustomElevatedButton(
            onPressed: () {},
            child: Text(
              LocaleKeys.hire_me.tr(),
              style: AppTextStyles.medium_16(context),
            ),
          ),
        ],
      ),
    );
  }
}
