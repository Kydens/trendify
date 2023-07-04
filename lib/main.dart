import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'Screen/WelcomePage.dart';
import 'Screen/loginPage.dart';
import 'Screen/ResetPage.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Trendify',
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: "/",
        builder: ((context, state) => const WelcomePage()),
      ),
      GoRoute(
        path: "/login",
        builder: ((context, state) => const LoginScreen()),
      ),
      GoRoute(
        path: "/resetPage",
        builder: ((context, state) => const ResetPage()),
      ),
    ],
  );
}
