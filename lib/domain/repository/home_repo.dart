import 'package:portfolio_website/core/functions/api_results.dart';
import 'package:portfolio_website/data/model/input_model/contact_request.dart';
import 'package:portfolio_website/domain/entity/portfolio_entity.dart';

abstract interface class HomeRepo {
  Future<ApiResult<PortfolioEntity>> fetchDataWithSort({required String path});

  Future<ApiResult<void>> sendClientRequest({
    required String path,
    required ContactRequest contactRequest,
  });
}
