import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/widgets/portfolio_card.dart';

import '../../core/utils/constants/app_assets.dart';
import '../../core/utils/constants/sizes.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});
  final List<String> items = const [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.padding_80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            LocaleKeys.portfolio.tr(),
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: AppSizes.spaceBetweenItems_40),

          DefaultTabController(
            length: items.length,
            initialIndex: 0,

            child: Row(children: items.map((item) => Text(item)).toList()),
          ),

          SizedBox(height: AppSizes.spaceBetweenItems_72),

          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: AppSizes.spaceBetweenItems_24,
              mainAxisSpacing: AppSizes.spaceBetweenItems_24,
              childAspectRatio: 415 / 473,
            ),
            itemCount: 6,
            itemBuilder: (context, index) {
              return PortfolioCard(
                imagePath: Assets.assetsImagesLOGO,
                projectName: LocaleKeys.name_project.tr(),
                category: LocaleKeys.categories.tr(),
              );
            },
          ),
        ],
      ),
    );
  }
}

Widget customElevatedButton({
  required void Function() onPress,
  Color? backColor,
  Color? forColor,
  required String title,
  required double height,

  required BuildContext context,
}) {
  return SizedBox(
    height: height,

    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backColor ?? AppColorsDark.grey_252525,
        foregroundColor: AppColorsDark.greyc6C6,
      ),
      onPressed: onPress,
      child: Text(title, style: Theme.of(context).textTheme.labelLarge),
    ),
  );
}
