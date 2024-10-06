import 'package:circle/bloc_observer.dart';
import 'package:circle/constant.dart';
import 'package:circle/core/utils/app_router.dart';
import 'package:circle/core/utils/locator.dart';
import 'package:circle/feature/home/data/repo/home_repo_impl.dart';
import 'package:circle/feature/home/domain/entity/category_entity/category_entity.dart';
import 'package:circle/feature/home/domain/use_case/fetch_category_use_case.dart';
import 'package:circle/feature/home/domain/use_case/fetch_slider_use_case.dart';
import 'package:circle/feature/home/presentation/manager/cubit/fetch_slider_cubit_cubit.dart';
import 'package:circle/feature/home/presentation/manager/fetch_category/fetch_category_cubit.dart';
import 'package:circle/feature/loggin/presentation/manager/cubit/cubit/otp_cubit.dart';
import 'package:circle/feature/loggin/presentation/manager/cubit/login_cubit/login_cubit_cubit.dart';
import 'package:circle/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; // إضافة الاستيراد الصحيح

// main function
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  locator(); // تسجيل الاعتمادات باستخدام GetIt
  // التأكد من تهيئة بيئة الويدجت بشكل صحيح

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Hive.initFlutter();
  Hive.registerAdapter(CategoryEntityAdapter());
  await Hive.openBox<CategoryEntity>(kHomeBox);
  await Hive.openBox(kLastProductBox);

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
        BlocProvider(
          create: (context) => LoginCubitCubit(),
        ),
        BlocProvider(
          create: (context) => OtpCubit(),
        ),
        BlocProvider(
          create: (context) => FetchCategoryCubit(
            FetchCategoryUseCase(getIt.get<HomeRepoImpl>()),
          )..fetchCategoryUseCase,
        ),
        BlocProvider(
          create: (context) => FetchSliderCubit(
            FetchSliderUseCase(getIt.get<HomeRepoImpl>()),
          )..fetchSliderUseCase,
        ), // إضافة BlocProvider لـ FetchSliderCubit
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        locale: const Locale('ar', ''),
        supportedLocales: const [
          Locale('ar', ''),
          Locale('en', ''),
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
