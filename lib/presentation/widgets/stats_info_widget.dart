import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/resposive_helper.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/hover_container.dart';
import 'package:portfolio_website/presentation/widgets/info_item.dart';

class StatsInfoWidget extends StatelessWidget {
  const StatsInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDeskTop = context.isDeskTop;
    return HoverContainer(
      margin: EdgeInsets.symmetric(
        horizontal: isDeskTop ? AppSizes.padding_70 : AppSizes.paddingMd_16,
      ),
      child: Wrap(
        runSpacing: AppSizes.spaceBetweenItems_12,
        alignment: WrapAlignment.center,
        children: [
          InfoItem(number: 600, text: "Experiences"),
          CustomDivider(),
          InfoItem(number: 30, text: "Project done"),
          CustomDivider(),
          InfoItem(number: 10, text: "Happy Clients"),
        ],
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: VerticalDivider(
        color: AppColorsDark.grey_959595,
        thickness: 1,
        width: 16,
      ),
    );
  }
}
