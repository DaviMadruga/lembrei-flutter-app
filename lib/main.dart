import 'package:flutter/material.dart';
import 'package:lembrei/screens/home_screens.dart';
import 'package:lembrei/theme/app_theme.dart';

void main() {
  runApp(const LembreiApp());
}

class LembreiApp extends StatelessWidget {
  const LembreiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lembrei!',
      theme: AppTheme.lightTheme,
      home: const HomeScreens(),
    );
  }
}