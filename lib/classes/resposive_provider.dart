import 'package:flutter/material.dart';

class ResponsiveProvider extends ChangeNotifier {
  late double scale;

  ResponsiveProvider(double width) {
    if (width < 480) {
      scale = 0.9;
    } else if (width < 900) {
      scale = 1.0;
    } else {
      scale = 1.2;
    }
  }
}
