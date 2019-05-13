import 'package:flutter/material.dart';
import 'package:hello_flutter/bottom_bar.dart';
import 'package:hello_flutter/radial_menu.dart';
// import 'package:vector_math/vector_math.dart' show radians;
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import './firstscreen.dart';
// import 'bottom_bar.dart';

class ThirdScreen extends StatelessWidget {
  // get color => GetColor.backgroundController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: SizedBox.expand(
          child: RadialMenu(),
        ),
        // bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
