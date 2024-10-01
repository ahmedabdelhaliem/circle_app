import 'package:circle/core/error/failure.dart';
import 'package:circle/feature/home/data/home_remote_data_source.dart/home_remote_data_source.dart';
import 'package:circle/feature/home/data/image_slider/image_slider.dart';
import 'package:dartz/dartz.dart'; // استيراد مكتبة dartz لاستخدام Either

class HomeRepoImpl {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl(this.homeRemoteDataSource);

  Future<Either<Failure, ImageSlider>> fetchData() async {
    try {
      // استدعاء بيانات الـ Slider من مصدر البيانات البعيد
      var slideImage = await homeRemoteDataSource.fetchImageSlider();
      // في حالة النجاح، نُرجع Right مع البيانات
      return Right(slideImage);
    } catch (e) {
      // في حالة الفشل، نُرجع Left مع Failure مع رسالة توضيحية
      return Left(ServerFailure(message: 'Error fetching slider data: $e'));
    }
  }
}
