import 'package:flutter/material.dart';
import 'package:portfolio_website/core/enum/device_type.dart';

extension ResponsiveHelper on BuildContext {
  double get width => MediaQuery.sizeOf(this).width;

  double get height => MediaQuery.sizeOf(this).height;

  bool get isMobile => width <= DeviceType.mobile.deviceWidth;

  bool get isTablet =>
      width > DeviceType.mobile.deviceWidth &&
      width <= DeviceType.tablet.deviceWidth;

  bool get isDeskTop => width > DeviceType.tablet.deviceWidth;

  static double getResponsiveFontSize({
    required BuildContext context,
    required double mobile,
    required double tablet,
    required double desktop,
  }) {
    double width = context.width;

    if (width <= DeviceType.mobile.deviceWidth) return mobile;
    if (width <= DeviceType.tablet.deviceWidth) return tablet;
    return desktop;
  }

  double percentOf(double value, double percent) => value * percent;

  double responsiveValue({
    required double mobile,
    required double tablet,
    required double desktop,
  }) {
    if (isMobile) return mobile;
    if (isTablet) return tablet;
    return desktop;
  }
}
