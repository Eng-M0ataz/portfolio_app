import 'package:flutter/material.dart';

abstract class AppConstants {
  // Locales
  static const List<Locale> supportedLocales = [Locale(en), Locale(ar)];
  static const String en = 'en';
  static const String ar = 'ar';
  static const String assetsPath = 'assets/translations';

  // Storage
  static const String secureStorage = 'secureStorage';
  static const String token = 'token';

  // Environment Variables
  static const String envFileName = '.env';
  static const String supabaseUrlKey = 'SUPABASE_URL';
  static const String supabaseAnonKeyKey = 'SUPABASE_ANON_KEY';
}
