import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/widgets/custom_elevated_button.dart';
import 'package:portfolio_website/core/widgets/taps_widget.dart';

class WebCustomAppBar extends StatelessWidget {
  const WebCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(Assets.assetsImagesLOGO),
        Expanded(child: TapsWidget()),
        CustomElevatedButton(
          onPressed: () {},
          child: Text(LocaleKeys.hire_me.tr()),
        ),
      ],
    );
  }
}
