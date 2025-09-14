import 'package:dio/dio.dart';
import 'package:portfolio_website/core/errors/failure.dart';

sealed class ApiResult<T> {}

class ApiSuccessResult<T> extends ApiResult<T> {
  final T data;
  ApiSuccessResult({required this.data});
}

class ApiErrorResult<T> extends ApiResult<T> {
  final Failure failure;
  ApiErrorResult({required this.failure});
}

Future<ApiResult<TResult>> executeApi<TDto, TResult>({
  required Future<TDto> Function() request,
  TResult Function(TDto response)? mapper,
}) async {
  try {
    TDto response = await request();
    if (mapper == null) {
      return ApiSuccessResult<TResult>(data: response as TResult);
    }
    return ApiSuccessResult<TResult>(data: mapper(response));
  } on DioException catch (e) {
    return ApiErrorResult<TResult>(
      failure: ServerFailure.fromDioError(dioException: e),
    );
  } catch (e) {
    return ApiErrorResult<TResult>(
      failure: Failure(errorMessage: e.toString()),
    );
  }
}
