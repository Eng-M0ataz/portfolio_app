import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/core/functions/do_animation.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/section_header.dart';
import 'package:portfolio_website/core/widgets/services_grid_view.dart';
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';

class ServicesSection extends StatefulWidget {
  const ServicesSection({super.key, required this.padding});
  final EdgeInsetsGeometry padding;

  @override
  State<ServicesSection> createState() => _ServicesSectionState();
}

class _ServicesSectionState extends State<ServicesSection>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final service = context
        .read<HomeViewModel>()
        .state
        .profileData!
        .serviceEntity;
    return Padding(
      padding: widget.padding,
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
    ).applyMyStyle();
  }

  @override
  bool get wantKeepAlive => true;
}
