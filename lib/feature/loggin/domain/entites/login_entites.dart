import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class LoginEntites {
  @HiveField(0)
  final String phoneNumber;

  LoginEntites({required this.phoneNumber});
}
