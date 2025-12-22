import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/core/config/routing/route_generator.dart';
import 'package:portfolio_website/core/config/theme/app_theme.dart';
import 'package:portfolio_website/core/helpers/block_observer.dart';
import 'package:portfolio_website/core/utils/constants/app_constants.dart';
import 'package:portfolio_website/core/utils/constants/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  // await configureDependencies();
  Bloc.observer = MyBlocObserver();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => EasyLocalization(
        supportedLocales: AppConstants.supportedLocales,
        path: AppConstants.assetsPath,
        fallbackLocale: const Locale(AppConstants.en),
        child: PortFolio(),
      ),
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
      theme: AppThemeDark.getTheme(),
      initialRoute: AppRoutes.homeRoute,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
