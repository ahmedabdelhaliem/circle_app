import 'package:circle/core/utils/api_service.dart';
import 'package:circle/feature/home/data/model/home_remote_data_source.dart/home_remote_data_source.dart';
import 'package:circle/feature/home/data/image_slider/image_slider.dart';
import 'package:circle/main.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../feature/home/data/repo/home_repo_impl.dart';

final getIt = GetIt.instance;

void locater() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>((HomeRepoImpl(
    HomeRemoteDataSource(getIt.get<ApiService>()),
  )));

// Alternatively you could write it if you don't like global variables
}
