import 'package:flutter/material.dart';
import 'package:my_gellary/core/utils/size_config.dart';

abstract class Styles {
  static TextStyle textStyle12Bold(context) =>
      TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        fontWeight: FontWeight.bold,
      );



  static TextStyle kBodyTextStyle22(context) =>
      TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 22),

      );


}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  // print("base fontSize= $fontSize lower=$lowerLimit h =$upperLimit");
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery
      .sizeOf(context)
      .width;
  if (width < SizeConfig.tablet) {
    return width / 400;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
