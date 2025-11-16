import 'package:flutter/material.dart';

/// DGI Website Color Palette
/// Centralized color definitions for consistent theming across the app
class AppColors {
  // Primary Colors
  static const maroon = Color(0xFF800020);
  static const darkGray = Color(0xFF2C2C2C);
  static const veryDarkGray = Color(0xFF1A1A1A);

  // Text Colors
  static const textPrimary = Color(0xFF2C2C2C);
  static const textSecondary = Color(0xFF555555);
  static const textLight = Color(0xFFFFFFFF);
  static const textMuted = Color(0x99FFFFFF); // white70
  static const textExtraMuted = Color(0x99FFFFFF); // white60

  // Background Colors
  static const backgroundWhite = Color(0xFFFFFFFF);
  static const backgroundLight = Color(0xFFF5F5F5);
  static const backgroundOffWhite = Color(0xFFF5F5F0);
  static const backgroundDark = Color(0xFF2C2C2C);
  static const backgroundVeryDark = Color(0xFF1A1A1A);

  // Accent Colors
  static const accentMaroon = Color(0xFF800020);

  // Utility
  static const white = Color(0xFFFFFFFF);
  static const black = Colors.black;

  // Prevent instantiation
  const AppColors._();
}
