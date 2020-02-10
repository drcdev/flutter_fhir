import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_fhir/class/medicationAdministration.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/mainMenu/mainMenu.dart';
import 'package:geolocator/geolocator.dart';

import 'package:flutter_fhir/class/composition.dart';
import 'package:flutter_fhir/class/encounter.dart';
import 'package:flutter_fhir/class/patient.dart';

class Parasite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _Parasite(),
    );
  }
}

class _Parasite extends StatefulWidget {
  @override
  _ParasiteState createState() =>
      _ParasiteState();
}

class _ParasiteState extends State<_Parasite> {
  Patient pt;
  Position _currentPosition;
  Period period;
  Encounter encounter;
  Composition composition;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Antiparasite Campaign'),
      ),
      body: Column(children: [
        Text('Name: ' + pt.printName()),
        Text('Birthdate: ' +
//            pt.birthDate.month.toString() +
            '-' +
//            pt.birthDate.day.toString() +
            '-' +
//            pt.birthDate.year.toString() +
            '\nBarrio: ' +
            pt.address[0].district.toString()),
        RaisedButton(
          onPressed: () {
            period.start = DateTime.now();
//            _getCurrentLocation();
//            Location_Position locPos = Location_Position(
//              longitude: _currentPosition.longitude,
//              latitude: _currentPosition.latitude
//            );
//            Location loc = Location(
//              position: locPos
//            );
//            List<Location> location = [
//              loc
//            ];
            encounter = new Encounter.fromJson(json.decode(
              '{  "resourceType": "Encounter",'
                '"classs": {'
                  '"system": "http://hl7.org/fhir/v3/ActCode",'
                  '"code": "HH",'
                  '"display": "home health"'
                '},'
                '"subject": {'
                  '"reference": "Patient/' + pt.id + '",'
                  '"display": "DR Patient"'
                '},'
                '"participant": ['
                  '{'
                    '"individual": {'
                      '"reference": "Practitioner/2001",'
                      '"display": "Dr. Grey"'
                    '}'
                  '}'
                '],'
                '"location": ['
                  '{'
                    '"location": {'
                      '"reference": "Location/4001",'
                      '"display": "Dominican Republic"'
                    '}'
                  '}'
                '],'
                '"serviceProvider": {'
                  '"reference": "Organization/3001",'
                  '"display": "CHOP"'
                '}'
              '}'));
            composition = new Composition.fromJson(json.decode(
                '{'
                  '"resourceType": "Composition",'
                  '"id": "5001",'
                  '"subject": {'
                    '"reference": "Patient/' + pt.id + '",'
                    '"display": "DR Patient"'
                  '},'
                  '"encounter": {'
                    '"reference": "Encounter/' + encounter.id + '",'
                    '"display": "Encounter 1"'
                  '},'
                  '"date": "' + DateTime.now().toString() + '",'
                  '"author": ['
                    '{'
                      '"reference": "Practitioner/2001",'
                      '"display": "Dr. Grey"'
                    '}'
                  '],'
                  '"title": "Biannual Deworming Campaign",'
                '}'));

          },
          child: Text('Start Encounter'),
        ),
        RaisedButton(
          onPressed: () {
            MedicationAdministration medicationAdministration =
                new MedicationAdministration.fromJson(json.decode(
                  '{'
                    '"resourceType": "MedicationAdministration",'
                    '"status": "completed",'
                    '"medicationCodeableConcept": {'
                      '"coding": ['
                        '{'
                          '"system": "http://snomed.info/sct",'
                          '"code": "387558006",'
                          '"display": "Albendazole"'
                        '}'
                      ']'
                    '},'
                    '"subject": {'
                      '"reference": "Patient/' + pt.id + '",'
                      '"display": "DR Patient"'
                    '},'
                    '"context": {'
                      '"reference": "Encounter/' + encounter.id + '",'
                      '"display": "Deworming Encounter"'
                    '},'
                    '"effectiveDateTime": "2020-01-31T08:59:22-05:00",'
                    '"performer": ['
                      '{'
                        '"actor": {'
                          '"reference": "Practitioner/2001",'
                          '"display": "Dr. Grey"'
                        '}'
                      '}'
                    ']'
                  '}'
                ));
          },
          child: Text('Give Medication'),
        ),
        RaisedButton(
          onPressed: () {
            period.end = DateTime.now();
            encounter.period = period;
            composition.status = 'final';
            encounter.status = 'finished';
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


