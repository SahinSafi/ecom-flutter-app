import 'package:ecom/core/domain/di/register_use_case_service_locator.dart';

import 'core/data/di/register_repoimpl_service_locator.dart';

void registerServiceLocator(){
  registerRepoImplServiceLocator();
  registerUseCaseServiceLocator();
}