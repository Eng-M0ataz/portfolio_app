import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
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
      ],
    );
  }
}
