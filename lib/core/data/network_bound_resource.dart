import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:ecom/core/common/api_result.dart';
import 'package:ecom/core/entity/apientity/home_api_entity.dart';
import 'package:http/http.dart';

class NetworkBoundResource {

  Future<ApiResult<T>> downloadData<T>({
    required Future<Response> Function() apiCall,
    required T Function(dynamic jsonBody) convertJsonToObject
  }) async {
    try {
      final response = await apiCall().timeout(const Duration(seconds: 30));
      if (response.statusCode == 200) {
        final jsonBody = json.decode(response.body);
        final result = convertJsonToObject(jsonBody);
        return ApiSuccess(result);
      } else {
        return ApiError(response.statusCode, response.body);
      }
    } on TimeoutException {
      return ApiError(408, "Request timeout, please try again");
    } on SocketException {
      return ApiError(0, "Please check your internet connection");
    } on Error {
      return ApiError(0, "Something went wrong");
    }
  }

}