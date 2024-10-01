import 'data.dart';

class ImageSlider {
  Data? data;
  String? message;
  int? code;

  ImageSlider({this.data, this.message, this.code});

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
