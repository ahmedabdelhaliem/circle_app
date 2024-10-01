import 'package:circle/bloc_observer.dart';
import 'package:circle/core/utils/app_router.dart';
import 'package:circle/core/utils/locator.dart';
import 'package:circle/feature/home/data/repo/home_repo_impl.dart';
import 'package:circle/feature/home/presentation/manager/cubit/fetch_slider_cubit_cubit.dart';
import 'package:circle/feature/loggin/presentation/manager/cubit/cubit/otp_cubit.dart';
import 'package:circle/feature/loggin/presentation/manager/cubit/login_cubit/login_cubit_cubit.dart';
import 'package:circle/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';

// main function
void main() async {
  // Initialize dependencies
  locater(); // تسجيل الاعتمادات باستخدام GetIt
  WidgetsFlutterBinding
      .ensureInitialized(); // التأكد من تهيئة بيئة الويدجت بشكل صحيح

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Bloc observer to monitor transitions (for debugging purposes)
  Bloc.observer = SimpleBlocObserver();

  // Run the app
  runApp(const Circle());
}

// Main App Widget
class Circle extends StatelessWidget {
  const Circle({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Providing the login cubit
        BlocProvider(
          create: (context) => LoginCubitCubit(),
        ),
        // Providing the OTP cubit
        BlocProvider(
          create: (context) => OtpCubit(),
        ),
        BlocProvider(
          create: (context) {
            return FetchSliderCubit(getIt.get<HomeRepoImpl>())..fetchSlider();
          },
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false, // Remove debug banner
        routerConfig: AppRouter.router, // Using a custom router for navigation

        // Localization settings
        locale: const Locale('ar', ''), // Default to Arabic locale
        supportedLocales: const [
          Locale('ar', ''), // Arabic locale
          Locale('en', ''), // English locale (if needed)
        ],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],

        // Locale resolution callback
        localeResolutionCallback: (locale, supportedLocales) {
          if (locale != null) {
            for (var supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale.languageCode) {
                return supportedLocale;
              }
            }
          }
          return supportedLocales.first; // Default to first supported locale
        },
      ),
    );
  }
}
