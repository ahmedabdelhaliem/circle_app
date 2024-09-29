// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

City _$CityFromJson(Map<String, dynamic> json) => City(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      deliveryCost: (json['delivery_cost'] as num?)?.toInt(),
      regionId: (json['region_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'delivery_cost': instance.deliveryCost,
      'region_id': instance.regionId,
    };
