import 'dart:io';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Failure {
  Failure({required this.errorMessage, String? code})
    : code = code ?? LocaleKeys.failure_no_status_code_found.tr();

  final String errorMessage;
  final String code;
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage, super.code});

  factory ServerFailure.fromDioError({required DioException dioException}) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          errorMessage: LocaleKeys.failure_connection_timeout.tr(),
        );
      case DioExceptionType.sendTimeout:
        return ServerFailure(
          errorMessage: LocaleKeys.failure_send_timeout.tr(),
        );
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          errorMessage: LocaleKeys.failure_receive_timeout.tr(),
        );
      case DioExceptionType.badCertificate:
        return ServerFailure(
          errorMessage: LocaleKeys.failure_bad_certificate.tr(),
        );
      case DioExceptionType.cancel:
        return ServerFailure(
          errorMessage: LocaleKeys.failure_connection_cancelled.tr(),
        );
      case DioExceptionType.connectionError:
        return ServerFailure(
          errorMessage: LocaleKeys.failure_connection_error.tr(),
        );
      case DioExceptionType.unknown:
        return ServerFailure(
          errorMessage: LocaleKeys.failure_unknown_error.tr(),
        );
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioException.response);
    }
  }

  factory ServerFailure.fromResponse(Response? response) {
    if (response == null) {
      return ServerFailure(errorMessage: LocaleKeys.failure_no_response.tr());
    }

    switch (response.statusCode) {
      case 404:
        return ServerFailure(
          errorMessage: LocaleKeys.failure_resource_not_found.tr(),
          code: '404',
        );
      case 500:
        return ServerFailure(
          errorMessage: LocaleKeys.failure_server_error.tr(),
          code: '500',
        );
      default:
        return ServerFailure(
          errorMessage: response.data['message'] ?? response.data['error'],
          code: response.data['code'].toString(),
        );
    }
  }
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
