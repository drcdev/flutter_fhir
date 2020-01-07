import 'package:flutter/material.dart';
import 'package:flutter_fhir/main.dart';
import 'package:flutter_fhir/lang/appLanguage.dart';

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
          ListTile(
            title: const Text('English'),
            leading: Radio(
              value: 'en',
              groupValue: Language,
              onChanged: (String value) async {
                AppLanguage appLanguage = AppLanguage();
                appLanguage.changeLanguage(Locale(value));
              },
            ),
          ),

          ListTile(
            title: const Text('Español'),
            leading: Radio(
              value: 'es',
              groupValue: Language,
              onChanged: (String value) async {
                AppLanguage appLanguage = AppLanguage();
                appLanguage.changeLanguage(Locale(value));
              },
            ),
          ),

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