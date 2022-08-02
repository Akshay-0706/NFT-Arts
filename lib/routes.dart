import 'package:flutter/material.dart';

import 'screens/details/details.dart';
import 'screens/home/home.dart';

final Map<String, WidgetBuilder> routes = {
  "/": (context) => const Home(),
  "/details": (context) => const Details(),
};
