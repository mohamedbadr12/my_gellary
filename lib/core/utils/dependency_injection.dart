import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_gellary/core/api/dio_consumer.dart';
import 'package:my_gellary/features/auth/data/data_source/login_remote_data_source.dart';
import 'package:my_gellary/features/auth/data/repositry/login_repo.dart';
import 'package:my_gellary/features/auth/presentation/manger/login/login_cubit.dart';


final sl = GetIt.instance;

class ServicesLocator {
  static void init() {
    sl.registerLazySingleton<LoginCubit>(() => LoginCubit(sl()));
    sl.registerLazySingleton<LoginRepo>(() =>  LoginRepo(loginRemoteDataSource: sl()));
    sl.registerLazySingleton<LoginRemoteDataSource>(() =>  LoginRemoteDataSource(apiConsumer: sl()));
    sl.registerLazySingleton<DioConsumer>(() => DioConsumer(sl()));
    sl.registerLazySingleton<Dio>(() => Dio());

  }
}
