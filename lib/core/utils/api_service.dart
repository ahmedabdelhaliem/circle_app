import 'package:circle/core/utils/api_constant.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);
  final baseUrl = ApiConstant.slider;

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    try {
      final response = await _dio.get('$baseUrl$endPoint');
      return response.data; // تأكد من أن response.data يحتوي على الشكل المناسب
    } catch (e) {
      // يمكن إضافة معالجة الأخطاء هنا إذا لزم الأمر
      throw Exception("Failed to fetch data: $e");
    }
  }
}
