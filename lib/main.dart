import 'package:animation/animation/example1.dart';
import 'package:animation/animation/example3.dart';
import 'package:animation/animation/example4.dart';
import 'package:flutter/material.dart';

import 'animation/example2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.dark),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      home: const Example4(),
    );
  }
}
