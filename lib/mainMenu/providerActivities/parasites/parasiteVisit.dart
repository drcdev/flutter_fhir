import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/location.dart';
import 'package:flutter_fhir/fhirClasses/medicationAdministration.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/mainMenu/mainMenu.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:geolocator/geolocator.dart';

import 'package:flutter_fhir/fhirClasses/composition.dart';
import 'package:flutter_fhir/fhirClasses/encounter.dart';
import 'package:flutter_fhir/fhirClasses/patient.dart';

class ParasiteVisit extends StatelessWidget {
  Patient pt;
  ParasiteVisit({this.pt});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: pt != null ? _ParasiteVisit(pt: pt) : _ParasiteVisit(),
    );
  }
}

class _ParasiteVisit extends StatefulWidget {
  Patient pt;
  _ParasiteVisit({this.pt});
  @override
  _ParasiteVisitState createState() =>
      pt != null ? _ParasiteVisitState(pt: pt) : _ParasiteVisitState();
}

class _ParasiteVisitState extends State<_ParasiteVisit> {
  Patient pt;
  _ParasiteVisitState({this.pt});
  Location location;
  Composition composition;
  Encounter encounter;
  List<Location> locations;
  MedicationAdministration medicationAdministration;

  void _getLocation() async {
    final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

    Position currentPosition = await geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    location = await Location.newInstance(
        position: await Location_Position.newInstance(
            latitude: currentPosition.latitude,
            longitude: currentPosition.longitude));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Patient Activities"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Name: ${pt.printName()}\n'
              'Birthdate: ${pt.birthDate}\n'
              'Community: ${pt.address[0].district}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            RaisedButton(
              onPressed: () async {
                _getLocation();
                encounter = await Encounter.newInstance(
                    status: 'in-progress',
                    classs: await Coding.newInstance(
                        system: 'http://hl7.org/fhir/v3/ActCode',
                        code: 'HH',
                        display: 'Home Health'),
                    subject: await Reference.newInstance(
                        reference: 'Patient/' + pt.id, display: pt.printName()),
                    participant: [
                      await Encounter_Participant.newInstance(
                          individual: await Reference.newInstance(
                              reference: 'Practitioner' + 'practitionerID',
                              display: 'PractitionerName'))
                    ],
                    period: await Period.newInstance(start: DateTime.now()),
                    location: [
                      await Encounter_Location.newInstance(
                          location: await Reference.newInstance(
                              reference: 'Location/' + location.id,
                              display: "Patient's House"))
                    ],
                    serviceProvider: await Reference.newInstance(
                        reference: 'Organization' + 'OrganizationID',
                        display: 'DR Clinic'));
                composition = await Composition.newInstance(
                    subject: encounter.subject,
                    encounter: await Reference(
                        reference: 'Encounter/' + encounter.id,
                        display: 'Deworming Visit on '
                            '${encounter.period.start.toString()}'
                            ', for '
                            '${pt.printName()}'),
                    date: encounter.period.start,
                    author: [encounter.participant[0].individual],
                    title: 'Biannual Deworming Campaign');
              },
              child: Text('Begin Visit'),
            ),
            RaisedButton(
              onPressed: () async {
                medicationAdministration =
                    await MedicationAdministration.newInstance(
                        status: 'completed',
                        medicationCodeableConcept:
                            await CodeableConcept.newInstance(coding: [
                          await Coding.newInstance(
                              system: 'http://snomed.info/sct',
                              code: '387558006',
                              display: 'Albendazole')
                        ]),
                        subject: encounter.subject,
                        context: composition.encounter,
                        effectiveDateTime: DateTime.now().toString(),
                        performer: [
                      await MedicationAdministration_Performer.newInstance(
                          actor: encounter.participant[0].individual)
                    ]);
                composition.section = [
                  await Composition_Section.newInstance(entry: [
                    await Reference.newInstance(
                        reference: 'MedicationAdministration/' +
                            medicationAdministration.id,
                        display: 'Albendazole Given')
                  ])
                ];
                composition.save();
              },
              child: Text('Medication Given'),
            ),
            RaisedButton(
              onPressed: () async {
                encounter.period.end = DateTime.now();
                encounter.save();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainMenu()),
                );
              },
              child: Text('Complete Visit'),
            ),
          ],
        ),
      ),
    );
  }
}
