import 'package:flutter/material.dart';

abstract class AppConstants {
  // Locales
  static const List<Locale> supportedLocales = [Locale(en), Locale(ar)];
  static const String en = 'en';
  static const String ar = 'ar';
  static const String assetsPath = 'assets/translations';
  static const String secureStorage = 'secureStorage';
  static const String envFileName = '.env';
}
