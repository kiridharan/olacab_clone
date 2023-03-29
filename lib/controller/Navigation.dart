import 'package:flutter/material.dart';
import 'package:untitled/UI/pages/home_page.dart';

import '../UI/pages/Activity.dart';
import '../UI/pages/service_page.dart';
import '../UI/pages/ProfilePage.dart';

/// This Widget is the main application widget.

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  final screens = const [
    HomePage(),
    ServicePage(),
    Activity(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.grey),
              activeIcon: Icon(Icons.home, color: Colors.black),
              label: 'Home',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_sharp, color: Colors.grey),
              activeIcon: Icon(Icons.menu_sharp, color: Colors.black),
              label: 'Services',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.mark_as_unread_sharp, color: Colors.grey),
                activeIcon:
                    Icon(Icons.mark_as_unread_sharp, color: Colors.black),
                label: 'Activity',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: 'Profile',
              backgroundColor: Colors.white,
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          iconSize: 24,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
