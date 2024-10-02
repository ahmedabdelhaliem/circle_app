class SubCategory {
  int? id;
  String? image;
  String? title;
  List<dynamic>? subCategories;
  String? createdAt;

  SubCategory({
    this.id,
    this.image,
    this.title,
    this.subCategories,
    this.createdAt,
  });

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        id: json['id'] as int?,
        image: json['image'] as String?,
        title: json['title'] as String?,
        subCategories: json['sub_categories'] as List<dynamic>?,
        createdAt: json['created_at'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'title': title,
        'sub_categories': subCategories,
        'created_at': createdAt,
      };
}
