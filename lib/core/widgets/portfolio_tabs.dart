import 'package:flutter/material.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';

class PortfolioTaps extends StatelessWidget {
  const PortfolioTaps({super.key, required this.catList});
  final List<String> catList;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: catList.length,
      child: TabBar(
        labelStyle: AppTextStyles.bold_16(
          context,
        ).copyWith(color: Colors.white),
        onTap: (index) => {},
        isScrollable: true,
        tabs: catList.map((cat) => Tab(text: cat)).toList(),
      ),
    );
  }
}
