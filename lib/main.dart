import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:web_navigation_test/app.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());

  runApp(App());
}
