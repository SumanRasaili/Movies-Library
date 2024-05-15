import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tmdbapp/home_screen.dart';

class AppRoutes {
  static final router = GoRouter(
    initialLocation: HomeScreen.routeName,
    debugLogDiagnostics: true,
    routes: [
      HomeScreen.route(),
    ],
    errorBuilder: (context, state) {
      return const Scaffold(
        body: Center(
          child: Text("No routes Found"),
        ),
      );
    },
  );
}
