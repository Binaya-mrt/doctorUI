// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  // constructor
  const NavBar({required this.icon});
  final IconData icon;
  final Color _color = const Color(0xff575CE5);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: CircleAvatar(
        radius: 50.0,
        backgroundColor: Colors.black12,
        child: Icon(
          icon,
          size: 35,
          color: _color,
        ),
      ),
    );
  }
}
