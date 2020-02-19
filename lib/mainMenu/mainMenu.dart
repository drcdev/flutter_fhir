import 'dart:io';

import 'package:flutter_fhir/mainMenu/providerActivities/parasites/parasite.dart';
import 'package:flutter_fhir/mainMenu/providerActivities/registerNew/register.dart';
import 'package:flutter_fhir/mainMenu/providerActivities/vaccines/vaccine.dart';
import 'package:flutter_fhir/util/vaccineRules.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_fhir/mainMenu/providerActivities/providerActivities.dart';
import 'package:flutter_fhir/mainMenu/testingSettings/testing.dart';
import 'package:flutter_fhir/util/sync.dart';
import 'package:flutter_fhir/util/buttons.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _MainMenu(),
    );
  }
}

class _MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<_MainMenu> {
  var database;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Salud Dominicana'),
          backgroundColor: Colors.blue[900],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //calls MenuButton class for each one, passes image, text, and class to call
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PageButton('assets/images/patient.png',
                      'Register New Patient', Register()),
                  ActionButton('assets/images/edit.png',
                      'Edit Already Registered Patient', VaccineRules),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PageButton('assets/images/activities.png',
                      'Provider Activities', ProviderActivities()),
                  ActionButton('assets/images/sync.png', 'Sync with server',
                      sync, 'get'),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PageButton('assets/images/testing.png', 'Testing/Settings',
                      Testing()),
                  ActionButton(
                      'assets/images/trash.png', 'Delete Files', deleteFiles),
                ]),
          ],
        ),
      ),
    );
  }
}

//deletes all files in application document directory ending in .txt
deleteFiles() async {
  final directory =
      await getApplicationDocumentsDirectory(); //get current directory
  directory
      .list(recursive: true, followLinks: true)
      .listen((FileSystemEntity entity) {
    print(entity.path);

    if (entity.path.contains('.txt') || entity.path.contains('.db')) {
      File f = File(entity.path);
      f.delete();
    }
  });
}
