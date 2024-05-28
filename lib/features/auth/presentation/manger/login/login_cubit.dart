import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_gellary/features/auth/data/repositry/login_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginInitial());

 final  LoginRepo loginRepo;

  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();


  userLogin()async{
    emit(LoginLoading());
    var response=await loginRepo.userLogin(email: email.text, password: password.text);
    response .fold((error) => emit(LoginFailure(errorMessage: error.errorMessage)),
            (r) => emit(LoginSuccess()));

  }
}
