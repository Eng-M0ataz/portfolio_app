import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/custom_elevated_button.dart';
import 'package:portfolio_website/core/widgets/elevated_button_custom_them.dart';
import 'package:portfolio_website/presentation/viewModel/home_event.dart';
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';

class IntroActionButtons extends StatefulWidget {
  const IntroActionButtons({super.key});

  @override
  State<IntroActionButtons> createState() => _IntroActionButtonsState();
}

class _IntroActionButtonsState extends State<IntroActionButtons> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<HomeViewModel>();

    return Wrap(
      spacing: AppSizes.spaceBetweenItems_24,
      runSpacing: AppSizes.spaceBetweenItems_16,
      children: [
        CustomElevatedButton(
          onPressed: () {
            // Scroll to contact section or handle hire me action
          },
          child: Text(
            LocaleKeys.hire_me.tr(),
            style: AppTextStyles.medium_20(context),
          ),
        ),
        CustomElevatedButtonThem(
          child: CustomElevatedButton(
            onPressed: () async {
              await viewModel.doIntent(
                DownloadCvEvent(),
              );
            },
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
