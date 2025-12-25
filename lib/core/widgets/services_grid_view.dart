import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/services_grid_view_item.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = context.isDeskTop;
    final isTablet = context.isTablet;
    return MasonryGridView.count(
      crossAxisCount: isDesktop
          ? 3
          : isTablet
          ? 2
          : 1,
      mainAxisSpacing: AppSizes.paddingXl_40,
      crossAxisSpacing: AppSizes.paddingXl_40,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ServicesGridViewItem();
      },
    );
  }
}
