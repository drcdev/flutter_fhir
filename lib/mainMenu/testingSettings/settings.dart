import 'package:flutter/material.dart';
import 'package:flutter_fhir/mainMenu/mainMenu.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Setting(),
    );
  }
}

class Setting extends StatefulWidget {
  @override
  _Settings createState() => _Settings();
}

class _Settings extends State<Setting> {
  String language;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainMenu()),
              );
            },
            child: Text('Return to Opening Page'),
          ),
        ],
      ),
    );
  }
}
