import 'package:flutter/material.dart';
import 'package:flutter_fhir/main.dart';
import 'package:flutter_fhir/buttons.dart';
import 'package:flutter_fhir/parasite.dart';
import 'package:flutter_fhir/vaccine.dart';

class EvalRx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Patient Activities"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PageButton('images/parasite.png', 'Antiparasite Campaign', Parasite()),
              PageButton('images/vaccine.png', 'Immunizations', Vaccine()),
            ],
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