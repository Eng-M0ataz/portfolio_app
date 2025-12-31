import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/portfolio_card.dart';
import 'package:portfolio_website/domain/entity/project_entity.dart';
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';

class DesktopPortfolioGridView extends StatelessWidget {
  const DesktopPortfolioGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProjectEntity> projectsList = context
        .read<HomeViewModel>()
        .state
        .profileData!
        .projects;

    return MasonryGridView.count(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.padding_80),
      crossAxisCount: 3,
      mainAxisSpacing: AppSizes.paddingMd_16,
      crossAxisSpacing: AppSizes.paddingLg_24,

      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: projectsList.length,
      itemBuilder: (context, index) {
        return PortfolioCard(projectEntity: projectsList[index]);
      },
    );
  }
}
