import 'package:bloc/bloc.dart';
import 'package:circle/feature/home/domain/entity/slider_entity/slider_entity.dart';
import 'package:circle/feature/home/domain/use_case/fetch_slider_use_case.dart';
import 'package:meta/meta.dart';
import 'package:circle/core/error/failure.dart';

part 'fetch_slider_cubit_state.dart';

class FetchSliderCubit extends Cubit<FetchSliderCubitState> {
  final FetchSliderUseCase fetchSliderUseCase;
  FetchSliderCubit(this.fetchSliderUseCase) : super(FetchSliderCubitInitial());

  Future<void> fetchSlider() async {
    // قم بإصدار الحالة Loading أثناء جلب البيانات
    emit(FetchSliderCubitLoading());

    final response = await fetchSliderUseCase.call();

    // استخدام fold لمعالجة النتيجتين (فشل أو نجاح)
    response.fold(
      (Failure failure) {
        emit(FetchSliderCubitFailure(errorMessage: failure.message)); // فشل
      },
      (List<SliderEntity> items) {
        emit(FetchSliderCubitSuccess(item: items)); // نجاح
      },
    );
  }
}
