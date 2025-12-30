import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/section_header.dart';
import 'package:portfolio_website/core/widgets/services_grid_view.dart';
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key, required this.padding});
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final service = context
        .read<HomeViewModel>()
        .state
        .profileData!
        .serviceEntity;
    return Padding(
      padding: padding,
      child: Column(
        children: [
          SectionHeader(
            sectionName: service.title,
            description: service.description,
          ),
          SizedBox(height: AppSizes.spaceBetweenItems_80),
          ServicesGridView(servicesList: service.servicesList),
        ],
      ),
    );
  }
}
