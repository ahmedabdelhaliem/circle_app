import 'package:circle/feature/loggin/presentation/views/widgets/loggin_view_body.dart';
import 'package:flutter/material.dart';

class LogginView extends StatelessWidget {
  const LogginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginViewBody(),
    );
  }
}
