import 'package:flutter/material.dart';
import 'package:learnflutter/screens/MyForm.dart';
import 'package:learnflutter/screens/onboarding_screen.dart';
import 'screens/Home.dart';
import 'screens/Dashboard.dart';
import 'screens/Section2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      themeMode: ThemeMode.system,
      home: MyForm(),
    );
  }
}
