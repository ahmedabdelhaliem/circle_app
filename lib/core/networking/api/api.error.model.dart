import 'package:json_annotation/json_annotation.dart';

part 'api.error.model.g.dart';

@JsonSerializable()
class Api {
  dynamic data;
  String? message;
  int? code;

  Api({this.data, this.message, this.code});

  factory Api.fromJson(Map<String, dynamic> json) => _$ApiFromJson(json);

  Map<String, dynamic> toJson() => _$ApiToJson(this);
}
