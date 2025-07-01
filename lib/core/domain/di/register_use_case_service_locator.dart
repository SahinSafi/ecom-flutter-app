import 'package:ecom/core/common/get_it_instance.dart';
import 'package:ecom/core/domain/usecase/fetch_home_api_use_case.dart';
import 'package:ecom/core/domain/usecase/fetch_products_api_use_case.dart';

void registerUseCaseServiceLocator() {
  getIt.registerFactory(() => FetchHomeApiUseCase(getIt()));
  getIt.registerFactory(() => FetchProductsApiUseCase(getIt()));
}