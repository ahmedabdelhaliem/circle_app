import 'package:circle/core/networking/api_constant.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // مثال لطلب GET
  // @GET('/users')
  // Future<List<User>> getUsers();

  // // مثال لطلب POST
  // @POST('/users')
  // Future<User> createUser(@Body() User user);
}
