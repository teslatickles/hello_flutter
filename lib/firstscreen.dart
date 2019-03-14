import 'package:flutter/material.dart';
import './secondscreen.dart';
import './bottom_bar.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  Choice _selectedChoice = choices[0];
  
  void _select(Choice choice) {
    setState(() {
     _selectedChoice = choice; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        actions: <Widget>[
          IconButton(
            icon: Icon(choices[0].icon),
              onPressed: () {
                _select(choices[0]);
              },
          ),
            // action button
            IconButton(
              icon: Icon(choices[1].icon),
              onPressed: () {
                _select(choices[1]);
              },
            ),
            PopupMenuButton<Choice>(
              onSelected: _select,
              itemBuilder: (BuildContext context) {
                return choices.skip(2).map((Choice choice) {
                 return PopupMenuItem<Choice>(
                   value: choice, 
                   child: Text(choice.title),
                 );
              }).toList();
           },
         ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(17.0) + EdgeInsets.fromLTRB(0, 0, 0, 10.0),
        child: ChoiceCard(choice: _selectedChoice),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => SecondScreen()));
        },
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Page 1', icon: Icons.looks_one),
  const Choice(title: 'Page 2', icon: Icons.looks_two),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.blueGrey,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: textStyle.color),
            Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}