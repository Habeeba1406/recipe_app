import 'package:flutter/material.dart';
import 'package:recipe_app/view/main_screen/Explorepage.dart';
import 'package:recipe_app/view/main_screen/homepage.dart';
import 'package:recipe_app/view/main_screen/favoratepage.dart';
import 'package:recipe_app/view/main_screen/Profilepage.dart';

class Mainhome extends StatefulWidget {
  const Mainhome({super.key});

  @override
  State<Mainhome> createState() => _MainhomeState();
}

class _MainhomeState extends State<Mainhome> {
  int currentIndex = 0;

  List screens = [
    const HomePage(),
    const ExplorePage(),
    const DownloadPage(),
    const ListPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() => currentIndex = value);
          },
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Color(0xFFFF9800),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'favorate',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Person',
            ),
          ]),
    );
  }
}
