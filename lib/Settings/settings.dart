import 'package:flutter/material.dart';

// You can add any global settings or configurations here

// Defining a global color scheme using a seed color (blue shade)
final ColorScheme appColorScheme = ColorScheme.fromSeed(seedColor: Colors.blue.shade900);

// Defining a global theme for the app, using the previously defined color scheme and enabling Material 3 design
final ThemeData appTheme = ThemeData(
  colorScheme: appColorScheme,
  useMaterial3: true,
);
