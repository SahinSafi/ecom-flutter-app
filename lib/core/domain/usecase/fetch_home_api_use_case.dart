import 'package:ecom/core/common/api_result.dart';
import 'package:ecom/core/domain/base/base_usecase.dart';
import 'package:ecom/core/domain/repository.dart';
import 'package:ecom/core/entity/apientity/home_api_entity.dart';

class FetchHomeApiUseCase extends UseCase<HomeApiEntity,void> {

  final Repository _repository;

  FetchHomeApiUseCase(this._repository);

  @override
  Future<ApiResult<HomeApiEntity>> execute({void params}) {
    return _repository.fetchHomeApi();
  }

}