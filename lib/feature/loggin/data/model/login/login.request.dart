import 'package:json_annotation/json_annotation.dart';

import 'data.request.dart';

part 'login.request.g.dart';

@JsonSerializable()
class Login {
  Data? data;
  String? message;
  int? code;

  Login({this.data, this.message, this.code});

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  Map<String, dynamic> toJson() => _$LoginToJson(this);
}
