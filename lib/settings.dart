import 'package:flutter/material.dart';
import 'package:flutter_fhir/main.dart';

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
          Row(
            children: [
              Radio(
                value: 'en',
                groupValue: language,
                onChanged: (String value) async {
                  setState(() {
                    language = value;
                  });
                },
              ),
              Text('English'),

              Radio(
                value: 'es',
                groupValue: language,
                onChanged: (String value) async {
                  setState(() {
                    language = value;
                  });
                },
              ),
              Text('Español'),
            ],
          ),

          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Main()),
              );
            },
            child: Text('Return to Opening Page'),
          ),
        ],
      ),
    );
  }
}