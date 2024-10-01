part of 'fetch_slider_cubit_cubit.dart';

@immutable
sealed class FetchSliderCubitState {}

final class FetchSliderCubitInitial extends FetchSliderCubitState {}

final class FetchSliderCubitLoading extends FetchSliderCubitState {}

final class FetchSliderCubitFailure extends FetchSliderCubitState {
  final String errorMessage;

  FetchSliderCubitFailure({required this.errorMessage});
}

final class FetchSliderCubitSuccess extends FetchSliderCubitState {
  final ImageSlider item;

  FetchSliderCubitSuccess({required this.item});
}
