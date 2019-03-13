import 'package:flutter/material.dart';
import './firstscreen.dart';

main() => runApp(CameraApp());

class CameraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hunter's Dream",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: FirstScreen(),
    );
  }
}





