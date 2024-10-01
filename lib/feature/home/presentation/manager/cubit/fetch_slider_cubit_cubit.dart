import 'package:bloc/bloc.dart';
import 'package:circle/feature/home/data/image_slider/image_slider.dart';
import 'package:circle/feature/home/data/repo/home_repo_impl.dart';
import 'package:meta/meta.dart';
import 'package:circle/core/error/failure.dart';

part 'fetch_slider_cubit_state.dart';

class FetchSliderCubit extends Cubit<FetchSliderCubitState> {
  final HomeRepoImpl homeRepoImpl;

  FetchSliderCubit(this.homeRepoImpl) : super(FetchSliderCubitInitial());

  Future<void> fetchSlider() async {
    // قم بإصدار الحالة Loading أثناء جلب البيانات
    emit(FetchSliderCubitLoading());

    final response = await homeRepoImpl.fetchData();

    // استخدام fold لمعالجة النتيجتين (فشل أو نجاح)
    response.fold(
      (Failure failure) {
        emit(FetchSliderCubitFailure(errorMessage: failure.message)); // فشل
      },
      (ImageSlider items) {
        emit(FetchSliderCubitSuccess(item: items)); // نجاح
      },
    );
  }
}
