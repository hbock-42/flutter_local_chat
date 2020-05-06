import 'package:flutter/material.dart';

class AppTheme {
  static const Color backgroundColor = Color(0xFF000000);
  static const Color widgetBackgroundColor = Color(0xFF383C40);
  static const Color textColor = Color(0xFFFFFFFF);
  static const Gradient widgetBackroundGradient = LinearGradient(
    colors: [Color(0xFF607EFF), Color(0xFFC66AF7)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const TextStyle mainText =
      TextStyle(fontFamily: "Poppins", color: textColor);
}
