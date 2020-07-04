import 'package:aztucoman/screens/mainpage.dart';
import 'package:aztucoman/screens/notify.dart';
import 'package:aztucoman/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class MyHomePage extends StatefulWidget {
  static const routName = '/';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final tabs = [
    HomePage(),
    Notify(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 8,
        curve: Curves.easeInBack,
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.notifications_active),
            title: Text(
              'Notifications',
            ),
            activeColor: Colors.pink,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
