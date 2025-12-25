import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';

class AppBarTextWidget extends StatefulWidget {
  const AppBarTextWidget({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;

  @override
  State<AppBarTextWidget> createState() => _AppBarTextWidgetState();
}

class _AppBarTextWidgetState extends State<AppBarTextWidget> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovering = true),
      onExit: (event) => setState(() => isHovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 150),
          style: AppTextStyles.medium_20(context).copyWith(
            color: isHovering ? AppColorsDark.orange : AppColorsDark.grey_959,
          ),
          child: Text(widget.text),
        ),
      ),
    );
  }
}
