// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.error.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Api _$ApiFromJson(Map<String, dynamic> json) => Api(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ApiToJson(Api instance) => <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'code': instance.code,
    };
