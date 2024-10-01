import 'package:dio/dio.dart';

/// الفئة الأساسية لتمثيل الأخطاء
abstract class Failure {
  final String message;

  const Failure({required this.message});
}

/// فئة تمثل الأخطاء المتعلقة بالخادم
class ServerFailure extends Failure {
  const ServerFailure({required super.message});

  /// مُنشئ مصنع لتحويل DioException إلى ServerFailure
  factory ServerFailure.fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure(message: 'انتهت مهلة الاتصال بخادم API.');
      case DioExceptionType.sendTimeout:
        return const ServerFailure(
            message: 'انتهت مهلة إرسال البيانات إلى خادم API.');
      case DioExceptionType.receiveTimeout:
        return const ServerFailure(
            message: 'انتهت مهلة استقبال البيانات من خادم API.');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return const ServerFailure(message: 'تم إلغاء الطلب إلى خادم API.');
      case DioExceptionType.unknown:
        return const ServerFailure(
            message: 'حدث خطأ غير متوقع. يرجى التحقق من الاتصال بالإنترنت.');
      default:
        return const ServerFailure(message: 'حدث خطأ غير معروف.');
    }
  }

  /// مُنشئ مصنع لتحويل statusCode و response إلى ServerFailure
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400) {
      return const ServerFailure(message: 'طلب غير صالح (Bad Request).');
    } else if (statusCode == 401) {
      return const ServerFailure(
          message: 'غير مصرح لك بالوصول (Unauthorized).');
    } else if (statusCode == 403) {
      return const ServerFailure(message: 'محظور الوصول (Forbidden).');
    } else if (statusCode == 404) {
      // هنا يمكنك استخدام response لتخصيص الرسالة
      String detailedMessage =
          response['message'] ?? 'المورد غير موجود (Not Found).';
      return ServerFailure(message: 'خطأ 404: $detailedMessage');
    } else if (statusCode == 500) {
      return const ServerFailure(
          message: 'خطأ في الخادم الداخلي (Internal Server Error).');
    } else {
      return ServerFailure(message: 'رمز حالة غير متوقع: $statusCode');
    }
  }
}
