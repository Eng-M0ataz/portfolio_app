import 'package:injectable/injectable.dart';
import 'package:portfolio_website/core/errors/failure.dart';
import 'package:portfolio_website/core/functions/api_results.dart';
import 'package:portfolio_website/core/services/data_base_services.dart';
import 'package:portfolio_website/data/mappers/portfolio_model_mapper.dart';
import 'package:portfolio_website/data/model/input_model/contact_request.dart';
import 'package:portfolio_website/data/model/portfolio_model/portfolio_model.dart';
import 'package:portfolio_website/domain/entity/portfolio_entity.dart';
import 'package:portfolio_website/domain/repository/home_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@LazySingleton(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  final DatabaseService _databaseService;

  const HomeRepoImpl(this._databaseService);

  @override
  Future<ApiResult<PortfolioEntity>> fetchDataWithSort({
    required String path,
  }) async {
    try {
      final Map<String, dynamic> data = await _databaseService.fetchAllData(
        path: path,
      );
      final profileEntity = PortfolioModel.fromJson(data).toEntity();

      return ApiSuccessResult<PortfolioEntity>(data: profileEntity);
    } on PostgrestException catch (exception) {
      return ApiErrorResult<PortfolioEntity>(
        failure: SupabaseFailure.fromPostgrestException(exception: exception),
      );
    } on Exception catch (e) {
      return ApiErrorResult<PortfolioEntity>(
        failure: SupabaseFailure.fromException(exception: e),
      );
    }
  }

  @override
  Future<ApiResult<void>> sendClientRequest({
    required String path,
    required ContactRequest contactRequest,
  }) async {
    try {
      final Map<String, dynamic> data = contactRequest.toJson();
      await _databaseService.addData(path: path, data: data);

      return ApiSuccessResult<void>(data: null);
    } on PostgrestException catch (exception) {
      return ApiErrorResult<void>(
        failure: SupabaseFailure.fromPostgrestException(exception: exception),
      );
    } on Exception catch (e) {
      return ApiErrorResult<void>(
        failure: SupabaseFailure.fromException(exception: e),
      );
    }
  }
}
