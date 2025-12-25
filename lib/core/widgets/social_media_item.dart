import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';

class SocialMediaItem extends StatefulWidget {
  const SocialMediaItem({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final IconData icon;
  final VoidCallback onPressed;

  @override
  State<SocialMediaItem> createState() => _SocialMediaItemState();
}

bool isHovering = false;

class _SocialMediaItemState extends State<SocialMediaItem> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovering = true),
      onExit: (event) => setState(() => isHovering = false),
      child: AnimatedScale(
        scale: isHovering ? 1.2 : 1.0,
        duration: Duration(milliseconds: 200),
        child: Container(
          width: AppSizes.icon_40,
          height: AppSizes.icon_40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColorsDark.grey_252525,
            border: isHovering
                ? Border.all(color: AppColorsDark.orange, width: 1)
                : Border.all(color: AppColorsDark.grey_959, width: 1),
          ),
          child: Center(
            child: FaIcon(
              widget.icon,
              size: AppSizes.icon_20,
              color: AppColorsDark.greyDFDF,
            ),
          ),
        ),
      ),
    );
  }
}
