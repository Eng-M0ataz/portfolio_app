import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/social_media_item.dart';
import 'package:portfolio_website/presentation/viewModel/home_event.dart';
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    final personalInfo = context
        .read<HomeViewModel>()
        .state
        .profileData!
        .personalInfo;
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      spacing: AppSizes.spaceBetweenItems_16,
      children: [
        SocialMediaItem(
          icon: FontAwesomeIcons.linkedin,
          onPressed: () async {
            await context.read<HomeViewModel>().doIntent(
              OpenUrlEvent(url: personalInfo.linkedinLink),
            );
          },
        ),
        SocialMediaItem(
          icon: FontAwesomeIcons.github,
          onPressed: () async {
            await context.read<HomeViewModel>().doIntent(
              OpenUrlEvent(url: personalInfo.githubLink),
            );
          },
        ),
        SocialMediaItem(
          icon: FontAwesomeIcons.whatsapp,
          onPressed: () async {
            await context.read<HomeViewModel>().doIntent(OpenWhatsAppEvent());
          },
        ),
      ],
    );
  }
}
