import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/phone_email_widget.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key, required this.isDesktop});

  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    const List<Widget> contacts = [
      PhoneEmailWidget(text: 'example@example.com', icon: Icons.email_outlined),
      PhoneEmailWidget(text: '+20 1012461616', icon: Icons.phone_outlined),
    ];

    return isDesktop
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: AppSizes.spaceBetweenItems_40,
            children: contacts,
          )
        : Column(spacing: AppSizes.spaceBetweenItems_16, children: contacts);
  }
}
