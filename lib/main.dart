import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/core/config/routing/route_generator.dart';
import 'package:portfolio_website/core/config/theme/app_theme.dart';
import 'package:portfolio_website/core/di/di.dart';
import 'package:portfolio_website/core/helpers/block_observer.dart';
import 'package:portfolio_website/core/utils/constants/app_constants.dart';
import 'package:portfolio_website/core/utils/constants/app_routes.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await configureDependencies();
  Bloc.observer = MyBlocObserver();
  runApp(
    EasyLocalization(
      supportedLocales: AppConstants.supportedLocales,
      path: AppConstants.assetsPath,
      fallbackLocale: const Locale(AppConstants.en),
      child: PortFolio(),
    ),
  );
}

class PortFolio extends StatelessWidget {
  const PortFolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: AppSizes.appBreakPoints,
        breakpointsLandscape: AppSizes.appLandscapeBreakPoints,
      ),
      theme: AppThemeDark.getTheme(),
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: AppRoutes.homeRoute,
    );
  }
}
