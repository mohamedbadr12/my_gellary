import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_gellary/core/api/dio_consumer.dart';
import 'package:my_gellary/features/auth/data/data_source/login_remote_data_source.dart';
import 'package:my_gellary/features/auth/data/repositry/login_repo.dart';
import 'package:my_gellary/features/auth/presentation/manger/login/login_cubit.dart';
import 'package:my_gellary/features/home_gallery/data/data_source/home_remote_data_source.dart';
import 'package:my_gellary/features/home_gallery/data/repositry/home_repo.dart';
import 'package:my_gellary/features/home_gallery/presentation/manger/home_cubit/home_cubit.dart';

import '../api/api_consumer.dart';


final sl = GetIt.instance;

class ServicesLocator {
  static void init() {
    sl.registerLazySingleton<LoginCubit>(() => LoginCubit(sl()));
    sl.registerLazySingleton<LoginRepo>(() =>
        LoginRepo(loginRemoteDataSource: sl()));
    sl.registerLazySingleton<LoginRemoteDataSource>(() =>
        LoginRemoteDataSource(apiConsumer: sl()));
    sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(sl()));
    sl.registerLazySingleton<Dio>(() => Dio());
    sl.registerLazySingleton<HomeCubit>(() => HomeCubit(sl()));
    sl.registerLazySingleton<HomeRepo>(() =>
        HomeRepo(homeRemoteDataSource: sl()));
    sl.registerLazySingleton<HomeRemoteDataSource>(() =>
        HomeRemoteDataSource(apiConsumer: sl()));
  }
}
