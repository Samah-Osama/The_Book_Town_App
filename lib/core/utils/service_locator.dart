import 'package:booly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:booly_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServeiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      dio: Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      apiService: getIt.get<ApiService>(),
    ),
  );
}
