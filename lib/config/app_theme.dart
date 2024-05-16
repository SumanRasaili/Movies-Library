import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();
  static final lightColorTheme = ThemeData(
    // primaryColor: Colors.amber,
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xff030238),
    ),
  );
}
