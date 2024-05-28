import 'package:dartz/dartz.dart';
import 'package:my_gellary/core/error/error_model.dart';
import 'package:my_gellary/core/error/exception.dart';
import 'package:my_gellary/features/auth/data/data_source/login_remote_data_source.dart';

import '../../../../core/cache/cache_helper.dart';
import '../model/login_model.dart';

class LoginRepo{

  final LoginRemoteDataSource _loginRemoteDataSource;

  const LoginRepo({
    required LoginRemoteDataSource loginRemoteDataSource,
  }) : _loginRemoteDataSource = loginRemoteDataSource;

  Future <Either<ErrorModel,LoginModel>>userLogin({required String email,required String password})async{
    try{
     final  response= await _loginRemoteDataSource.userLogin(email: email, password: password);
     final user=LoginModel.fromJson(response);
     CacheHelper().saveData(key: "token", value: user.token);
     return Right(user);
    }on ServerException catch(e){
      return Left(e.errorModel);
    }
  }
}