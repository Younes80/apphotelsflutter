import 'package:flutter/material.dart';

class BottomBarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.grey[800],
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: 'Explore'
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_outline_rounded,
          ),
          label: 'Tips'
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: 'Profile'
        ),
      ],
    );
  }
}
