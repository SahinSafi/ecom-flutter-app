import 'package:bloc/bloc.dart';
import 'package:ecom/core/common/api_result.dart';
import 'package:ecom/core/common/get_it_instance.dart';
import 'package:ecom/core/domain/usecase/fetch_home_api_use_case.dart';
import 'package:ecom/core/domain/usecase/fetch_products_api_use_case.dart';
import 'package:ecom/core/entity/apientity/home_api_entity.dart';
import 'package:ecom/core/entity/apientity/products_api_entity.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final FetchHomeApiUseCase _fetchHomeApiUseCase = getIt.get();
  final FetchProductsApiUseCase _fetchProductsApiUseCase = getIt.get();

  HomeBloc() : super(HomeState(homeApiEntity: HomeApiEntity(), productsApiEntity: ProductsApiEntity())) {

    on<FetchHomeApiEvent>(_fetchHomeApi);
    add(FetchHomeApiEvent());
  }

  Future<void> _fetchHomeApi(FetchHomeApiEvent event, Emitter<HomeState> emit) async {

    emit(state.copyWith(isLoading: true));
    final homeApiResult = await _fetchHomeApiUseCase.execute();
    final productApiResult = await _fetchProductsApiUseCase.execute(params: 1);
    switch(homeApiResult){
      case ApiSuccess() : {
        switch(productApiResult){
          case ApiSuccess() : {
            emit(state.copyWith(homeApiEntity: homeApiResult.data, productsApiEntity: productApiResult.data));
            return;
          }
          case ApiError() : {
            emit(state.copyWith(errorMessage: productApiResult.errorMessage));
            return;
          }
        }
      }
      case ApiError() : {
        emit(state.copyWith(errorMessage: homeApiResult.errorMessage));
        return;
      }
    }
  }


}
