import 'package:flutter/material.dart';
import 'package:portfolio_website/core/functions/do_animation.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/personal_image.dart';
import 'package:portfolio_website/core/widgets/stats_overview_widget.dart';
import 'package:portfolio_website/presentation/widgets/tablet/intro_widget.dart';

class TabletHeroIntroSection extends StatefulWidget {
  const TabletHeroIntroSection({
    super.key,
    required this.padding,
    required this.globalKeysList,
  });

  final List<GlobalKey> globalKeysList;

  final EdgeInsetsGeometry padding;

  @override
  State<TabletHeroIntroSection> createState() => _TabletHeroIntroSectionState();
}

class _TabletHeroIntroSectionState extends State<TabletHeroIntroSection>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: widget.padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Assets.assetsImagesLogoDesign,
            cacheHeight: 80,
            cacheWidth: 80,
          ),
          const SizedBox(height: AppSizes.spaceBetweenItems_32),
          // TabletAppBar(
          //   onTapItem: (index) {
          //     navigateToSections(
          //       context: context,
          //       globalKeyList: widget.globalKeysList,
          //       index: index,
          //     );
          //   },
          // ),
          const SizedBox(height: AppSizes.spaceBetweenItems_32),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Flexible(child: IntroWidget()),
              Flexible(child: PersonalImageWidget()),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBetweenItems_32),
          const StatsOverviewWidget(),
        ],
      ),
    ).applyMyStyle();
  }

  @override
  bool get wantKeepAlive => true;
}
