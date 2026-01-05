import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/core/functions/do_animation.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/personal_image.dart';
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';
import 'package:portfolio_website/presentation/widgets/web/web_app_bar.dart';
import 'package:portfolio_website/presentation/widgets/web/web_intro_widget.dart';

class WebHeroIntroSection extends StatefulWidget {
  const WebHeroIntroSection({super.key, required this.homeKey});

  final GlobalKey homeKey;

  @override
  State<WebHeroIntroSection> createState() => _WebHeroIntroSectionState();
}

class _WebHeroIntroSectionState extends State<WebHeroIntroSection>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final profileData = context.read<HomeViewModel>().state.profileData;

    return Padding(
      key: widget.homeKey,
      padding: const EdgeInsets.only(
        left: AppSizes.padding_80,
        right: AppSizes.padding_80,
        top: AppSizes.paddingXl_40,
        bottom: AppSizes.padding_75,
      ),
      child: Column(
        children: [
          WebCustomAppBar(),
          SizedBox(height: AppSizes.spaceBetweenItems_130),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(child: WebIntroWidget(profileData: profileData!)),
              Flexible(child: PersonalImageWidget()),
            ],
          ),
        ],
      ),
    ).applyMyStyle();
  }

  @override
  bool get wantKeepAlive => true;
}
