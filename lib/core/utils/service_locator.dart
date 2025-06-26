import 'package:bookly_app/Features/home/data/repos/home_repo_imp.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<Dio>(Dio());
    getIt.registerSingleton<ApiService>(ApiService(getIt.get<Dio>()));
    getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(getIt.get<ApiService>()));


}
