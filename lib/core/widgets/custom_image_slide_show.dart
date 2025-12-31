import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';

class CustomImageSlideShow extends StatelessWidget {
  final List<String> itemImagesList;

  const CustomImageSlideShow({super.key, required this.itemImagesList});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: AppColorsDark.orange,
      indicatorBackgroundColor: Colors.white24,
      indicatorRadius: 4,
      isLoop: true,
      children: itemImagesList.map((imagePath) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg_12),
          ),
          clipBehavior: Clip.antiAlias,
          child: CachedNetworkImage(
            imageUrl: imagePath,
            fit: BoxFit.contain,
            errorWidget: (context, url, error) => Container(
              color: Colors.grey[900],
              child: const Icon(
                Icons.broken_image,
                color: Colors.white24,
                size: AppSizes.icon_24,
              ),
            ),
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
          ),
        );
      }).toList(),
    );
  }
}
