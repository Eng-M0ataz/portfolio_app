import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_website/core/di/di.dart';
import 'package:portfolio_website/core/utils/Constants/api_constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class DioModule {
  @lazySingleton
  PrettyDioLogger providePrettyDioLogger() {
    return PrettyDioLogger(requestHeader: true, requestBody: true);
  }

  @lazySingleton
  Dio provideDio() {
    final Dio dio = Dio();
    dio.options.baseUrl = ApiConstants.baseUrl;
    dio.options.headers = {
      ApiConstants.contentType: ApiConstants.applicationJson,
    };
    dio.interceptors.add(getIt.get<PrettyDioLogger>());
    dio.interceptors.add(InterceptorsWrapper());

    return dio;
  }
}
