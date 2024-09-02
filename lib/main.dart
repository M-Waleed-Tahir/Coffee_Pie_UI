import 'package:flutter/material.dart';
import 'intro_page.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_constructors;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home:  IntroPage(),
    );
  }
}


