import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:portfolio_website/core/config/routing/route_generator.dart';
import 'package:portfolio_website/core/config/theme/app_theme.dart';
import 'package:portfolio_website/core/helpers/block_observer.dart';
import 'package:portfolio_website/core/utils/constants/api_constants.dart';
import 'package:portfolio_website/core/utils/constants/app_constants.dart';
import 'package:portfolio_website/core/utils/constants/app_routes.dart';
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/di/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await dotenv.load(fileName: AppConstants.envFileName);
  Bloc.observer = MyBlocObserver();
  await Supabase.initialize(
    url: dotenv.env[ApiConstants.supabaseUrlKey]!,
    anonKey: dotenv.env[ApiConstants.supabaseAnonKeyKey]!,
  );

  await configureDependencies();

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
    return BlocProvider(
      create: (context) => getIt<HomeViewModel>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: AppThemeDark.getTheme(context),
        initialRoute: AppRoutes.splashRoute,
        onGenerateRoute: RouteGenerator.getRoute,
      ),
    );
  }
}
