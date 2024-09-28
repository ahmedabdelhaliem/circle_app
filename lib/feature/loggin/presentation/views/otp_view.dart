import 'package:circle/feature/loggin/presentation/views/widgets/otp_view_body.dart';
import 'package:flutter/material.dart';

class OTPView extends StatelessWidget {
  final String phoneNumber;
  const OTPView({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OtpViewBody(
        phoneNumber: phoneNumber,
      ),
    );
  }
}

// وظيفة لبدء المؤقت
