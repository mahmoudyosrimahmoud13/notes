import 'package:flutter/material.dart';
import 'package:notes/constants/theme.dart';
import 'package:notes/screens/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: mainTheme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}
