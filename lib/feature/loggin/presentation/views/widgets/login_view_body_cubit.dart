import 'package:circle/core/utils/App_router.dart';
import 'package:circle/feature/loggin/presentation/manager/cubit/login_cubit/login_cubit_cubit.dart';
import 'package:circle/feature/loggin/presentation/views/widgets/cutom_elevation_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginViewBodyCubit extends StatelessWidget {
  const LoginViewBodyCubit({super.key, required this.phoneController});

  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubitCubit, LoginCubitState>(
      listener: (context, state) {
        if (state is LoginCubitSuccess) {
          // Navigate to OTP view if phone number login is successful
          GoRouter.of(context)
              .push(AppRouter.kOtpView, extra: state.phoneNumber);
        } else if (state is LoginCubitFailure) {
          // Show error message in case of failure
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('حدث خطأ: ${state.errMessage}'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is LoginCubitLoading) {
          // Show loading indicator while login is in progress
          return const CircularProgressIndicator();
        }

        // Default button state when no action is being performed
        return CustomButtom(
          name: 'دخول',
          onPressed: () {
            String phoneNumber = phoneController.text.trim();
            // Trigger the loginPhoneNumber method in LoginCubit with the entered phone number
            BlocProvider.of<LoginCubitCubit>(context)
                .loginPhoneNumber(phoneNumber);
          },
        );
      },
    );
  }
}
