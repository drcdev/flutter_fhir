import 'package:flutter/material.dart';

class Deworming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String savedString = '';
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
                  savedString = "Saved!";
                },
              child: Text('Save'),
              ),
              RaisedButton(
                onPressed: () {
                  savedString = "Read!";
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