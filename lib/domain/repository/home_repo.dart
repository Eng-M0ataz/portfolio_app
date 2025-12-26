import 'package:portfolio_website/core/functions/api_results.dart';
import 'package:portfolio_website/domain/entity/profile_data_entity.dart';
import '../../data/model/input_model.dart';

abstract interface class HomeRepo {
  Future<ApiResult<ProfileDataEntity>> fetchDataWithSort({
    required InputModel inputModel,
  });
}
