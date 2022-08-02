import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late Orientation orientation;

  void initialize(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
    orientation = mediaQueryData.orientation;
  }
}

// get proportionate height as per screen size

double getProScreenHeight(double height) {
  double screenHeight = SizeConfig.screenHeight;
  return (height / 812.0) * screenHeight;
}

double getProScreenWidth(double width) {
  double screenWidth = SizeConfig.screenWidth;
  return (width / 375.0) * screenWidth;
}
