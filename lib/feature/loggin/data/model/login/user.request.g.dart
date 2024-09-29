// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      phoneCode: json['phone_code'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      points: (json['points'] as num?)?.toInt(),
      invitationCode: json['invitation_code'] as String?,
      cityId: (json['city_id'] as num?)?.toInt(),
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone_code': instance.phoneCode,
      'phone': instance.phone,
      'image': instance.image,
      'points': instance.points,
      'invitation_code': instance.invitationCode,
      'city_id': instance.cityId,
      'city': instance.city,
    };
