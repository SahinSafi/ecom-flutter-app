part of 'home_bloc.dart';

class HomeState extends Equatable {

  final bool isLoading;
  final String errorMessage;
  final HomeApiEntity homeApiEntity;
  final ProductsApiEntity productsApiEntity;

  HomeState({
    this.isLoading = true,
    this.errorMessage = "",
    required this.homeApiEntity,
    required this.productsApiEntity
  });

  HomeState copyWith({
    bool? isLoading,
    String? errorMessage,
    HomeApiEntity? homeApiEntity,
    ProductsApiEntity? productsApiEntity
  }) {
    return HomeState(
      isLoading: isLoading ?? false,
      errorMessage: errorMessage ?? "",
      homeApiEntity: homeApiEntity ?? this.homeApiEntity,
      productsApiEntity: productsApiEntity ?? this.productsApiEntity
    );
  }

  @override
  List<Object?> get props => [isLoading, errorMessage, homeApiEntity, productsApiEntity];

}


