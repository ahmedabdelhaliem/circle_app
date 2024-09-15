import 'package:circle/core/utils/assets.dart';
import 'package:circle/feature/loggin/presentation/manager/cubit/cubit/otp_cubit.dart';
import 'package:circle/feature/loggin/presentation/views/widgets/custom_pin_code.dart';
import 'package:circle/feature/loggin/presentation/views/widgets/cutom_elevation_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtpViewBody extends StatefulWidget {
  final String phoneNumber;

  const OtpViewBody({
    super.key,
    required this.phoneNumber,
  });

  @override
  State<OtpViewBody> createState() => _OtpViewBodyState();
}

class _OtpViewBodyState extends State<OtpViewBody> {
  final TextEditingController pinCodeController = TextEditingController();
  final FocusNode pinCodeFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    context.read<OtpCubit>().sendOtp(widget.phoneNumber.trim());
  }

  @override
  void dispose() {
    pinCodeController.dispose();
    pinCodeFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OtpCubit, OtpState>(
      listener: (context, state) {
        if (state is OtpVerified) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('OTP Verified successfully!')),
          );
        } else if (state is OtpError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      },
      builder: (context, state) {
        if (state is OtpLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.enterOtp, height: 150, width: 225),
              const Text(
                'من فضلك ادخل رمز التحقق المرسل إلى رقم الجوال',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                widget.phoneNumber,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              PinCodeWidget(
                controller: pinCodeController,
                focus: pinCodeFocus,
                pinLength: 6,
                textSubmit: (value) async {
                  await context.read<OtpCubit>().verifyOtp(value);
                },
              ),
              const SizedBox(height: 20),
              if (state is OtpSent) ...[
                CustomButtom(
                  name: 'تأكيد',
                  onPressed: () async {
                    await context
                        .read<OtpCubit>()
                        .verifyOtp(pinCodeController.text.trim());
                  },
                ),
              ],
              if (state is OtpError) ...[
                Text(state.message, style: const TextStyle(color: Colors.red)),
              ],
            ],
          ),
        );
      },
    );
  }
}
