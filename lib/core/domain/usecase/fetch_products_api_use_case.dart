import 'package:ecom/core/common/api_result.dart';
import 'package:ecom/core/domain/base/base_usecase.dart';
import 'package:ecom/core/domain/repository.dart';
import 'package:ecom/core/entity/apientity/products_api_entity.dart';

class FetchProductsApiUseCase extends UseCase<ProductsApiEntity, int> {

  final Repository _repository;

  FetchProductsApiUseCase(this._repository);

  @override
  Future<ApiResult<ProductsApiEntity>> execute({required int params}) {
    return _repository.fetchProductApi(params);
  }

}