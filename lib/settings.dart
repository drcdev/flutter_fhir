import 'package:flutter/material.dart';
import 'package:flutter_fhir/main.dart';
import 'package:flutter_fhir/appLocalizations.dart';

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
  String Language;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          Radio(
            value: 'English',
            groupValue: Language,
            onChanged: (String value) async {
              setState(() {

              });
            },
          ),
          Text('English'),

          Radio(
            value: 'Español',
            groupValue: Language,
            onChanged: (String value) async {
              setState(() {
              });
            },
          ),
          Text('Español'),

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