import 'package:circle/core/error/failure.dart';
import 'package:circle/core/use_case/use_case.dart';
import 'package:circle/feature/home/domain/category_entity/category_entity.dart';
import 'package:circle/feature/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchLastProduct extends UseCase<List<CategoryEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchLastProduct(this.homeRepo);

  @override
  Future<Either<Failure, List<CategoryEntity>>> call([NoParam? Param]) {
    // TODO: implement call
    return homeRepo.fetchLastProduct();
  }
}
