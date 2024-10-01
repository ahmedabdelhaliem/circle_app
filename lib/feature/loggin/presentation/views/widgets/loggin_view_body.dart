import 'package:circle/core/utils/assets.dart';
import 'package:circle/core/utils/styles.dart';
import 'package:circle/feature/loggin/presentation/views/widgets/login_view_body_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:circle/feature/loggin/presentation/views/widgets/custom_text_field.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({
    super.key,
  });
  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  Assets.loginLogo, // صورة تسجيل الدخول
                  height: 120,
                  width: 133,
                ),
              ),
              const SizedBox(height: 64),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'أهلاً بك ..!',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    color: Colors.grey,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'سجل الدخول في التطبيق واطلب الآن ..',
                  style: Styles.textStyle12,
                ),
              ),
              const SizedBox(height: 32),
              CustomTextFormField(
                textInputType: TextInputType.phone,
                controller: phoneController,
                hint: 'دخول',
                prefix: const Icon(
                  CupertinoIcons.phone,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 32),
              LoginViewBodyCubit(
                phoneController: phoneController,
              )
            ],
          ),
        ),
      ),
    );
  }
}
