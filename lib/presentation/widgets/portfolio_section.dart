import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/portfolio_tabs.dart';
import 'package:portfolio_website/presentation/widgets/mobile_and_tablet_portfolio_list_view.dart';
import 'package:portfolio_website/presentation/widgets/web/desktop_portfolio_grid_view.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  final List<String> list = const ['All', 'Mobile', 'Web', 'Desktop'];

  @override
  Widget build(BuildContext context) {
    final isDeskTop = context.isDeskTop;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: isDeskTop
          ? AppSizes.spaceBetweenItems_72
          : AppSizes.spaceBetweenItems_32,
      children: [
        Text(LocaleKeys.portfolio.tr(), style: AppTextStyles.bold_40(context)),
        PortfolioTaps(catList: list),
        isDeskTop
            ? DesktopPortfolioGridView()
            : MobileAndTabletPortfoliosListView(),
      ],
    );
  }
}
