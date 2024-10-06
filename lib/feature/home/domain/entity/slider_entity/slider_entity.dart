import 'package:hive/hive.dart';
part 'slider_entity.g.dart'; // تأكد من أن اسم الملف صحيح

@HiveType(typeId: 0)
class SliderEntity {
  @HiveField(0)
  final String image;

  SliderEntity({required this.image});
}
