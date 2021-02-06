import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tract_app/screens/account.dart';
import 'package:tract_app/screens/awaiting.dart';
import 'package:tract_app/screens/homeScreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final tabs = [
    homeScreen(),
    awaitingScreen(),
    accountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.transit_enterexit_rounded), label: "Awaiting"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
      ],
    ));
  }
}
