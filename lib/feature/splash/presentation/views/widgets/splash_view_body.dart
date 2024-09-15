import 'package:circle/core/utils/App_router.dart';
import 'package:circle/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    navigatToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      child: Image.asset(
        Assets.logo,
        fit: BoxFit.fill,
      ),
    ));
  }

  void navigatToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // Get.to(const HomeView(),
        //     transition: Transition.fadeIn, duration: kTranstionDuration);
        GoRouter.of(context).push(AppRouter.kProfile);
      },
    );
  }
}
