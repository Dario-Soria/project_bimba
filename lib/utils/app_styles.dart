import 'package:flutter/material.dart';

// This file contains centralized styling for colors, buttons, sizes, and layout constants.
class AppStyles {
  // General Colors
  static const Color buttonBackground = Colors.black;
  static const Color buttonForeground = Colors.white;

  static const Color socialBackground = Color(0xFFE0E0E0); // Light grey
  static const Color socialForeground = Colors.black;

  // Standard button height
  static const double buttonHeight = 48.0;

  // Horizontal padding used across screens
  static const double horizontalPadding = 32.0;

  // Rounded corner style reused across buttons
  static final RoundedRectangleBorder rounded = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8),
  );
}