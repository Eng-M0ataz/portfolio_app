import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
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
      padding: EdgeInsets.all(AppSizes.paddingLg_24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            projectEntity.projectName,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              color: AppColorsDark.orange,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBetweenItems_4),
          Text(
            projectEntity.category.toUpperCase(),
            style: Theme.of(
              context,
            ).textTheme.labelLarge!.copyWith(color: AppColorsDark.white),
          ),
          const SizedBox(height: AppSizes.spaceBetweenItems_16),
          Text(
            LocaleKeys.about_the_project.tr(),
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(color: AppColorsDark.white),
          ),
          const SizedBox(height: AppSizes.spaceBetweenItems_8),
          Text(
            projectEntity.description,
            style: AppTextStyles.medium_16(
              context,
            ).copyWith(color: AppColorsDark.greyc6C6),
          ),
          const SizedBox(height: AppSizes.spaceBetweenItems_24),

          Row(
            children: [
              Visibility(
                visible: false,
                child: Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      context.read<HomeViewModel>().doIntent(
                        OpenUrlEvent(url: projectEntity.demoLink),
                      );
                    },
                    icon: const Icon(Icons.launch),
                    label: Text(
                      LocaleKeys.live_preview.tr(),
                      style: AppTextStyles.bold_16(
                        context,
                      ).copyWith(color: AppColorsDark.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: AppSizes.spaceBetweenItems_12),
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
        ],
      ),
    );
  }
}
