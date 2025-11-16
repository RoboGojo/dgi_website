import 'package:logging/logging.dart';
import 'package:flutter/material.dart';
import 'main.dart';

/// Production config entry point.
/// Launch with `flutter run --target lib/main_production.dart`.
/// Uses remote data sources
void main() {
  Logger.root.level = Level.INFO; // Changed from WARNING to INFO to see auth details
  runApp(const MainApp());
  // runApp(MultiProvider(providers: providersRemote, child: const MainApp()));
}
