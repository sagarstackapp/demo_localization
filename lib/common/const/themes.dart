import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  backgroundColor: const Color(0xFF212121),
  accentColor: Colors.white,
  accentIconTheme: IconThemeData(color: Colors.black),
  dividerColor: Colors.black12,
);

final lightTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.white,
  brightness: Brightness.light,
  backgroundColor: const Color(0xFFE5E5E5),
  accentColor: Colors.black,
  accentIconTheme: IconThemeData(color: Colors.white),
  dividerColor: Colors.white54,
);

final blueTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Color(0xFF3F51B5),
  brightness: Brightness.light,
  backgroundColor: Color(0xFFFFFFFF),
  accentColor: Color(0xFFFF9800),
  accentIconTheme: IconThemeData(color: Colors.black),
  dividerColor: Colors.white54,
);

final spookyTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Color(0xFF000000),
  brightness: Brightness.light,
  backgroundColor: Color(0xFF4A4A4A),
  accentColor: Color(0xFFBB86FC),
  accentIconTheme: IconThemeData(color: Colors.black),
  dividerColor: Colors.white54,
);
