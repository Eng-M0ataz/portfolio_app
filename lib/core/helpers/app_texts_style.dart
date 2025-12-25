import 'package:flutter/material.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/core/utils/constants/app_fonts.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';

class AppTextStyles {
  static TextStyle semiBold_24(BuildContext context) {
    return TextStyle(
      fontFamily: AppFonts.lato,
      fontWeight: FontWeight.w600,
      fontSize: ResponsiveHelper.getResponsiveFontSize(
        context: context,
        mobile: AppSizes.font_16,
        tablet: AppSizes.font_18,
        desktop: AppSizes.font_24,
      ),
    );
  }

  static TextStyle bold_28(BuildContext context) {
    return TextStyle(
      fontFamily: AppFonts.lato,
      fontWeight: FontWeight.bold,
      fontSize: ResponsiveHelper.getResponsiveFontSize(
        context: context,
        mobile: AppSizes.font_20,
        tablet: AppSizes.font_24,
        desktop: AppSizes.font_28,
      ),
    );
  }

  static TextStyle bold_20(BuildContext context) {
    return TextStyle(
      fontFamily: AppFonts.lato,
      fontWeight: FontWeight.bold,
      fontSize: ResponsiveHelper.getResponsiveFontSize(
        context: context,
        mobile: AppSizes.font_16,
        tablet: AppSizes.font_18,
        desktop: AppSizes.font_20,
      ),
    );
  }

  static TextStyle bold_40(BuildContext context) {
    return TextStyle(
      fontFamily: AppFonts.lato,
      fontWeight: FontWeight.bold,
      fontSize: ResponsiveHelper.getResponsiveFontSize(
        context: context,
        mobile: AppSizes.font_24,
        tablet: AppSizes.font_32,
        desktop: AppSizes.font_40,
      ),
    );
  }

  static TextStyle bold_24(BuildContext context) {
    return TextStyle(
      fontFamily: AppFonts.lato,
      fontWeight: FontWeight.bold,
      fontSize: ResponsiveHelper.getResponsiveFontSize(
        context: context,
        mobile: AppSizes.font_20,
        tablet: AppSizes.font_22,
        desktop: AppSizes.font_24,
      ),
    );
  }

  static TextStyle bold_30(BuildContext context) {
    return TextStyle(
      fontFamily: AppFonts.lato,
      fontWeight: FontWeight.bold,
      fontSize: ResponsiveHelper.getResponsiveFontSize(
        context: context,
        mobile: AppSizes.font_24,
        tablet: AppSizes.font_27,
        desktop: AppSizes.font_30,
      ),
    );
  }

  static TextStyle bold_16(BuildContext context) {
    return TextStyle(
      fontFamily: AppFonts.lato,
      fontWeight: FontWeight.bold,
      fontSize: ResponsiveHelper.getResponsiveFontSize(
        context: context,
        mobile: AppSizes.font_14,
        tablet: AppSizes.font_15,
        desktop: AppSizes.font_16,
      ),
    );
  }

  static TextStyle extraBold_24(BuildContext context) {
    return TextStyle(
      fontFamily: AppFonts.lato,
      fontWeight: FontWeight.w900,
      fontSize: ResponsiveHelper.getResponsiveFontSize(
        context: context,
        mobile: AppSizes.font_20,
        tablet: AppSizes.font_22,
        desktop: AppSizes.font_24,
      ),
    );
  }

  static TextStyle medium_20(BuildContext context) {
    return TextStyle(
      fontFamily: AppFonts.lato,
      fontWeight: FontWeight.w500,
      fontSize: ResponsiveHelper.getResponsiveFontSize(
        context: context,
        mobile: AppSizes.font_16,
        tablet: AppSizes.font_18,
        desktop: AppSizes.font_20,
      ),
    );
  }

  static TextStyle medium_16(BuildContext context) {
    return TextStyle(
      fontFamily: AppFonts.lato,
      fontWeight: FontWeight.w500,
      fontSize: AppSizes.font_16,
    );
  }
}
