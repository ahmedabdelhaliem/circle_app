import 'package:circle/constant.dart';
import 'package:circle/feature/home/domain/entity/category_entity/category_entity.dart';
import 'package:circle/feature/home/domain/entity/slider_entity/slider_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<SliderEntity> fetchImageSlider();
  List<CategoryEntity> fetchCategory();
  List<CategoryEntity> fetchLastProduct();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<CategoryEntity> fetchCategory() {
    var box = Hive.box<CategoryEntity>(kHomeBox);
    return box.values.toList();
  }

  @override
  List<SliderEntity> fetchImageSlider() {
    // TODO: implement fetchImageSlider
    throw UnimplementedError();
  }

  @override
  List<CategoryEntity> fetchLastProduct() {
    var box = Hive.box<CategoryEntity>(kHomeBox);
    return box.values.toList();
  }
}
