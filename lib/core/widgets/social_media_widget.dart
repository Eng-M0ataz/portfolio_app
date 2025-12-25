import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/social_media_item.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      spacing: AppSizes.spaceBetweenItems_16,
      children: [
        SocialMediaItem(icon: FontAwesomeIcons.linkedin, onPressed: () {}),
        SocialMediaItem(icon: FontAwesomeIcons.github, onPressed: () {}),
        SocialMediaItem(icon: FontAwesomeIcons.whatsapp, onPressed: () {}),
      ],
    );
  }
}
