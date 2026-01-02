import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/phone_email_widget.dart';
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key, required this.isDesktop});

  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    final profileData = context.read<HomeViewModel>().state.profileData!;
    List<Widget> contacts = [
      PhoneEmailWidget(
        text: profileData.personalInfo.email,
        icon: Icons.email_outlined,
      ),
      PhoneEmailWidget(
        text: profileData.personalInfo.whatsappNumber,
        icon: Icons.phone_outlined,
      ),
    ];
    return isDesktop
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: AppSizes.spaceBetweenItems_40,
            children: contacts,
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: AppSizes.spaceBetweenItems_16,
            children: contacts,
          );
  }
}
