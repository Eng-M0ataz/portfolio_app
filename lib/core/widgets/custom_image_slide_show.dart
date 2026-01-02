import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';

class CustomImageSlideShow extends StatelessWidget {
  final List<String> itemImagesList;
  final CarouselSliderController controller;

  const CustomImageSlideShow({
    super.key,
    required this.itemImagesList,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: controller,
      options: CarouselOptions(
        disableCenter: true,
        enableInfiniteScroll: false,
        scrollPhysics: BouncingScrollPhysics(),
      ),
      items: itemImagesList.map((imagePath) {
        return FittedBox(
          fit: BoxFit.scaleDown,
          child: CachedNetworkImage(
            imageUrl: imagePath,
            fit: BoxFit.fill,
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
