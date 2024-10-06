import 'package:circle/feature/home/domain/entity/slider_entity/slider_entity.dart';

import 'data.dart';

class ImageSlider extends SliderEntity {
  Data? data;
  String? message;
  int? code;

  ImageSlider({this.data, this.message, this.code})
      : super(
            image: data?.slider?.isNotEmpty == true
                ? data!.slider!.first.image ?? ''
                : '');

  factory ImageSlider.fromJson(Map<String, dynamic> json) => ImageSlider(
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
        message: json['message'] as String?,
        code: json['code'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'data': data?.toJson(),
        'message': message,
        'code': code,
      };
}
