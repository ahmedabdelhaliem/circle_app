part of 'login_cubit_cubit.dart';

@immutable
sealed class LoginCubitState {}

final class LoginCubitInitial extends LoginCubitState {}

final class LoginCubitLoading extends LoginCubitState {}

final class LoginCubitFailure extends LoginCubitState {
  final String errMessage;

  LoginCubitFailure({required this.errMessage});
}

final class LoginCubitSuccess extends LoginCubitState {
  final String phoneNumber;

  LoginCubitSuccess({required this.phoneNumber});
}
