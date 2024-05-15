import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/config/app_routes.dart';
import 'package:tmdbapp/config/app_theme.dart';
import 'package:tmdbapp/home_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Movies Library',
      theme: AppThemes.lightColorTheme,
      routerConfig: AppRoutes.router,
    );
  }
}
