import 'package:minipro/menu/home.dart';
import 'package:minipro/menu/search.dart';
import 'package:minipro/menu/add.dart';
import 'package:minipro/menu/profile.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  // final String title;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
 
  int _currentIndex = 0;

  final tabs =[
    const Home(),
    const Search(),
    const Add(),
    const Profile(),
    
  ];
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        iconSize: 35,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color(0xFFFCAB0C),
            
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Color.fromARGB(255, 255, 207, 35)
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Add Menu',
            backgroundColor:  Color(0xFFFCAB0C)
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
            backgroundColor:  Color.fromARGB(255, 255, 207, 35)
            ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
     
    );
  }
}