import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'Screen/WelcomePage.dart';
import 'Screen/LoginPage.dart';
import 'Screen/ResetPage.dart';
import 'Screen/HomePage.dart';
import 'Screen/ProfilePage.dart';
import 'Screen/SearchPage.dart';
import 'Screen/SettingPage.dart';

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
        builder: ((context, state) => const Login()),
      ),
      GoRoute(
        path: "/resetPage",
        builder: ((context, state) => const ResetPage()),
      ),
    ],
  );
}
