part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();
  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}
class LoginLoading extends LoginState {}
class LoginSuccess extends LoginState {

}
class LoginFailure extends LoginState {
  final String errorMessage;

  const LoginFailure({
    required this.errorMessage,
  });
}
