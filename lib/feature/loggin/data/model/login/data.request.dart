import 'package:json_annotation/json_annotation.dart';

import 'auth.request.dart';
import 'user.request.dart';

part 'data.request.g.dart';

@JsonSerializable()
class Data {
  User? user;
  Auth? auth;

  Data({this.user, this.auth});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
