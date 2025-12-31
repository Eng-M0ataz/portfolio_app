import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/custom_image_slide_show.dart';
import 'package:portfolio_website/domain/entity/project_entity.dart';

class ProjectDetailDialog extends StatelessWidget {
  final ProjectEntity projectEntity;

  const ProjectDetailDialog({super.key, required this.projectEntity});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColorsDark.grey_252525,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusXxl_24),
      ),
      clipBehavior: Clip.antiAlias,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 800, maxHeight: 950),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withValues(alpha: .4),
                          BlendMode.darken,
                        ),
                        image: NetworkImage(projectEntity.thumbnail),
                      ),
                    ),
                    height: 400,
                    width: double.infinity,

                    child: CustomImageSlideShow(
                      itemImagesList: projectEntity.images,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(AppSizes.paddingLg_24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          projectEntity.projectName,
                          style: Theme.of(context).textTheme.headlineMedium!
                              .copyWith(
                                color: AppColorsDark.orange,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: AppSizes.spaceBetweenItems_4),
                        Text(
                          projectEntity.category.toUpperCase(),
                          style: Theme.of(context).textTheme.labelLarge!
                              .copyWith(color: AppColorsDark.white),
                        ),
                        const SizedBox(height: AppSizes.spaceBetweenItems_16),
                        // Description
                        Text(
                          LocaleKeys.about_the_project.tr(),
                          style: Theme.of(context).textTheme.titleMedium!
                              .copyWith(color: Colors.white70),
                        ),
                        const SizedBox(height: AppSizes.spaceBetweenItems_8),
                        Text(
                          "This project is a comprehensive solution designed to... [Add projectEntity.description here]" *
                              10,
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(
                                color: AppColorsDark.greyc6C6,
                                height: 1.5,
                              ),
                        ),
                        const SizedBox(height: AppSizes.spaceBetweenItems_24),

                        // --- ACTION BUTTONS ---
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColorsDark.orange,
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: AppSizes.paddingMd_16,
                                  ),
                                ),
                                onPressed: () {}, // Link to Live Demo
                                icon: const Icon(Icons.launch),
                                label: Text(
                                  LocaleKeys.live_preview.tr(),
                                  style: AppTextStyles.bold_16(
                                    context,
                                  ).copyWith(color: AppColorsDark.white),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: AppSizes.spaceBetweenItems_12,
                            ),
                            Expanded(
                              child: OutlinedButton.icon(
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                    color: AppColorsDark.greyc6C6,
                                  ),
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: AppSizes.paddingMd_16,
                                  ),
                                ),
                                onPressed: () {}, // Link to GitHub
                                icon: const Icon(Icons.code),
                                label: Text(
                                  LocaleKeys.view_code.tr(),
                                  style: AppTextStyles.bold_16(
                                    context,
                                  ).copyWith(color: AppColorsDark.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // --- TOP CLOSE BUTTON ---
            Positioned(
              top: AppSizes.paddingSm_12,
              right: AppSizes.paddingSm_12,
              child: IconButton.filled(
                style: IconButton.styleFrom(
                  backgroundColor: Colors.black45,
                  iconSize: AppSizes.icon_20,
                ),
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
