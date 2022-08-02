import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    fontFamily: "Dsignes",
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.white),
      bodyText2: TextStyle(color: Colors.white),
    ),
  );
}
