import 'package:docui/screens/appoinment.dart';
import 'package:docui/screens/chat.dart';
import 'package:docui/screens/homepage.dart';
import 'package:docui/screens/setting.dart';
import 'package:flutter/material.dart';

class ButtomBar extends StatefulWidget {
  const ButtomBar({Key? key}) : super(key: key);

  @override
  _ButtomBarState createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  Color _colour = const Color(0xff575CE5);
  int _currentIndex = 0;
  final Tabs = [
    HomePage(),
    AppoinmentPage(),
    ChatPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        selectedItemColor: _colour,
        unselectedFontSize: 15,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.calendar_today_rounded),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.chat),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Tabs[_currentIndex],
    );
  }
}
