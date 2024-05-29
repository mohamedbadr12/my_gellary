import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_gellary/core/error/error_model.dart';
import 'package:my_gellary/features/home_gallery/data/data_source/home_remote_data_source.dart';
import 'package:my_gellary/features/home_gallery/data/model/home_model/home_model.dart';

import '../../../../core/error/exception.dart';

class HomeRepo {
  final HomeRemoteDataSource _homeRemoteDataSource;

  const HomeRepo({
    required HomeRemoteDataSource homeRemoteDataSource,
  }) : _homeRemoteDataSource = homeRemoteDataSource;

  Future<Either<ErrorModel, HomeModel>> getHomeData() async {
    try {
      final response = await _homeRemoteDataSource.getHomeData();
      var homeModel = HomeModel.fromJson(response);

      return Right(homeModel);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  Future<Either<ErrorModel, dynamic>> sendImage(XFile file) async {
    try {
      final response = await _homeRemoteDataSource.sendImage(file);
      return Right(response);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
}
