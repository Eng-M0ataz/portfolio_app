import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/core/di/di.dart';
import 'package:portfolio_website/core/helpers/routing_extensions.dart';
import 'package:portfolio_website/core/utils/constants/api_constants.dart';
import 'package:portfolio_website/core/utils/constants/app_routes.dart';
import 'package:portfolio_website/core/widgets/splash_widget.dart';
import 'package:portfolio_website/presentation/viewModel/home_event.dart';
import 'package:portfolio_website/presentation/viewModel/home_state.dart';
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _loadData();
  }

  Future<void> _loadData() async {
    if (!mounted) return;

    await getIt<HomeViewModel>().doIntent(
      FetchHomeDataEvent(path: ApiConstants.path),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<HomeViewModel, HomeState>(
        listenWhen: (p, c) => p.profileData != c.profileData,
        listener: (context, state) {
          if (state.profileData != null) {
            context.pushNamed(AppRoutes.homeRoute);
          }
        },
        builder: (context, state) {
          if (state.failure != null) {
            return Center(child: Text(state.failure!.errorMessage));
          }
          return Center(child: SplashWidget());
        },
      ),
    );
  }
}
