import 'package:json_annotation/json_annotation.dart';

import 'auth.error.model.dart';
import 'user.error.model.dart';

part 'data.error.model.g.dart';

@JsonSerializable()
class Data {
  User? user;
  Auth? auth;

  Data({this.user, this.auth});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
