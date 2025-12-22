import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/presentation/widgets/section_header.dart';
import 'package:portfolio_website/presentation/widgets/services_grid_view.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({
    super.key,
    this.edgeInsetsGeometry = const EdgeInsets.symmetric(
      horizontal: AppSizes.padding_80,
    ),
  });
  final EdgeInsetsGeometry edgeInsetsGeometry;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: edgeInsetsGeometry,
      child: Column(
        children: [
          SectionHeader(
            sectionName: LocaleKeys.services.tr(),
            description:
                'Lorem ipsum dolor sit amet consectetur. Imperdiet convallis blandit felis ligula aliquam',
          ),
          SizedBox(height: AppSizes.spaceBetweenItems_80),
          ServicesWidget(),
        ],
      ),
    );
  }
}
