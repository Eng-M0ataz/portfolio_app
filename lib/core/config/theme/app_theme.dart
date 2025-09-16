import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/config/theme/text_theme.dart';
import 'package:portfolio_website/core/utils/constants/app_fonts.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';

abstract class AppThemeDark {
  static ThemeData getTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      scaffoldBackgroundColor: AppColorsDark.black,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColorsDark.white,
        foregroundColor: AppColorsDark.black,
        elevation: AppSizes.appBarElevation,
        titleTextStyle: TextStyle(
          fontFamily: AppFonts.lato,
          fontSize: AppSizes.font_20,
          fontWeight: FontWeight.w500,
          color: AppColorsDark.black,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.paddingXl_32,
            vertical: AppSizes.paddingMd_16,
          ),
          backgroundColor: AppColorsDark.orange,
          foregroundColor: AppColorsDark.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd_8),
          ),
          textStyle: TextStyle(
            fontFamily: AppFonts.lato,
            fontWeight: FontWeight.bold,
            fontSize: AppSizes.font_20,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: TextStyle(
            fontFamily: AppFonts.lato,
            fontWeight: FontWeight.bold,
            fontSize: AppSizes.font_20,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(

        filled: true,
        fillColor: AppColorsDark.grey_252525,

        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(AppSizes.borderRadiusMd_8),
          ),
        ),

        hintStyle: TextStyle(
        fontFamily: AppFonts.lato,
        fontWeight: FontWeight.w500,
        fontSize: AppSizes.font_16,
        color: AppColorsDark.grey_959,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd_8),

      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd_8),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd_8),
      ),
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
    color: AppColorsDark.orange,
    ),
    dividerTheme: DividerThemeData(color: AppColorsDark.grey_7070),
    textTheme: textTheme,
    );
    }
}
