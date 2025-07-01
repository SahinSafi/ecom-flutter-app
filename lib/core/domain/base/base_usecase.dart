import 'package:ecom/core/common/api_result.dart';

abstract class UseCase<Type,Params> {
  Future<ApiResult<Type>> execute({required Params params});
}