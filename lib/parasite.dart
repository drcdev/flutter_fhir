import 'package:flutter/material.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/composition.dart';
import 'package:flutter_fhir/class/encounter.dart';
import 'package:flutter_fhir/class/humanName.dart';
import 'package:flutter_fhir/class/location.dart';
import 'package:flutter_fhir/class/organization.dart';

import 'package:flutter_fhir/class/patient.dart';
import 'package:flutter_fhir/class/practitioner.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/main.dart';
import 'package:geolocator/geolocator.dart';

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
  Position _currentPosition;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Antiparasite Campaign'),
      ),
      body: Column(children: [
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
            Coding classs = Coding(
              system: 'http://hl7.org/fhir/v3/ActCode',
              code: 'HH',
              display: 'Home Health'
            );
            CodeableConcept type = CodeableConcept(
                text: 'Biannual Deworming',
                coding: [Coding(code: '34131-3', system: 'http://loinc.org')]);
            List<Reference> author = [
              Reference(
                reference: 'Practitioner/2000-0001',
                display: 'Dr. Grey',
                )
            ];
            Organization serviceProvider = Organization(
                id: '1000-0001',
                name: "Children's Hospital of Philadelphia"
            );
            List<Encounter_Participant> participant = [
              Encounter_Participant(
                individual: author[0]
              )
            ];
            Reference subject = Reference(
              reference: 'Patient/' + pt.id,
              display: pt.printName()
            );
            _getCurrentLocation();
            Location_Position locPos = Location_Position(
              longitude: _currentPosition.longitude,
              latitude: _currentPosition.latitude
            );
            Location loc = Location(
              position: locPos
            );
            List<Location> location = [
              loc
            ];
            Composition comp = new Composition(type, author, subject: subject);
            print(comp.toJson().toString());
          },
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

  _getCurrentLocation() {
    final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });
    }).catchError((e) {
      print(e);
    });
  }

}


