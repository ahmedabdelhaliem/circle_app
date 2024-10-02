import 'sub_category.dart';

class Datum {
  int? id;
  String? image;
  String? title;
  List<SubCategory>? subCategories;
  String? createdAt;

  Datum({
    this.id,
    this.image,
    this.title,
    this.subCategories,
    this.createdAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
