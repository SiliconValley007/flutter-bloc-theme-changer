import 'package:flutter/material.dart';

enum ThemePreference {
  light,
  dark,
  system,
}

ThemeData light = ThemeData(
  primaryColor: Colors.black,
  primarySwatch: Colors.blue,
  colorScheme: const ColorScheme.light().copyWith(
    secondary: Colors.white,
    brightness: Brightness.light,
  ),
  scaffoldBackgroundColor: Colors.white,
);

ThemeData dark = ThemeData(
  primaryColor: Colors.white,
  primarySwatch: Colors.blue,
  colorScheme: const ColorScheme.dark().copyWith(
    secondary: Colors.black,
    brightness: Brightness.dark,
  ),
  scaffoldBackgroundColor: Colors.black,
);

const String themeKey = 'theme_key';