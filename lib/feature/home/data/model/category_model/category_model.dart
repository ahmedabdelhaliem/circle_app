import 'package:circle/feature/home/domain/entity/category_entity/category_entity.dart';

import 'sub_category.dart';

class CategoryModel extends CategoryEntity {
  int? id;
  String? image;
  String? title;
  List<SubCategory>? subCategories;
  String? createdAt;

  CategoryModel({
    this.id,
    this.image,
    this.title,
    this.subCategories,
    this.createdAt,
  }) : super(
            subCategory: subCategories ?? [],
            imageCategory: image ?? '',
            catId: id ?? 0,
            titleCategory: title ?? '');

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json['id'] as int?,
        image: json['image'] as String?,
        title: json['title'] as String?,
        subCategories: (json['sub_categories'] as List<dynamic>?)
            ?.map((e) => SubCategory.fromJson(e as Map<String, dynamic>))
            .toList(),
        createdAt: json['created_at'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'title': title,
        'sub_categories': subCategories?.map((e) => e.toJson()).toList(),
        'created_at': createdAt,
      };
}
