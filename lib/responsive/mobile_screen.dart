import 'package:flutter/material.dart';
import 'package:player_flutter/screens/home.dart';
import 'package:player_flutter/screens/library.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MobileScreen> {
  int _selectedTab = 0;

  void navigateOnTap(int value) {
    setState(() {
      _selectedTab = value;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const LibraryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: navigateOnTap,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_add, color: Colors.white),
                label: 'Biblioteca'),
          ]),
    );
  }
}
