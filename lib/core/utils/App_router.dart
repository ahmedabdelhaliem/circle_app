import 'package:circle/feature/home/presentation/views/home_view.dart';
import 'package:circle/feature/loggin/presentation/views/loggin_view.dart';
import 'package:circle/feature/loggin/presentation/views/otp_view.dart';
import 'package:circle/feature/loggin/presentation/views/sing_up_view.dart';
import 'package:circle/feature/profile/presentation/view/profile_view.dart';
import 'package:circle/feature/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kLoginView = '/loginView';
  static const kOtpView = '/otpView';
  static const kSignUp = '/signUp';
  static const kProfile = '/Profile';
  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: kLoginView,
      builder: (BuildContext context, GoRouterState state) {
        return const LogginView();
      },
    ),
    GoRoute(
      path: kHomeView,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: kOtpView,
      builder: (BuildContext context, GoRouterState state) {
        // استلام قيمة phoneNumber من extra
        final String phoneNumber = state.extra as String;
        return OTPView(
          phoneNumber: phoneNumber,
        );
      },
    ),
    GoRoute(
      path: kSignUp,
      builder: (BuildContext context, GoRouterState state) {
        return const SingUpView();
      },
    ),
    GoRoute(
      path: kProfile,
      builder: (BuildContext context, GoRouterState state) {
        return const ProfileView();
      },
    )
  ]);
}
