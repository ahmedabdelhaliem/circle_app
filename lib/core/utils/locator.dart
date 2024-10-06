import 'package:circle/core/utils/api_service.dart';
import 'package:circle/feature/home/data/data_source.dart/home_remote_data_source.dart/home_local_data_source.dart';
import 'package:circle/feature/home/data/data_source.dart/home_remote_data_source.dart/home_remote_data_source.dart';
import 'package:circle/feature/home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void locator() {
  getIt.registerSingleton(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
        homeRemoteDataSource: HomeRemoteDataSourceImpl(getIt.get<ApiService>()),
        homeLocalDataSourceImpl: HomeLocalDataSourceImpl()),
  );
}
