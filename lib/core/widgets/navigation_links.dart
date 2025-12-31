import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/app_bar_text_widget.dart';

class NavigationLinks extends StatelessWidget {
  const NavigationLinks({super.key, required this.isDesktop,required this.onTapItem});
  final Function(int index) onTapItem;

  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      spacing: isDesktop
          ? AppSizes.spaceBetweenItems_50
          : AppSizes.spaceBetweenItems_24,
      runSpacing: AppSizes.spaceBetweenItems_16,
      children: [
        AppBarTextWidget(text: LocaleKeys.home.tr(), onTap: () => onTapItem(0),),
        AppBarTextWidget(text: LocaleKeys.services.tr(), onTap: () => onTapItem(1),),
        AppBarTextWidget(text: LocaleKeys.about_me.tr(), onTap: () => onTapItem(2),),
        AppBarTextWidget(text: LocaleKeys.portfolio.tr(), onTap: () => onTapItem(3),),
        AppBarTextWidget(text: LocaleKeys.contact_me.tr(), onTap: () => onTapItem(4),),
      ],
    );
  }
}
