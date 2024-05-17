import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tmdbapp/features/home/screens/all_popular_movies.dart';
import 'package:tmdbapp/features/home/screens/all_top_rated.dart';
import 'package:tmdbapp/features/home/screens/home_screen.dart';
import 'package:tmdbapp/features/home/screens/movie_details.dart';
import 'package:tmdbapp/features/home/screens/splash_screen.dart';

class AppRoutes {
  static final router = GoRouter(
    initialLocation: SplashScreen.routename,
    debugLogDiagnostics: true,
    routes: [
      HomeScreen.route(),
      AllTopRatedMovies.route(),
      AllPopularMovies.route(),
      SplashScreen.route(),
      MovieDetailsScreen.route(),
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
