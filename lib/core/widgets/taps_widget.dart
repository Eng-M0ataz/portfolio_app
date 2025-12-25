import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/widgets/app_bar_text_widget.dart';

class TapsWidget extends StatelessWidget {
  const TapsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: context.isDeskTop ? 40 : 20,
      children: [
        AppBarTextWidget(text: LocaleKeys.home.tr(), onTap: () {}),
        AppBarTextWidget(text: LocaleKeys.services.tr(), onTap: () {}),
        AppBarTextWidget(text: LocaleKeys.about_me.tr(), onTap: () {}),
        AppBarTextWidget(text: LocaleKeys.portfolio.tr(), onTap: () {}),
        AppBarTextWidget(text: LocaleKeys.contact_me.tr(), onTap: () {}),
      ],
    );
  }
}
