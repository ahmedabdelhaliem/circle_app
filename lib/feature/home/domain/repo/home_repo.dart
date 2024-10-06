import 'package:circle/core/error/failure.dart';
import 'package:circle/feature/home/domain/entity/category_entity/category_entity.dart';
import 'package:circle/feature/home/domain/entity/slider_entity/slider_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<SliderEntity>>> fetchImageSlider();
  Future<Either<Failure, List<CategoryEntity>>> fetchCategory();
  Future<Either<Failure, List<CategoryEntity>>> fetchLastProduct();
}
