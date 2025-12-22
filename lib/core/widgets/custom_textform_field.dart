import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    this.validator,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: AppSizes.paddingLg_24,
      vertical: AppSizes.paddingLg_24,
    ),
  });
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final EdgeInsetsGeometry contentPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.paddingMd_16),
      child: TextFormField(
        controller: controller,
        validator: validator,
        textAlignVertical: TextAlignVertical.top,
        style: AppTextStyles.medium_16(
          context,
        ).copyWith(color: AppColorsDark.grey_959),
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: contentPadding,
        ),
      ),
    );
  }
}
