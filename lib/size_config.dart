import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQuery;
  static double? screenHeight;
  static double? screenWidth;

  void init(BuildContext context) {
    _mediaQuery = MediaQuery.of(context);
    screenHeight = _mediaQuery!.size.height;
    screenWidth = _mediaQuery!.size.width;
  }
}

double getProportionateScreenHeight(inputHeight) {
  double? screenHeight = SizeConfig.screenHeight;

  return (inputHeight / 812) * screenHeight;
}

double getProportionateScreenWidth(inputHeight) {
  double? screenWidth = SizeConfig.screenWidth;

  return (inputHeight / 375) * screenWidth;
}
