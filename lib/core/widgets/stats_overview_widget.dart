import 'package:flutter/material.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/custom_divider.dart';
import 'package:portfolio_website/core/widgets/hover_container.dart';
import 'package:portfolio_website/core/widgets/status_overview_item.dart';

class StatsOverviewWidget extends StatelessWidget {
  const StatsOverviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDeskTop = context.isMobile;
    return HoverContainer(
      child: LayoutBuilder(
        builder: (context, constraints) => isDeskTop
            ? Column(
                spacing: AppSizes.spaceBetweenItems_12,
                children: [
                  StatusOverviewItem(number: 600, label: "Experiences"),
                  StatusOverviewItem(number: 30, label: "Project done"),
                  StatusOverviewItem(number: 10, label: "Happy Clients"),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  StatusOverviewItem(number: 600, label: "Experiences"),
                  CustomDivider(),
                  StatusOverviewItem(number: 30, label: "Project done"),
                  CustomDivider(),
                  StatusOverviewItem(number: 10, label: "Happy Clients"),
                ],
              ),
      ),
    );
  }
}
