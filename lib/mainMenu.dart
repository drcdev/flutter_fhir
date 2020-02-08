import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_fhir/objects.dart';
import 'package:flutter_fhir/testing.dart';
import 'package:flutter_fhir/register.dart';
import 'package:flutter_fhir/evalRx.dart';
import 'package:flutter_fhir/syncServer.dart';
import 'package:flutter_fhir/settings.dart';
import 'package:flutter_fhir/buttons.dart';

import 'package:flutter_fhir/class/address.dart';
import 'package:flutter_fhir/class/humanName.dart';
import 'package:flutter_fhir/class/organization.dart';
import 'package:flutter_fhir/class/practitioner.dart';
import 'package:sqflite/sqflite.dart';

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
  var dbDir;
  var dbPath;
  var Fhirdb;


  //init state to call the _makeFolders function each time app is loaded
  @override
  void initState() {
    super.initState();
    _loadInfo();
    getdb();
  }

  getdb() async {
    dbDir = await getDatabasesPath();
    dbPath = dbDir + 'sqliteFhir.db';
    await deleteDatabase(dbPath);

    ByteData data = await rootBundle.load('assets/databases/sqlitefhir.db');
    List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await File(dbPath).writeAsBytes(bytes);
    Fhirdb = await openDatabase(dbPath);
    var result = await Fhirdb.rawQuery('SELECT * FROM patient');
    print(result.toString());
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
                PageButton('assets/images/patient.png', 'Register New Patient', Register()),
                ActionButton('assets/images/sync.png', 'Sync with server', syncServer, 'get'),
                PageButton('assets/images/chop.png', 'Settings', Settings()),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                PageButton('assets/images/activities.png', 'Evaluation & Treatment', EvalRx()),
                PageButton('assets/images/testing.png', 'Testing', Testing()),
                ActionButton('assets/images/trash.png', 'Delete Files', deleteFiles)
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

//  practitioner.id = await ObjectId(practitioner.runtimeType.toString());
//  print(practitioner.id);
//  org.id = await ObjectId(org.runtimeType.toString());
//  print(org.id);
}