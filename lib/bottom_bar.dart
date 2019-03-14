import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  Widget build(BuildContext context) {
  return BottomAppBar(
        color: Colors.grey,
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
      );
  }
}