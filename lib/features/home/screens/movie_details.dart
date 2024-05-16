import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MovieDetailsScreen extends ConsumerWidget {
  static const String routename = "/movie-detail-screen";

  static route()=> GoRoute(path: routename,builder: (context, state) => const MovieDetailsScreen(),);
  const MovieDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }
}
