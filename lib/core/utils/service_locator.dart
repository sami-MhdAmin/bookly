import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/home/data/repos/home_repo_impl.dart';
import 'services/api_service.dart';

final getIt = GetIt.instance;

void setupSeviceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
}
