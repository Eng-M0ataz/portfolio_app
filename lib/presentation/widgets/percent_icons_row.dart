import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_percent_badge.dart';

class PercentIconsRow extends StatelessWidget {
  const PercentIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {'icon': FontAwesomeIcons.figma, 'percent': 1.0, 'label': 'Figma'},
      {'icon': FontAwesomeIcons.android, 'percent': 1.0, 'label': 'Android Studio'},
      {'icon': FontAwesomeIcons.jira, 'percent': 0.85, 'label': 'Jira'},
      {'icon': FontAwesomeIcons.code, 'percent': 0.60, 'label': 'Android Native'},
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: items.map((item) {
        return IconPercentBadge(
          icon: item['icon'] as IconData,
          percent: item['percent'] as double,
          label: item['label'] as String,
        );
      }).toList(),
    );
  }
}
