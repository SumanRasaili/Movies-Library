import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  static const String routeName = "/home-screen";
  const HomeScreen({super.key});
  static GoRoute route() => GoRoute(
        path: routeName,
        builder: (context, state) => const HomeScreen(),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
    );
  }
}
