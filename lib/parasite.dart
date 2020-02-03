import 'package:flutter/material.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/composition.dart';
import 'package:flutter_fhir/class/humanName.dart';

import 'package:flutter_fhir/class/patient.dart';
import 'package:flutter_fhir/class/reference.dart';
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
  _ParasiteState createState() =>
      pt != null ? _ParasiteState(pt: pt) : _ParasiteState();
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
          children: [
            Text('Name: ' + pt.printName()),
            Text('Birthdate: ' +
                pt.birthDate.month.toString() +
                '-' +
                pt.birthDate.day.toString() +
                '-' +
                pt.birthDate.year.toString() +
                '\nBarrio: ' +
                pt.address[0].district.toString()),
            RaisedButton(
              onPressed: () {
                Composition composition = new Composition(
                  type: CodeableConcept(
                    text: "Biannual Doworming Campaign Home Visit",
                    coding: [
                      Coding(
                        system: "http://loinc.org",
                        code: "34131-3"
                      )
                    ]
                  )
                  author: Practitioner(
                    id: '2000-0001',
                      name: [
                        HumanName(given: [
                          'Jason',
                          'Grey'
                          ],
                          suffix: [
                            'MD',
                            'MPH'
                          ],
                          family: 'Faulkenberry'),
                        ],
                      address: [
                        Address(
                          use: 'work',
                          line: [
                           '734 Schuylkill Ave'
                          ],
                          city: 'Philadelphia',
                          state: 'PA',
                          postalCode: '19146',
                        )
                      ]
                  )
              );
            }
              child: Text('Start Encounter'),
            ),
            RaisedButton(
              onPressed: () {
//            Navigator.push();
              },
              child: Text('Give Medication'),
            ),
            RaisedButton(
              onPressed: () {
//            Navigator.push();
              },
              child: Text('Complete Encounter'),
            ),
            RaisedButton(
              onPressed: () {
                print(pt.toJson().toString());
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainMenu()),
                );
              },
              child: Text('Return to Opening Page'),
            ),
          ]),
    );
  }
}
