import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/services_grid_view_item.dart';
import 'package:portfolio_website/domain/entity/service.dart';

class ServicesGridView extends StatelessWidget {
  const ServicesGridView({super.key, required this.servicesList});
  final List<ServicesItemEntity> servicesList;
  @override
  Widget build(BuildContext context) {
    final isDesktop = context.isDeskTop;
    final isTablet = context.isTablet;
    return MasonryGridView.count(
      crossAxisCount: isDesktop
          ? 4
          : isTablet
          ? 3
          : 2,
      mainAxisSpacing: isDesktop
          ? AppSizes.paddingXl_40
          : isTablet
          ? AppSizes.paddingXl_40
          : AppSizes.paddingMd_16,
      crossAxisSpacing: AppSizes.paddingXl_40,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: servicesList.length,
      itemBuilder: (context, index) {
        return ServicesGridViewItem(service: servicesList[index]);
      },
    );
  }
}
