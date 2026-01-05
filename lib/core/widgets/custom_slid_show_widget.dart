import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/routing_extensions.dart';
import 'package:portfolio_website/core/model/gallery_args.dart';
import 'package:portfolio_website/core/utils/constants/app_routes.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/carousel_navigation_arrows.dart';
import 'package:portfolio_website/core/widgets/custom_image_slide_show.dart';
import 'package:portfolio_website/domain/entity/project_entity.dart';

class CustomSlidShowWidget extends StatefulWidget {
  const CustomSlidShowWidget({super.key, required this.projectEntity});

  final ProjectEntity projectEntity;

  @override
  State<CustomSlidShowWidget> createState() => _CustomSlidShowWidgetState();
}

late CarouselSliderController _carouselSliderController;

class _CustomSlidShowWidgetState extends State<CustomSlidShowWidget> {
  @override
  void initState() {
    _carouselSliderController = CarouselSliderController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(color: AppColorsDark.black),
          child: CustomImageSlideShow(
            controller: _carouselSliderController,
            itemImagesList: widget.projectEntity.images,
          ),
        ),

        CarouselNavigationArrows(
          controller: _carouselSliderController,
          onTapLeft: () => _carouselSliderController.previousPage(),
          onTapRight: () => _carouselSliderController.nextPage(),
        ),
        Positioned(
          right: AppSizes.paddingLg_24,
          bottom: AppSizes.paddingLg_24,
          child: IconButton.filled(
            style: IconButton.styleFrom(
              backgroundColor: Colors.black45,
              iconSize: AppSizes.icon_20,
            ),
            onPressed: () {
              context.pushNamed(
                AppRoutes.galleryPreviewRoute,
                arguments: GalleryArgs(widget.projectEntity.images),
              );
            },
            icon: Icon(Icons.open_in_full, color: AppColorsDark.orange),
          ),
        ),
      ],
    );
  }
}
