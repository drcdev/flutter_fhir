import 'dart:convert';
import 'dart:io';

import 'package:flutter_fhir/class/address.dart';
import 'package:flutter_fhir/class/humanName.dart';
import 'package:flutter_fhir/class/organization.dart';
import 'package:flutter_fhir/class/practitioner.dart';
import 'package:flutter_fhir/readWrite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_fhir/testing.dart';
import 'package:flutter_fhir/register.dart';
import 'package:flutter_fhir/evalRx.dart';
import 'package:flutter_fhir/syncServer.dart';
import 'package:flutter_fhir/settings.dart';
import 'package:flutter_fhir/buttons.dart';


void main() {
  runApp(MaterialApp(
    home: MainMenu(),
  ));
}

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {

  //init state to call the _makeFolders function each time app is loaded
  @override
  void initState() {
    super.initState();
    _loadInfo();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("CHOP's FHIRflies"),
          backgroundColor: Colors.blue[900],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //calls MenuButton class for each one, passes image, text, and class to call
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PageButton('images/patient.png', 'Register New Patient', Register()),
                ActionButton('images/sync.png', 'Sync with server', syncServer, 'get'),
                PageButton('images/chop.png', 'Settings', Settings()),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                PageButton('images/activities.png', 'Evaluation & Treatment', EvalRx()),
                PageButton('images/testing.png', 'Testing', Testing()),
                ActionButton('images/trash.png', 'Delete Files', deleteFiles)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//deletes all files in application document directory ending in .txt
deleteFiles() async{
  final directory = await getApplicationDocumentsDirectory(); //get current directory
  directory.list(recursive: true, followLinks: true).listen((FileSystemEntity entity)
  {
    print(entity.path);
    if (entity.path.contains('.txt')) {
      File f = File(entity.path + ''
          );
      f.delete();
    }
  });
}

//creates folders for each of the basic resources we'll use
Future _loadInfo() async {
  final directory = await getApplicationDocumentsDirectory(); //get current directory
  var folders = ['patient', 'composition', 'organization', 'location',
    'practitioner', 'medicationAdministration', 'encounter', 'period'];

  folders.forEach((folder) {
    new Directory(directory.path + '/fhir/' + folder).create(recursive: true);
  });
  Organization org = new Organization(
    name: "Children's Hospital of Philadelphia"
  );
  Practitioner practitioner = new Practitioner(
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
  );
//  Write(practitioner);
//  Write(org);
  print(practitioner.toJson().toString());
  var file = File('lib/res/prefix.json');

  Map<String, dynamic> ids = json.decode(await new File('prefix.json').readAsString());
  print(ids['Patient']);

}