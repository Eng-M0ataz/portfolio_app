import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/custom_slid_show_widget.dart';
import 'package:portfolio_website/core/widgets/project_details_widget.dart';
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
      child: Scrollbar(
        thumbVisibility: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSlidShowWidget(projectEntity: projectEntity),
              ProjectDetailsWidget(projectEntity: projectEntity),
            ],
          ),
        ),
      ),
    );
  }
}
