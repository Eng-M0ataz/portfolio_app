import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/custom_divider.dart';
import 'package:portfolio_website/core/widgets/hover_container.dart';
import 'package:portfolio_website/core/widgets/status_overview_item.dart';
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';

class StatsOverviewWidget extends StatelessWidget {
  const StatsOverviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final profileData = context.read<HomeViewModel>().state.profileData;
    final stats = profileData?.stats;

    final isDeskTop = context.isMobile;
    return HoverContainer(
      child: LayoutBuilder(
        builder: (context, constraints) => isDeskTop
            ? Column(
                spacing: AppSizes.spaceBetweenItems_12,
                children: [
                  StatusOverviewItem(
                    number: stats?.experienceYears ?? 0,
                    label: "Experiences",
                  ),
                  StatusOverviewItem(
                    number: stats?.projectsNumber ?? 0,
                    label: "Project done",
                  ),
                  StatusOverviewItem(
                    number: stats?.happyClients ?? 0,
                    label: "Happy Clients",
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  StatusOverviewItem(
                    number: stats?.experienceYears ?? 0,
                    label: "Experiences",
                  ),
                  CustomDivider(),
                  StatusOverviewItem(
                    number: stats?.projectsNumber ?? 0,
                    label: "Project done",
                  ),
                  CustomDivider(),
                  StatusOverviewItem(
                    number: stats?.happyClients ?? 0,
                    label: "Happy Clients",
                  ),
                ],
              ),
      ),
    );
  }
}
