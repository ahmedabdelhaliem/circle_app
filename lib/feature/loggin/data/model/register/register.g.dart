// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Register _$RegisterFromJson(Map<String, dynamic> json) => Register(
      data: json['data'],
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RegisterToJson(Register instance) => <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'code': instance.code,
    };
