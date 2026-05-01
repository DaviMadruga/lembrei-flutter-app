import 'package:flutter/material.dart';
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
      home: const MyHomePage(title: 'Lembrei!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(),
      ),
    );
  }
}
