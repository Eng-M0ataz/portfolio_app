import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/functions/scroll_to_section.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/widgets/custom_elevated_button.dart';
import 'package:portfolio_website/core/widgets/taps_widget.dart';

class WebCustomAppBar extends StatelessWidget {
  const WebCustomAppBar({super.key, required this.globalKeysList});

  final List<GlobalKey> globalKeysList;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          Assets.assetsImagesLogoDesign,
          cacheHeight: 80,
          cacheWidth: 80,
        ),
        Expanded(
          child: TapsWidget(
            onTapItem: (index) => scrollToSection(globalKeysList[index]),
          ),
        ),
        CustomElevatedButton(
          onPressed: () {},
          child: Text(LocaleKeys.hire_me.tr()),
        ),
      ],
    );
  }
}
