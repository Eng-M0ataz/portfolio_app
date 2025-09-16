import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/presentation/widgets/app_bar_text_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.padding_80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(Assets.assetsImagesLOGO),
          Row(
            spacing: AppSizes.spaceBetweenItems_56,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppBarTextWidget(
                text: LocaleKeys.home.tr(),
                isHome: true,
                onTap: () {},
              ),
              AppBarTextWidget(text: LocaleKeys.services.tr(), onTap: () {}),
              AppBarTextWidget(text: LocaleKeys.about_me.tr(), onTap: () {}),
              AppBarTextWidget(text: LocaleKeys.portfolio.tr(), onTap: () {}),
              AppBarTextWidget(text: LocaleKeys.contact_me.tr(), onTap: () {}),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(LocaleKeys.hire_me.tr()),
          ),
        ],
      ),
    );
  }
}
