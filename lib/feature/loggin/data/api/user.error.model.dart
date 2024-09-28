import 'package:json_annotation/json_annotation.dart';

import 'city.error.model.dart';

part 'user.error.model.g.dart';

@JsonSerializable()
class User {
  int? id;
  @JsonKey(name: 'first_name')
  String? firstName;
  @JsonKey(name: 'last_name')
  String? lastName;
  @JsonKey(name: 'phone_code')
  String? phoneCode;
  String? phone;
  String? image;
  int? points;
  @JsonKey(name: 'invitation_code')
  String? invitationCode;
  @JsonKey(name: 'city_id')
  int? cityId;
  City? city;

  User({
    this.id,
    this.firstName,
    this.lastName,
    this.phoneCode,
    this.phone,
    this.image,
    this.points,
    this.invitationCode,
    this.cityId,
    this.city,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
