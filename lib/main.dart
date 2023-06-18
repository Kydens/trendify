import 'package:flutter/material.dart';
import 'Screen/HomePage.dart';
import 'Screen/LoginPage.dart';
import 'Screen/ProfilePage.dart';
import 'Screen/SearchPage.dart';
import 'Screen/SettingPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
