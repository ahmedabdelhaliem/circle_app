// import 'package:circle/core/networking/api_reslt/api_service.dart';
// import 'package:circle/core/networking/api_result.dart';
// import 'package:circle/feature/loggin/data/model/login/auth.request.dart';
// import 'package:circle/feature/loggin/data/model/login/login.request.dart';

// class LoginRepo {
//   final ApiService apiService;

//   LoginRepo(this.apiService);
//   Future<ApiResult<Login>> login(Login login) async {
//     try {
//       final response = await apiService.login(login as Auth);
//       return ApiResult.success(response);
//     } on Exception catch (error) {
//       return ApiResult.failure(error);
//     }
//   }
// }
// // 