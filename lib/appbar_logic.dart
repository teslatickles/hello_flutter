import 'package:flutter/material.dart';

class AppBar extends StatefulWidget {
  @override
  _AppBarState createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {
  Choice _selectedChoice = choices[0];

  void _select(Choice choice) {
    setState(() {
     _selectedChoice = choice; 
    });
  }

}