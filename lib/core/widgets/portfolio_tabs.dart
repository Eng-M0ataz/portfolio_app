import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/presentation/viewModel/home_event.dart';
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';

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
        onTap: (index) => context.read<HomeViewModel>().doIntent(
          FilterProjectsEvent(category: catList[index]),
        ),
        isScrollable: true,
        tabs: catList.map((cat) => Tab(text: cat)).toList(),
      ),
    );
  }
}
