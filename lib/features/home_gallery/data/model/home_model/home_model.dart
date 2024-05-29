import 'package:equatable/equatable.dart';

class HomeModel extends Equatable {
  final List<String> images;

  const HomeModel({required this.images});

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      images: List<String>.from(json['data']['images'] as List),
    );
  }

  @override
  List<Object?> get props => [images];
}
