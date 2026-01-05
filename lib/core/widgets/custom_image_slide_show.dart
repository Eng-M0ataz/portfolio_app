import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
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
    return Padding(
      padding: context.isDeskTop
          ? EdgeInsets.symmetric(horizontal: AppSizes.paddingXl_40)
          : EdgeInsets.symmetric(horizontal: AppSizes.paddingXxl_50),
      child: CarouselSlider.builder(
        itemCount: itemImagesList.length,
        carouselController: controller,
        options: CarouselOptions(
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          viewportFraction: context.isMobile ? 0.8 : 0.4,
          aspectRatio: context.isMobile ? 1.2 : 2.5,
        ),
        itemBuilder: (context, index, realIndex) {
          final imagePath = itemImagesList[index];

          return Hero(
            tag: imagePath,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusXl_16),
              child: CachedNetworkImage(
                imageUrl: imagePath,
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          );
        },
      ),
    );
  }
}
