import 'package:portfolio_website/core/functions/api_results.dart';
import 'package:portfolio_website/domain/entity/portfolio_entity.dart';

abstract interface class HomeRepo {
  Future<ApiResult<PortfolioEntity>> fetchDataWithSort({required String path});
}
