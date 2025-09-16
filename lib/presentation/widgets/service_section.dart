import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/presentation/widgets/section_header.dart';
import 'package:portfolio_website/presentation/widgets/services_grid_view.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.padding_80),
      child: Column(
        children: [
          SectionHeader(
            sectionName: LocaleKeys.services.tr(),
            description:
                'Lorem ipsum dolor sit amet consectetur. Imperdiet convallis blandit felis ligula aliquam',
          ),
          SizedBox(height: AppSizes.spaceBetweenItems_80),
          ServicesGridView(),
        ],
      ),
    );
  }
}
