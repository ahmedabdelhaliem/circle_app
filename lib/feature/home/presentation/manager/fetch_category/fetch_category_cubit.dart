import 'package:bloc/bloc.dart';
import 'package:circle/feature/home/domain/entity/category_entity/category_entity.dart';
import 'package:circle/feature/home/domain/use_case/fetch_category_use_case.dart';
import 'package:meta/meta.dart';

part 'fetch_category_state.dart';

class FetchCategoryCubit extends Cubit<FetchCategoryState> {
  final FetchCategoryUseCase fetchCategoryUseCase;
  FetchCategoryCubit(this.fetchCategoryUseCase) : super(FetchCategoryInitial());
  Future<void> fetchCategoryCubit() async {
    emit(FetchCategoryLoading());
    final category = await fetchCategoryUseCase.call();
    category.fold((failure) {
      emit(FetchCategoryFailure(failure.message));
    }, (items) {
      emit(FetchCategorySuccuss(items));
    });
  }
}
