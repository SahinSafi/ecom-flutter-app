import 'package:bloc/bloc.dart';
import 'package:ecom/core/common/api_result.dart';
import 'package:ecom/core/common/get_it_instance.dart';
import 'package:ecom/core/domain/usecase/fetch_home_api_use_case.dart';
import 'package:ecom/core/entity/apientity/home_api_entity.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final FetchHomeApiUseCase _fetchHomeApiUseCase = getIt.get();

  HomeBloc() : super(HomeApiLoading()) {

    on<FetchHomeApiEvent>(_fetchHomeApi);
    add(FetchHomeApiEvent());
  }

  Future<void> _fetchHomeApi(FetchHomeApiEvent event, Emitter<HomeState> emit) async {

    emit(HomeApiLoading());
    final apiResult = await _fetchHomeApiUseCase.execute();
    switch(apiResult){
      case ApiSuccess() : {
        emit(HomeApiSuccess(homeApiEntity: apiResult.data));
        return;
      }
      case ApiError() : {
        emit(HomeApiError(errorMessage: apiResult.errorMessage));
        return;
      }
    }
  }

}
