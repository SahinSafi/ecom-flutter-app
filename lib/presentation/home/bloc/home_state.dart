part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();
}

final class HomeApiLoading extends HomeState {

  const HomeApiLoading();

  @override
  List<Object?> get props => [];

}

final class HomeApiSuccess extends HomeState {

  final HomeApiEntity homeApiEntity;

  const HomeApiSuccess({required this.homeApiEntity});

  @override
  List<Object?> get props => [homeApiEntity];

}

final class HomeApiError extends HomeState {

  final String errorMessage;

  const HomeApiError({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];

}


