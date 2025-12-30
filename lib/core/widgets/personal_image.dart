import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';

class PersonalImageWidget extends StatelessWidget {
  const PersonalImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final profileData = context.read<HomeViewModel>().state.profileData;
    final isDeskTop = context.isDeskTop;
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: isDeskTop ? 520 : 300),
      child: CachedNetworkImage(
        imageUrl: profileData!.personalInfo.photo,
        placeholder: (context, url) => CircularProgressIndicator(),
      ),
    );
  }
}
