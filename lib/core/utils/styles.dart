import 'package:flutter/material.dart';
import 'package:my_gellary/core/utils/size_config.dart';

abstract class Styles {
  static TextStyle textStyle40Bold(context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 40),
      fontWeight: FontWeight.bold,
      color: const Color(0xff4A4A4A));

  static TextStyle textStyle30Bold(context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontWeight: FontWeight.bold,
      color: const Color(0xff4A4A4A));

  static TextStyle textStyle16SemiBold(context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      color: const Color(0xff988F8C));

  static TextStyle textStyle18Bold(context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.bold,
      color: Colors.white);

  static TextStyle textStyle20SemiBold(context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      color: const Color(0xff4A4A4A));

  static TextStyle textStyle32SemiBold(context) => TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontWeight: FontWeight.w600,
      fontFamily: "Ba2looThambi2 ",
      color: const Color(0xff4A4A4A));
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
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 400;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
