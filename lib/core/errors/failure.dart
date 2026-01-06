import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Failure {
  Failure({required this.errorMessage, String? code})
    : code = code ?? LocaleKeys.failure_no_status_code_found.tr();

  final String errorMessage;
  final String code;
}

class SupabaseFailure extends Failure {
  SupabaseFailure({required super.errorMessage, super.code});

  factory SupabaseFailure.fromAuthException({
    required AuthException exception,
  }) {
    return SupabaseFailure(
      errorMessage: exception.message,
      code: exception.statusCode?.toString() ?? LocaleKeys.failure_no_code.tr(),
    );
  }

  factory SupabaseFailure.fromPostgrestException({
    required PostgrestException exception,
  }) {
    return SupabaseFailure(
      errorMessage: exception.message,
      code: exception.code ?? LocaleKeys.failure_no_code.tr(),
    );
  }

  factory SupabaseFailure.fromException({required Exception exception}) {
    if (exception is SocketException) {
      return SupabaseFailure(
        errorMessage: LocaleKeys.failure_no_internet_connection.tr(),
      );
    } else {
      return SupabaseFailure(errorMessage: exception.toString());
    }
  }
}
