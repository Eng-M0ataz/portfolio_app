import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/presentation/widgets/intro_widget.dart';
import 'package:portfolio_website/presentation/widgets/personal_image.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.padding_80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IntroWidget(),
          SizedBox(height: AppSizes.spaceBetweenItems_130),
          PersonalImagWidget(),
        ],
      ),
    );
  }
}
