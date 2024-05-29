import 'package:image_picker/image_picker.dart';
import 'package:my_gellary/core/api/api_consumer.dart';

import '../../../../core/api/end_point.dart';

class HomeRemoteDataSource {
  final ApiConsumer _apiConsumer;

  const HomeRemoteDataSource({
    required ApiConsumer apiConsumer,
  }) : _apiConsumer = apiConsumer;

  Future<dynamic> getHomeData() async {
    final response = await _apiConsumer.get(EndPoint.myGallery);
    return response;
  }

  Future<dynamic> sendImage(XFile file) async {
    final response = await _apiConsumer.post(
      EndPoint.uploadImage,
      isFormData: true,
      data: {"img": file},
    );
    return response;
  }
}
