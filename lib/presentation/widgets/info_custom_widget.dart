import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/presentation/widgets/info_item.dart';

class InfoCustomWidget extends StatelessWidget {
  const InfoCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizes.paddingLg_24),
      decoration: BoxDecoration(
        color: AppColorsDark.grey_1b,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd_8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InfoItem(number: "5+", text: "Experiences"),
          VerticalDivider(width: 30),
          InfoItem(number: "5+", text: "Project done"),
          VerticalDivider(width: 30),
          InfoItem(number: "5+", text: "Happy Clients"),
        ],
      ),
    );
  }
}
