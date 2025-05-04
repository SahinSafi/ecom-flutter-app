
import 'dart:convert';

import 'package:ecom/core/common/api_result.dart';
import 'package:ecom/core/data/api_services.dart';
import 'package:ecom/core/data/network_bound_resource.dart';
import 'package:ecom/core/domain/repository.dart';
import 'package:ecom/core/entity/apientity/home_api_entity.dart';


class RepositoryImpl implements Repository {

  final ApiServices _apiServices;
  final NetworkBoundResource _boundResource;

  RepositoryImpl(this._apiServices, this._boundResource);

  @override
  Future<ApiResult<HomeApiEntity>> fetchHomeApi()async {

    final result = await _boundResource.downloadData(()=>_apiServices.fetchHomeApi());

    switch(result) {
      case ApiSuccess() : {
        final body = json.decode(result.data);
        final response = HomeApiEntity.fromJson(body);
        return ApiSuccess(response);
      }
      case ApiError() : {
        return ApiError(result.errorCode, result.errorMessage);
      }
    }

  }

}