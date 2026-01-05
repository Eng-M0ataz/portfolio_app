import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/model/gallery_args.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/carousel_navigation_arrows.dart';
import 'package:portfolio_website/core/widgets/gallery_counter.dart';

class GalleryPreviewScreen extends StatefulWidget {
  final GalleryArgs args;

  const GalleryPreviewScreen({super.key, required this.args});

  @override
  State<GalleryPreviewScreen> createState() => _GalleryPreviewScreenState();
}

class _GalleryPreviewScreenState extends State<GalleryPreviewScreen> {
  late PageController pageController;
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.args.index;
    pageController = PageController(initialPage: widget.args.index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PhotoViewGallery.builder(
            itemCount: widget.args.images.length,
            pageController: pageController,
            onPageChanged: (index) => setState(() => currentIndex = index),
            scrollPhysics: const BouncingScrollPhysics(),
            backgroundDecoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            builder: (context, index) {
              return PhotoViewGalleryPageOptions(
                heroAttributes: PhotoViewHeroAttributes(
                  tag: widget.args.images[index],
                ),
                imageProvider: CachedNetworkImageProvider(
                  widget.args.images[index],
                ),
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.covered * 2,
              );
            },
          ),
          Positioned(
            top: 10,
            right: 10,
            child: IconButton(
              icon: Icon(Icons.close, color: AppColorsDark.orange, size: AppSizes.icon_20),
              onPressed: () => Navigator.pop(context),
            ),
          ),

          CarouselNavigationArrows(
            onTapRight: () => pageController.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            ),
            onTapLeft: () {
              pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
          ),

          Positioned(
           bottom: 5,
            child: GalleryCounter(
              currentIndex: currentIndex,
              totalCount: widget.args.images.length,
            ),
          ),
        ],
      ),
    );
  }
}
