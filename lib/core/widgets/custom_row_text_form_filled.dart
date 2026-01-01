import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/custom_textform_field.dart';

class CustomRowTextFiled extends StatelessWidget {
  const CustomRowTextFiled({
    super.key,
    required this.firstController,
    required this.secondController,
    required this.hintText1,
    required this.hintText2,
    this.firstMaxLines = 1,
    this.secondMaxLines = 1,
    this.firstValidator,
    this.secondValidator,
  });

  final TextEditingController firstController;
  final TextEditingController secondController;
  final int firstMaxLines;
  final int secondMaxLines;
  final String hintText1;
  final String hintText2;
  final String? Function(String?)? firstValidator;
  final String? Function(String?)? secondValidator;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: CustomTextFormField(
            hintText: hintText1,
            controller: firstController,
            maxLines: firstMaxLines,
            validator: firstValidator,
          ),
        ),
        SizedBox(width: AppSizes.spaceBetweenItems_32),
        Expanded(
          child: CustomTextFormField(
            hintText: hintText2,
            controller: secondController,
            maxLines: secondMaxLines,
            validator: secondValidator,
          ),
        ),
      ],
    );
  }
}
