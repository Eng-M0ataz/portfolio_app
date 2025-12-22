import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/custom_elevated_button.dart';
import 'package:portfolio_website/core/widgets/elvated_button_custom_them.dart';

class IntroActionButtons extends StatefulWidget {
  const IntroActionButtons({super.key});

  @override
  State<IntroActionButtons> createState() => _IntroActionButtonsState();
}

class _IntroActionButtonsState extends State<IntroActionButtons> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppSizes.spaceBetweenItems_24,
      runSpacing: AppSizes.spaceBetweenItems_16,
      children: [
        CustomElevatedButton(
          onPressed: () {},
          child: Text(
            LocaleKeys.hire_me.tr(),
            style: AppTextStyles.medium_20(context),
          ),
        ),
        CustomElvatedButtonThem(
          child: CustomElevatedButton(
            onPressed: () {},
            child: Text(
              LocaleKeys.download_cv.tr(),
              style: AppTextStyles.medium_20(
                context,
              ).copyWith(color: AppColorsDark.grey_959),
            ),
          ),
        ),
      ],
    );
  }
}
