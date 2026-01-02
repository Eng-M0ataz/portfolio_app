import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/portfolio_card.dart';
import 'package:portfolio_website/domain/entity/project_entity.dart';
import 'package:portfolio_website/presentation/viewModel/home_state.dart';
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';

class MobileAndTabletPortfoliosListView extends StatelessWidget {
  const MobileAndTabletPortfoliosListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewModel, HomeState>(
      builder: (context, state) {
        final List<ProjectEntity> projectsList =
            state.filteredProjects.isNotEmpty
            ? state.filteredProjects
            : (state.profileData!.projects);
        return SizedBox(
          height: 338,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.paddingLg_24),
            separatorBuilder: (context, index) =>
                SizedBox(width: AppSizes.paddingMd_16),
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: projectsList.length,
            itemBuilder: (context, index) =>
                PortfolioCard(projectEntity: projectsList[index]),
          ),
        );
      },
    );
  }
}
