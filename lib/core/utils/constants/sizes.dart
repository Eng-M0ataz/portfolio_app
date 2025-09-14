import 'package:portfolio_website/core/utils/Constants/device_type.dart';
import 'package:responsive_framework/responsive_framework.dart';

abstract class AppSizes {
  // padding and margin sizes
  static const double paddingXs_4 = 4.0;
  static const double paddingSm_8 = 8.0;
  static const double paddingSm_12 = 12.0;
  static const double paddingMd_10 = 10.0;
  static const double paddingMd_12 = 12.0;
  static const double paddingMd_16 = 16.0;
  static const double paddingMd_20 = 20.0;
  static const double paddingLg_24 = 24.0;
  static const double paddingXl_32 = 32.0;

  // icon sizes
  static const double icon_8 = 8.0;
  static const double icon_12 = 12.0;
  static const double icon_16 = 16.0;
  static const double icon_24 = 24.0;
  static const double icon_32 = 32.0;
  static const double icon_40 = 40.0;
  static const double icon_48 = 48.0;
  static const double icon_56 = 56.0;
  static const double icon_60 = 60.0;
  static const double icon_64 = 64.0;
  static const double icon_72 = 72.0;
  static const double icon_80 = 80.0;
  static const double icon_96 = 96.0;
  static const double icon_100 = 100.0;
  static const double icon_120 = 120.0;

  // font sizes

  static const double font_12 = 12.0;
  static const double font_13 = 13.0;
  static const double font_14 = 14.0;
  static const double font_16 = 16.0;
  static const double font_18 = 18.0;
  static const double font_20 = 20.0;
  static const double font_24 = 24.0;
  static const double font_28 = 28.0;
  static const double font_30 = 30.0;
  static const double font_40 = 40.0;
  static const double font_48 = 48.0;
  static const double font_56 = 56.0;
  static const double font_60 = 60.0;
  static const double font_64 = 64.0;
  static const double font_72 = 72.0;
  static const double font_70 = 70.0;

  // button sizes

  static const double buttonHigh = 56;
  static const double buttonHigh_14 = 14;
  static const double buttonHigh_16 = 16;
  static const double buttonHigh_20 = 20;
  static const double buttonHigh_24 = 24;
  static const double buttonHigh_28 = 28;
  static const double buttonHigh_30 = 30;
  static const double buttonHigh_32 = 32;
  static const double buttonHigh_36 = 36;
  static const double buttonHigh_48 = 48;

  // AppBar High

  static const double appBarHigh = 43.0;
  static const double appBarElevation = 0.0;
  static const double appBarLeadingWidth = 120.0;

  // Image sizes

  static const double imageHigh = 80.0;

  // Default Spacing Between items

  static const double spaceBetweenItems_4 = 4.0;
  static const double spaceBetweenItems_8 = 8.0;
  static const double spaceBetweenItems_10 = 12.0;
  static const double spaceBetweenItems_12 = 12.0;
  static const double spaceBetweenItems_16 = 16.0;
  static const double spaceBetweenItems_24 = 24.0;
  static const double spaceBetweenItems_32 = 32.0;
  static const double spaceBetweenItems_36 = 36.0;
  static const double spaceBetweenItems_40 = 40.0;
  static const double spaceBetweenItems_48 = 48.0;
  static const double spaceBetweenItems_50 = 50.0;
  static const double spaceBetweenItems_56 = 56.0;
  static const double spaceBetweenItems_64 = 64.0;
  static const double spaceBetweenItems_72 = 72.0;

  // Default Spacing Between Sections

  static const double spaceBetweenSections_16 = 16.0;

  // Border Radius

  static const double borderRadius0 = 0.0;
  static const double borderRadiusSm_4 = 4.0;
  static const double borderRadiusMd_8 = 8.0;
  static const double borderRadiusLg_12 = 12.0;
  static const double borderRadiusXl_16 = 16.0;
  static const double borderRadiusXxl_24 = 24.0;
  static const double borderRadiusXxxl_32 = 32.0;
  static const double borderRadiusFull = 100.0;

  // Divider Height

  static const double dividerHeight = 1.0;

  // break points

  static const List<Breakpoint> appBreakPoints = [
    Breakpoint(start: 0, end: 450, name: DeviceType.mobile),
    Breakpoint(start: 451, end: 800, name: DeviceType.tablet),
    Breakpoint(start: 801, end: 1920, name: DeviceType.desktop),
  ];
  static const List<Breakpoint> appLandscapeBreakPoints = [
    Breakpoint(start: 0, end: 1023, name: DeviceType.mobile),
    Breakpoint(start: 1024, end: 1599, name: DeviceType.tablet),
    Breakpoint(start: 1600, end: double.infinity, name: DeviceType.desktop),
  ];
}
