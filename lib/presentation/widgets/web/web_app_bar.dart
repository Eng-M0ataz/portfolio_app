import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/widgets/custom_elevated_button.dart';
import 'package:portfolio_website/presentation/viewModel/home_event.dart';
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';

class WebCustomAppBar extends StatelessWidget {
  const WebCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<HomeViewModel>();
    final email = viewModel.state.profileData!.personalInfo.email;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          Assets.assetsImagesLogoDesign,
          cacheHeight: 80,
          cacheWidth: 80,
        ),
        CustomElevatedButton(
          onPressed: () {
            viewModel.doIntent(OpenEmailEvent(email: email));
          },
          child: Text(
            LocaleKeys.hire_me.tr(),
            style: AppTextStyles.medium_20(context),
          ),
        ),
      ],
    );
  }
}
