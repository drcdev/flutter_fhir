import 'package:flutter/material.dart';

class Deworming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MoreWorms(),
    );
  }
}

class MoreWorms extends StatefulWidget {
  @override
  _Deworming createState() => _Deworming();
}

class _Deworming extends State<MoreWorms> {
  String savedString = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deworming"),
      ),
      body: Column(
        children: [
          Text(savedString),
          Row(
            children: [
              RaisedButton(
                onPressed: () {
                   setState(() => savedString = 'Saved!');
                },
              child: Text('Save'),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() => savedString = 'Read!');
                },
              child: Text('Read'),
              ),
            ]
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pop(context); // Navigate back to opening screen when tapped.
            },
            child: Text('Return to Opening Page'),
          ),
        ]
      ),
    );
  }
}