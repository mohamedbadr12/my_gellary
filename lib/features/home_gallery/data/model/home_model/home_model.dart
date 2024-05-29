import 'package:equatable/equatable.dart';

// Define the HomeModel class
class HomeModel extends Equatable {
  final String status;
  final Data data;
  final String message;

  // Constructor with named parameters and required annotation for null safety
  const HomeModel({
    required this.status,
    required this.data,
    required this.message,
  });

  // Factory method to create an instance from JSON
  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      status: json['status'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
    );
  }

  // Override the Equatable props to compare objects
  @override
  List<Object> get props => [status, data, message];
}

// Define the Data class
class Data extends Equatable {
  final List<String> images;

  // Constructor with named parameters and required annotation for null safety
  const Data({
    required this.images,
  });

  // Factory method to create an instance from JSON
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      images: List<String>.from(json['images'] as List),
    );
  }

  // Override the Equatable props to compare objects
  @override
  List<Object> get props => [images];
}
