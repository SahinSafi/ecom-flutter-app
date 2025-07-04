
import 'dart:convert';

import 'package:ecom/core/common/api_result.dart';
import 'package:ecom/core/data/api_services.dart';
import 'package:ecom/core/data/network_bound_resource.dart';
import 'package:ecom/core/domain/repository.dart';
import 'package:ecom/core/entity/apientity/home_api_entity.dart';
import 'package:ecom/core/entity/apientity/products_api_entity.dart';


class RepositoryImpl implements Repository {

  final ApiServices _apiServices;
  final NetworkBoundResource _boundResource;

  RepositoryImpl(this._apiServices, this._boundResource);

  @override
  Future<ApiResult<HomeApiEntity>> fetchHomeApi() async {
    return _boundResource.downloadData(
        apiCall: () => _apiServices.fetchHomeApi(),
        convertJsonToObject: (jsonBody) {
          return HomeApiEntity.fromJson(jsonBody);
        }
    );
  }

  @override
  Future<ApiResult<ProductsApiEntity>> fetchProductApi(int page) async {
    return _boundResource.downloadData(
        apiCall: () => _apiServices.fetchProductsApi(page),
        convertJsonToObject: (jsonBody) {
          return ProductsApiEntity.fromJson(jsonBody);
        }
    );
  }

}