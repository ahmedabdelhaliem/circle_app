part of 'fetch_category_cubit.dart';

@immutable
sealed class FetchCategoryState {}

final class FetchCategoryInitial extends FetchCategoryState {}

final class FetchCategoryLoading extends FetchCategoryState {}

final class FetchCategorySuccuss extends FetchCategoryState {
  final List<CategoryEntity> elements;

  FetchCategorySuccuss(this.elements);
}

final class FetchCategoryFailure extends FetchCategoryState {
  final String errorMessage;

  FetchCategoryFailure(this.errorMessage);
}
