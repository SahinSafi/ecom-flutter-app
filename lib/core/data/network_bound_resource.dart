import 'dart:async';
import 'dart:io';

import 'package:ecom/core/common/api_result.dart';
import 'package:http/http.dart';

class NetworkBoundResource {

  Future<ApiResult> downloadData(Future<Response> Function() call) async {
    try {
      final response = await call().timeout(const Duration(seconds: 30));
      if(response.statusCode == 200) {
        return ApiSuccess(response.body);
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