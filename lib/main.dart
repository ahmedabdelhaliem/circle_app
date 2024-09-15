import 'package:circle/core/utils/App_router.dart';
import 'package:circle/feature/loggin/presentation/manager/cubit/cubit/otp_cubit.dart';
import 'package:circle/feature/loggin/presentation/manager/cubit/login_cubit/login_cubit_cubit.dart';
import 'package:circle/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Circle());
}

class Circle extends StatelessWidget {
  const Circle({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubitCubit(),
        ),
        BlocProvider(
          create: (context) => OtpCubit(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,

        routerConfig: AppRouter.router,
        locale: const Locale('ar', ''), // ضبط اللغة العربية
        supportedLocales: const [
          Locale('ar', ''), // إضافة اللغة العربية
          Locale('en', ''), // إضافة اللغة الإنجليزية (إذا كانت مطلوبة)
        ],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          if (locale != null) {
            for (var supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale.languageCode) {
                return supportedLocale;
              }
            }
          }
          return supportedLocales.first;
        },
      ),
    );
  }
}
