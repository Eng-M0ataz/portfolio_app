import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/presentation/widgets/intro_widget.dart';
import 'package:portfolio_website/presentation/widgets/personal_image.dart';
import 'package:portfolio_website/presentation/widgets/taps_widget.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: SizedBox(
      //   width: 150,
      //   child: IconButton(onPressed: () {}, icon: Icon(Icons.abc)),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              SvgPicture.asset(Assets.assetsImagesLOGO),
              SizedBox(height: AppSizes.spaceBetweenItems_16),
              TapsWidget(),
              SizedBox(height: AppSizes.spaceBetweenItems_16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(child: const IntroWidget()),
                  Flexible(child: PersonalImagWidget()),
                ],
              ),
              SizedBox(height: AppSizes.spaceBetweenItems_16),
            ],
          ),
        ),
      ),
    );
  }
}
