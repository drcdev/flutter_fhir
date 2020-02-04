import 'package:flutter/material.dart';
import 'package:flutter_fhir/mainMenu.dart';

class Vaccine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Immunizations"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainMenu()),
            );
          },
          child: Text('Return to Opening Page'),
        ),
      ),
    );
  }
}