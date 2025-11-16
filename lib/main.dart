import 'package:dgi_website/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'routing/router.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Delta Gamma Iota',
      theme: ThemeData(
        primaryColor: AppColors.backgroundOffWhite,
        scaffoldBackgroundColor: AppColors.backgroundOffWhite,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.maroon,
          primary: AppColors.maroon,
          secondary: AppColors.maroon,
        ),
      ),
      routerConfig: router()
    );
  }
}
