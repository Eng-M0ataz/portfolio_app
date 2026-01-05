import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/functions/navigate_to_sections.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/contact_info.dart';
import 'package:portfolio_website/core/widgets/navigation_links.dart';
import 'package:portfolio_website/core/widgets/social_media_widget.dart';

class BottomBarSection extends StatelessWidget {
  const BottomBarSection({
    super.key,
    required this.padding,
    required this.globalKeysList,
  });

  final EdgeInsetsGeometry padding;
  final List<GlobalKey> globalKeysList;

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = context.isDeskTop;

    final double verticalSpacing = isDesktop
        ? AppSizes.spaceBetweenItems_50
        : AppSizes.spaceBetweenItems_24;

    final Widget verticalSpace = SizedBox(height: verticalSpacing);

    return Container(
      margin: padding,
      padding: EdgeInsets.all(verticalSpacing),
      decoration: const BoxDecoration(color: AppColorsDark.grey_252525),
      child: Column(
        children: [
          Image.asset(
            Assets.assetsImagesLogoDesign,
            cacheHeight: 80,
            cacheWidth: 80,
          ),
          verticalSpace,
          NavigationLinks(
            isDesktop: isDesktop,
            onTapItem: (index) {
              navigateToSections(
                context: context,
                globalKeyList: globalKeysList,
                index: index,
              );
            },
          ),
          verticalSpace,
          const SocialMediaWidget(mainAxisAlignment: MainAxisAlignment.center),
          verticalSpace,
          ContactInfo(isDesktop: isDesktop),
        ],
      ),
    );
  }
}
