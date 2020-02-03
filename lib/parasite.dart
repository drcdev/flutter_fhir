import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl_browser.dart';

import 'package:flutter_fhir/class/patient.dart';
import 'package:flutter_fhir/main.dart';

class Parasite extends StatelessWidget {
  Patient pt;
  Parasite({this.pt});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: pt != null ? _Parasite(pt: pt) : _Parasite(),
    );
  }
}

class _Parasite extends StatefulWidget {
  Patient pt;
  _Parasite({this.pt});
  @override
  _ParasiteState createState() => pt != null ? _ParasiteState(pt: pt) : _ParasiteState();
}

class _ParasiteState extends State<_Parasite> {
  Patient pt;
  _ParasiteState({this.pt});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Antiparasite Campaign"),
      ),
      body: Column(
        children: <Widget>[
          Text('Name: ' + pt.printName()),
          Text('Birthdate: ' + DateFormat.y(pt.birthDate) + '\nBarrio: ' +
              pt.address[0].district.toString()),
          Center(
            child: RaisedButton(
              onPressed: () {
                print(pt.toJson().toString());
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainMenu()),
                );
              },
              child: Text('Return to Opening Page'),
            ),
          ),
        ],

      ),
    );
  }
}