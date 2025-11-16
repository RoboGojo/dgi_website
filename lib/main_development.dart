import 'package:logging/logging.dart';
import 'package:flutter/material.dart';
import 'main.dart';

/// Development config entry point.
/// Launch with `flutter run --target lib/main_development.dart`.
/// Uses local data
void main() {
  Logger.root.level = Level.ALL;
  runApp(const MainApp());
  // runApp(MultiProvider(providers: providersLocal, child: const MainApp()));
}
