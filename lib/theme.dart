import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.grey.shade800,
  backgroundColor: Colors.black,
  primaryColor: Colors.green,
  toggleableActiveColor: Colors.green,
  accentColor: Colors.white,
);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  backgroundColor: Colors.grey[100],
  primaryColor: Colors.green,
  toggleableActiveColor: Colors.green,
  accentColor: Colors.green,
);