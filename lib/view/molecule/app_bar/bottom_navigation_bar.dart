import 'package:flutter/material.dart';

class TwitterBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: '',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: '',
          backgroundColor: Colors.green,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined),
          activeIcon: Icon(Icons.notifications),
          label: '',
          backgroundColor: Colors.purple,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail_outline),
          activeIcon: Icon(Icons.mail),
          label: '',
          backgroundColor: Colors.pink,
        ),
      ],
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      enableFeedback: true,
      iconSize: 18,
      selectedIconTheme: const IconThemeData(size: 30, color: Colors.blue),
      unselectedIconTheme: const IconThemeData(size: 28, color: Colors.grey),
    ); //BottomNavigationBar
  }
}
