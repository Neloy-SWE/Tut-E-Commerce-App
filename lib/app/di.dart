import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tut_e_commerce_app/app/app_prefs.dart';
import 'package:tut_e_commerce_app/data/data_sources/remote_data_source.dart';
import 'package:tut_e_commerce_app/data/network/app_api.dart';
import 'package:tut_e_commerce_app/data/network/dio_factory.dart';
import 'package:tut_e_commerce_app/data/network/network_info.dart';
import 'package:tut_e_commerce_app/domain/repository/repository.dart';
import 'package:tut_e_commerce_app/domain/usecase/login_usecase.dart';
import 'package:tut_e_commerce_app/presentation/login/login_viewmodel.dart';

import '../data/repository/repository_impl.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  final sharedPrefs = await SharedPreferences.getInstance();

  instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);

  instance
      .registerLazySingleton<AppPreferences>(() => AppPreferences(instance()));

  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(DataConnectionChecker()));

  instance.registerLazySingleton<DioFactory>(() => DioFactory(instance()));

  final dio = await instance<DioFactory>().getDio();
  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));

  instance.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImplementer(instance()));
  instance.registerLazySingleton<Repository>(
      () => RepositoryImpl(instance(), instance()));
}

initLoginModule() {
  if (!GetIt.I.isRegistered<LoginUseCase>()) {
    instance.registerFactory<LoginUseCase>(() => LoginUseCase(instance()));
    instance.registerFactory<LoginViewModel>(() => LoginViewModel(instance()));
  }
}
