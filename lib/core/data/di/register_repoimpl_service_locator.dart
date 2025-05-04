import 'package:ecom/core/common/get_it_instance.dart';
import 'package:ecom/core/data/api_services.dart';
import 'package:ecom/core/data/network_bound_resource.dart';
import 'package:ecom/core/data/repository_impl.dart';
import 'package:ecom/core/domain/repository.dart';

void registerRepoImplServiceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices());
  getIt.registerSingleton<NetworkBoundResource>(NetworkBoundResource());
  getIt.registerSingleton<Repository>(RepositoryImpl(getIt(), getIt()));
}