import 'package:circle/core/error/failure.dart';
import 'package:circle/feature/home/domain/category_entity/category_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<CategoryEntity>>> fetchCategory();
  Future<Either<Failure, List<CategoryEntity>>> fetchLastProduct();
}
