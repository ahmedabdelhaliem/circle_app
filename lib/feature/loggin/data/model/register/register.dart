import 'package:json_annotation/json_annotation.dart';

part 'register.g.dart';

@JsonSerializable()
class Register {
  dynamic data;
  String? message;
  int? code;

  Register({this.data, this.message, this.code});

  factory Register.fromJson(Map<String, dynamic> json) {
    return _$RegisterFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RegisterToJson(this);
}
