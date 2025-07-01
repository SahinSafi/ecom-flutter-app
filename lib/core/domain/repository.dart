import 'package:ecom/core/common/api_result.dart';
import 'package:ecom/core/entity/apientity/home_api_entity.dart';
import 'package:ecom/core/entity/apientity/products_api_entity.dart';

abstract class Repository {

  Future<ApiResult<HomeApiEntity>> fetchHomeApi();

  Future<ApiResult<ProductsApiEntity>> fetchProductApi(int page);

}