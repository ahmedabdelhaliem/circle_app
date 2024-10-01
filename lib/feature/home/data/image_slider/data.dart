import 'slider.dart';

class Data {
  List<Slider>? slider;
  int? notificationCount;

  Data({this.slider, this.notificationCount});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        slider: (json['slider'] as List<dynamic>?)
            ?.map((e) => Slider.fromJson(e as Map<String, dynamic>))
            .toList(),
        notificationCount: json['notification_count'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'slider': slider?.map((e) => e.toJson()).toList(),
        'notification_count': notificationCount,
      };
}
