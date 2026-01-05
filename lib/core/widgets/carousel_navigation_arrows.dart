import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';

class CarouselNavigationArrows extends StatelessWidget {
  final CarouselSliderController? controller;
  final VoidCallback? onTapRight, onTapLeft;

  const CarouselNavigationArrows({
    super.key,
    this.controller,
    required this.onTapLeft,
    required this.onTapRight,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      right: AppSizes.paddingLg_24,
      left: AppSizes.paddingLg_24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton.filled(
            style: IconButton.styleFrom(
              backgroundColor: Colors.black45,
              iconSize: AppSizes.icon_20,
            ),
            onPressed: onTapLeft,
            icon: const Icon(Icons.arrow_back, color: AppColorsDark.orange),
          ),
          IconButton.filled(
            style: IconButton.styleFrom(
              backgroundColor: Colors.black45,
              iconSize: AppSizes.icon_20,
            ),
            onPressed: onTapRight,
            icon: const Icon(Icons.arrow_forward, color: AppColorsDark.orange),
          ),
        ],
      ),
    );
  }
}
