import 'package:flutter/material.dart';
import 'thirdscreen.dart';
import './bottom_bar.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
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
          child: const Text('Go to Third'),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => ThirdScreen())),
        ),
      ),
    );
  }
}