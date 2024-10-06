import 'package:circle/constant.dart';
import 'package:circle/feature/home/domain/entity/category_entity/category_entity.dart';
import 'package:hive/hive.dart';

void saveData(List<CategoryEntity> elements, nameBox) async {
  var box = await Hive.openBox<CategoryEntity>(kHomeBox);

  box.addAll(elements);
}
