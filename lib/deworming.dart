import 'package:flutter/material.dart';

class Deworming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deworming"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context); // Navigate back to opening screen when tapped.
          },
          child: Text('Return to Opening Page'),
        ),
      ),
    );
  }
}