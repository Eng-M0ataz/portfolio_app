import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/elevated_button_custom_them.dart';
import 'package:portfolio_website/domain/entity/project_entity.dart';
import 'package:portfolio_website/presentation/viewModel/home_event.dart';
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';

class ProjectDetailsWidget extends StatelessWidget {
  const ProjectDetailsWidget({super.key, required this.projectEntity});

  final ProjectEntity projectEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.paddingLg_24,vertical: AppSizes.paddingLg_24 ),
      child: Column(
        spacing: context.isDeskTop ? AppSizes.spaceBetweenItems_48: AppSizes.paddingMd_16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            projectEntity.projectName,
            style: AppTextStyles.bold_30(
              context,
            ).copyWith(color: AppColorsDark.orange),
          ),

          Text(
            projectEntity.description,
            style: AppTextStyles.medium_20(
              context,
            ).copyWith(color: AppColorsDark.greyc6C6),
          ),

          Center(
            child: CustomElevatedButtonThem(
              child: ElevatedButton.icon(
                onPressed: () {
                  context.read<HomeViewModel>().doIntent(
                    OpenUrlEvent(url: projectEntity.githubLink),
                  );
                },
                icon: const Icon(Icons.code, color: AppColorsDark.white),
                label: Text(
                  LocaleKeys.view_code.tr(),
                  style: AppTextStyles.bold_16(
                    context,
                  ).copyWith(color: AppColorsDark.white),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
