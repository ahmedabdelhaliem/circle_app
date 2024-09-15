import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_cubit_state.dart';

class LoginCubitCubit extends Cubit<LoginCubitState> {
  LoginCubitCubit() : super(LoginCubitInitial());

  Future<void> loginPhoneNumber(String phoneNumber) async {
    try {
      emit(LoginCubitLoading());

      // محاكاة عملية تسجيل الدخول برقم الهاتف (استبدلها بالمنطق الخاص بك)
      await Future.delayed(const Duration(seconds: 2));

      // التحقق من صحة رقم الهاتف
      if (phoneNumber.length == 11 && phoneNumber.startsWith('01')) {
        // نجاح تسجيل الدخول
        emit(LoginCubitSuccess(phoneNumber: phoneNumber));
      } else {
        // فشل التحقق من الرقم
        emit(LoginCubitFailure(errMessage: 'رقم الهاتف غير صحيح.'));
      }
    } catch (error) {
      // في حالة حدوث خطأ أثناء العملية
      emit(LoginCubitFailure(errMessage: error.toString()));
    }
  }
}
