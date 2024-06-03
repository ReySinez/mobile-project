import 'package:flutter/material.dart';
import 'package:plan_t/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'planT',
      theme: ThemeData.light(useMaterial3: true),
      home: SplashScreen(),
    );
  }
}
