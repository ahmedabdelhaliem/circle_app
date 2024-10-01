class Slider {
  int? id;
  String? image;
  int? categoryId;
  int? subCategoryId;

  Slider({this.id, this.image, this.categoryId, this.subCategoryId});

  factory Slider.fromJson(Map<String, dynamic> json) => Slider(
        id: json['id'] as int?,
        image: json['image'] as String?,
        categoryId: json['category_id'] as int?,
        subCategoryId: json['sub_category_id'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'category_id': categoryId,
        'sub_category_id': subCategoryId,
      };
}
