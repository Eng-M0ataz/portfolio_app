import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/project_detail_dialog.dart';
import 'package:portfolio_website/domain/entity/project_entity.dart';

class PortfolioCard extends StatelessWidget {
  final ProjectEntity projectEntity;

  const PortfolioCard({super.key, required this.projectEntity});

  @override
  Widget build(BuildContext context) {
    bool isDesktop=context.isDeskTop;
    return InkWell(
      onTap: () => _showProjectDetails(context),
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusXxl_24),
      child: AspectRatio(
        aspectRatio:isDesktop?415/473 :284 / 338,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusXxl_24),
          ),
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppSizes.borderRadiusXxl_24),
                    topRight: Radius.circular(AppSizes.borderRadiusXxl_24),
                  ),
                  child: CachedNetworkImage(
                    width: double.infinity,
                    height: double.infinity,
                    imageUrl: projectEntity.thumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 54,
                decoration: BoxDecoration(
                  color: AppColorsDark.grey_252525,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppSizes.borderRadiusXxl_24),
                    bottomRight: Radius.circular(AppSizes.borderRadiusXxl_24),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: AppSizes.paddingMd_16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      projectEntity.projectName,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: AppColorsDark.greyc6C6,
                      ),
                    ),
                    Text(
                      projectEntity.category,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: AppColorsDark.greyc6C6,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _showProjectDetails(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true, // Allows clicking outside to close
      builder: (context) {
        return ProjectDetailDialog(projectEntity: projectEntity);
      },
    );
  }
}
