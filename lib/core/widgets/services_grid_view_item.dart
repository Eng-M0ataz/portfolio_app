import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/hover_container.dart';
import 'package:portfolio_website/domain/entity/service.dart';

class ServicesGridViewItem extends StatelessWidget {
  const ServicesGridViewItem({super.key, required this.service});
  final ServicesItemEntity service;

  @override
  Widget build(BuildContext context) {
    return HoverContainer(
      padding: const EdgeInsets.all(AppSizes.paddingLg_24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CachedNetworkImage(
            imageUrl: service.photo,
            errorWidget: (context, url, error) => const Icon(Icons.error),
            placeholder: (context, url) => const CircularProgressIndicator(),
          ),
          const SizedBox(height: AppSizes.spaceBetweenItems_16),
          Text(
            service.name,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.bold_24(
              context,
            ).copyWith(color: AppColorsDark.orange),
          ),
          const SizedBox(height: AppSizes.spaceBetweenItems_8),
          Text(
            service.description,
            textAlign: TextAlign.center,
            maxLines: 10,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.medium_20(
              context,
            ).copyWith(color: AppColorsDark.grey_5757),
          ),
        ],
      ),
    );
  }
}
