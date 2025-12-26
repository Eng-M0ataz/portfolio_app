import 'package:injectable/injectable.dart';
import 'package:portfolio_website/core/functions/api_results.dart';
import 'package:portfolio_website/core/services/data_base_services.dart';
import 'package:portfolio_website/data/mappers/profile_data_dto_mapper.dart';
import 'package:portfolio_website/data/model/input_model.dart';
import 'package:portfolio_website/data/model/profile_data_dto.dart';
import 'package:portfolio_website/domain/entity/profile_data_entity.dart';
import 'package:portfolio_website/domain/repository/home_repo.dart';

@LazySingleton(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  final DatabaseService _databaseService;
  const HomeRepoImpl(this._databaseService);

  @override
  Future<ApiResult<ProfileDataEntity>> fetchDataWithSort({
    required InputModel inputModel,
  }) async {
    final Map<String, dynamic> response = await _databaseService
        .fetchDataWithSort(
          path: inputModel.path,
          columnName: inputModel.columnName,
          columnValue: inputModel.columnValue,
        );

    final dto = ProfileDataDto.fromJson(response);

    final entity = dto.toEntity();

    return ApiSuccessResult<ProfileDataEntity>(data: entity);
  }
}
