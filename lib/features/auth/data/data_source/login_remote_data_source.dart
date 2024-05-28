import 'package:my_gellary/core/api/api_consumer.dart';
import 'package:my_gellary/core/api/end_point.dart';


class LoginRemoteDataSource {
  final ApiConsumer _apiConsumer;

  const LoginRemoteDataSource({
    required ApiConsumer apiConsumer,
  }) : _apiConsumer = apiConsumer;

  Future<dynamic> userLogin({
    required String email,
    required String password,
  }) async {
    final response = await _apiConsumer.post(EndPoint.login,
        isFormData: true, data: {"email": email, "password": password});
    return response;
  }
}
