import 'package:circle/feature/home/data/model/category_model/sub_category.dart';
import 'package:hive/hive.dart';

part 'category_entity.g.dart'; // تأكد من أن اسم الملف صحيح

@HiveType(typeId: 0)
class CategoryEntity {
  @HiveField(0)
  final String? imageCategory;

  @HiveField(1)
  final String titleCategory;

  @HiveField(2)
  final int catId;

  @HiveField(3)
  final List<SubCategory>? subCategory;

  CategoryEntity({
    required this.titleCategory,
    required this.imageCategory,
    required this.catId,
    required this.subCategory,
  });
}
