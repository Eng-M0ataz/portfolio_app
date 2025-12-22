import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';

class HoverContainer extends StatefulWidget {
  final Widget child;
  final double? width;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final double borderRadius;

  const HoverContainer({
    super.key,
    required this.child,
    this.width,
    this.padding = const EdgeInsets.all(AppSizes.paddingLg_24),
    this.margin = EdgeInsets.zero,
    this.borderRadius = AppSizes.borderRadiusMd_8,
  });

  @override
  State<HoverContainer> createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        curve: Curves.easeOut,
        width: widget.width,
        margin: widget.margin,
        padding: widget.padding,
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: AppColorsDark.grey_1b,
          boxShadow: isHovered ? AppColorsDark.defaultBoxShadowList : null,
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        child: widget.child,
      ),
    );
  }
}
