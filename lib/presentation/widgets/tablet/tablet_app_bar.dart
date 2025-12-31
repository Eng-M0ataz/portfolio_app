import 'package:flutter/material.dart';
import 'package:portfolio_website/core/widgets/taps_widget.dart';

class TabletAppBar extends StatelessWidget {
  const TabletAppBar({super.key, required this.onTapItem});

  final Function(int index) onTapItem;

  @override
  Widget build(BuildContext context) {
    return TapsWidget(onTapItem: onTapItem);
  }
}
