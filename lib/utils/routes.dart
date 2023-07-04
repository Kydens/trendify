import 'package:go_router/go_router.dart';
import 'package:trendify/Screen/LoginPage.dart';
import 'package:trendify/Screen/ResetPage.dart';
import 'package:trendify/Screen/WelcomePage.dart';

final GoRouter router = GoRouter(
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
