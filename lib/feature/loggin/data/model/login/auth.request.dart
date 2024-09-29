import 'package:json_annotation/json_annotation.dart';

part 'auth.request.g.dart';

@JsonSerializable()
class Auth {
  String? token;

  Auth({this.token});

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);

  Map<String, dynamic> toJson() => _$AuthToJson(this);
}
