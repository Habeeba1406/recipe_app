import 'package:flutter/material.dart';
import 'package:recipe_app/view/loginregister/login_registration_screen.dart';
import 'package:recipe_app/view/splashview/introduction_screen.dart';

// void main() {
//   runApp(MaterialApp(
//     home: mainPage(),
//   ));
// }

class mainPage extends StatefulWidget {
  @override
  State<mainPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      routes: {
        '/': (context) => introPage(),
        'home': (context) => LoginSignup(),
      },
    );
  }
}
