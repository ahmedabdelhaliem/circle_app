import 'package:circle/core/error/failure.dart';
import 'package:circle/core/use_case/use_case.dart';
import 'package:circle/feature/home/domain/entity/slider_entity/slider_entity.dart';
import 'package:circle/feature/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchSliderUseCase extends UseCase<List<SliderEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchSliderUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<SliderEntity>>> call([NoParam? Param]) {
    return homeRepo.fetchImageSlider();
  }
}
