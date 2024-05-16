import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tmdbapp/features/home/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routename = "/splash-screen";
  static route() => GoRoute(
        path: routename,
        builder: (context, state) => const SplashScreen(),
      );
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => context.go(HomeScreen.routeName));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Movie App",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary, fontSize: 20),
            ),
            const SizedBox(
              height: 150,
            ),
            const CircularProgressIndicator.adaptive()
          ],
        ),
      ),
    );
  }
}
