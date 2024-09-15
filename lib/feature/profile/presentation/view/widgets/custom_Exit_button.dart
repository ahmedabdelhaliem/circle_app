import 'package:circle/core/utils/App_router.dart';
import 'package:circle/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomExitButton extends StatelessWidget {
  const CustomExitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).pushReplacement(AppRouter.kLoginView);
      },
      child: Image.asset(
        Assets.exit,
        height: 48,
        width: 167,
      ),
    );
  }
}
