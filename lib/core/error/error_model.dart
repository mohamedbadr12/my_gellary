
import '../api/end_point.dart';

class ErrorModel{
  final int status;
  final String errorMessage;

  ErrorModel({required this.status, required this.errorMessage});

  factory ErrorModel.fromJson(Map<String,dynamic>jsonData){
    return ErrorModel(
        status: jsonData[ApiKeys.status],
        errorMessage: jsonData[ApiKeys.errMessage]);

  }
}