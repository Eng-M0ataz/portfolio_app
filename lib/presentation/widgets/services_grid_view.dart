import 'package:flutter/material.dart';
import 'package:portfolio_website/core/helpers/resposive_helper.dart';
import 'package:portfolio_website/core/utils/Constants/sizes.dart';
import 'package:portfolio_website/presentation/widgets/services_grid_view_item.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = context.isDeskTop;
    return Wrap(
      spacing: isDesktop
          ? AppSizes.spaceBetweenItems_24
          : AppSizes.spaceBetweenItems_16,
      runSpacing: isDesktop
          ? AppSizes.spaceBetweenItems_40
          : AppSizes.spaceBetweenItems_24,
      children: [
        ServicesGridViewItemm(),
        ServicesGridViewItemm(),
        ServicesGridViewItemm(),
      ],
    );
  }
}
