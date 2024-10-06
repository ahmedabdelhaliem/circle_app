import 'package:circle/core/error/failure.dart';
import 'package:circle/feature/home/data/data_source.dart/home_remote_data_source.dart/home_local_data_source.dart';
import 'package:circle/feature/home/data/data_source.dart/home_remote_data_source.dart/home_remote_data_source.dart';
import 'package:circle/feature/home/domain/entity/category_entity/category_entity.dart';
import 'package:circle/feature/home/domain/entity/slider_entity/slider_entity.dart';
import 'package:circle/feature/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSourceImpl homeLocalDataSourceImpl;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl(
      {required this.homeLocalDataSourceImpl,
      required this.homeRemoteDataSource});
  @override
  Future<Either<Failure, List<CategoryEntity>>> fetchCategory() async {
    List<CategoryEntity> category;

    try {
      category = homeLocalDataSourceImpl.fetchCategory();
      if (category.isNotEmpty) {
        return right(category);
      }
      category = await homeRemoteDataSource.fetchCategory();
      return right(category);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e)); // TODO
      }
      return left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<SliderEntity>>> fetchImageSlider() async {
    List<SliderEntity> slider;
    try {
      slider = homeLocalDataSourceImpl.fetchImageSlider();
      if (slider.isNotEmpty) {
        return right(slider);
      }
      slider = await homeRemoteDataSource.fetchImageSlider();
      return right(slider);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(message: e.toString()));
      // TODO
    }
  }

  @override
  Future<Either<Failure, List<CategoryEntity>>> fetchLastProduct() {
    // TODO: implement fetchLastProduct
    throw UnimplementedError();
  }
}
