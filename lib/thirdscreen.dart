import 'package:flutter/material.dart';
import './firstscreen.dart';
import 'bottom_bar.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Third Screen'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.black,
          foregroundColor: Colors.grey,
          onPressed: () {},
        ),
        bottomNavigationBar: BottomBar(),
        body: Center(
            child: RaisedButton(
          child: Text('Go to First'),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => FirstScreen())),
        ),
      ),
    );
  }
}