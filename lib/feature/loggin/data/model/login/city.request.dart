import 'package:json_annotation/json_annotation.dart';

part 'city.request.g.dart';

@JsonSerializable()
class City {
  int? id;
  String? title;
  @JsonKey(name: 'delivery_cost')
  int? deliveryCost;
  @JsonKey(name: 'region_id')
  int? regionId;

  City({this.id, this.title, this.deliveryCost, this.regionId});

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);
}
