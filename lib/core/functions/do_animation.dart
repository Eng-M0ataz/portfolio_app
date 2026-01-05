import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

extension MyAnimationExtension on Widget {
  Widget applyMyStyle() {
    return animate()
        .fadeIn(duration: 2.seconds, curve: Curves.easeInOut)
        .slideX(begin: 0.3, end: 0, curve: Curves.easeOutBack);
  }
}
