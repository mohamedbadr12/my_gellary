import 'package:flutter/cupertino.dart';

class WavyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double width = size.width;
    double height = size.height;

    path.moveTo(size.width * 0.8, 0);
    path.addArc(Rect.largest, 10, 20);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
