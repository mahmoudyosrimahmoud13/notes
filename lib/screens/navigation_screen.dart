import 'package:flutter/material.dart';
import 'package:notes/screens/home.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    Widget activePage = HomeScreen();
    return Scaffold(
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.archive_rounded), label: 'Archive')
          ],
          onTap: (index) {}),
    );
  }
}
