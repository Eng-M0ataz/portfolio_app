import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    this.validator,
    this.maxLines = 1,
  });
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      maxLines: maxLines,
      cursorColor: AppColorsDark.orange,
      decoration: InputDecoration(hintText: hintText),
    );
  }
}
