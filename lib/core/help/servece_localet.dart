import 'package:book_app/Features/home/Data/repo/home_repo_impelmntation.dart';
import 'package:book_app/core/help/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void   stupServiceApi() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpelmntation>(
    HomeRepoImpelmntation(
      getIt.get<ApiService>(),
    ),
  );
}
