import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:portfolio_website/core/di/di.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/core/utils/constants/app_routes.dart';
import 'package:portfolio_website/core/widgets/personal_image.dart';
import 'package:portfolio_website/data/model/input_model.dart';
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

    // final viewModel = context.read<HomeViewModel>();
    final viewModel = getIt<HomeViewModel>();
    await viewModel.doIntent(
      FetchHomeDataEvent(
        inputModel: InputModel(
          path: 'detailed_profile',
          columnName: 'id',
          columnValue: '1',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double containerSize = context.responsiveValue(
      mobile: 250,
      tablet: 400,
      desktop: 500,
    );

    final double imageSize = context.percentOf(containerSize, 0.85);

    final double lineWidth = context.responsiveValue(
      mobile: 3.0,
      tablet: 5.0,
      desktop: 7.0,
    );
    return Scaffold(
      body: BlocListener<HomeViewModel, HomeState>(
        listener: (context, state) {
          if (state.profileData != null) {
            Navigator.of(context).pushReplacementNamed(AppRoutes.homeRoute);
          }

          if (state.failure != null) {
            // Handle failure (e.g., show a snackbar)
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Error: ${state.failure!.errorMessage}')),
            );
          }
        },
        child: Center(
          child: SizedBox(
            width: containerSize,
            height: containerSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SpinKitDualRing(
                  color: Colors.orange,
                  size: containerSize,
                  lineWidth: lineWidth,
                ),
                SizedBox(
                  width: imageSize,
                  height: imageSize,
                  child: ClipOval(child: PersonalImageWidget()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
