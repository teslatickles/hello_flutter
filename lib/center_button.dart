import 'package:flutter/material.dart';

class CenterButton extends StatefulWidget {
  @override
  _CenterButtonState createState() => _CenterButtonState();
}

class _CenterButtonState extends State<CenterButton> {
  var screen;
  @override
  Widget build(BuildContext context) {
  return FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => screen));
        },
    );
  }
}
