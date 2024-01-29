import 'package:flutter/material.dart';
import 'package:recipe_app/view/main_screen/mainhomepage.dart';
import 'package:recipe_app/view/splashview/mainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainPage(),
    );
  }
}
