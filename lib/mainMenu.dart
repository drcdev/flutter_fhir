import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_fhir/class/patient.dart';
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
  var fhirDb;

  //init state to call the _makeFolders function each time app is loaded
  @override
  void initState() {
    super.initState();
    _loadInfo();
    getdb();
  }

  getdb() async {
    Patient pt = Patient.fromJson(jsonDecode('''{
  "multipleBirthBoolean": false,
  "address": [
    {
      "city": "Oxford",
      "line": [
        "181 Veum Underpass"
      ],
      "state": "Massachusetts",
      "country": "US",
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/geolocation",
          "extension": [
            {
              "url": "latitude",
              "valueDecimal": 42.085638845317746
            },
            {
              "url": "longitude",
              "valueDecimal": -71.90216552315462
            }
          ]
        }
      ],
      "postalCode": "01540"
    }
  ],
  "name": [
    {
      "use": "official",
      "given": [
        "Rosamaria757"
      ],
      "family": "Torphy630",
      "prefix": [
        "Ms."
      ]
    }
  ],
  "birthDate": "1987-11-17",
  "extension": [
    {
      "url": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race",
      "extension": [
        {
          "url": "ombCategory",
          "valueCoding": {
            "code": "2106-3",
            "system": "urn:oid:2.16.840.1.113883.6.238",
            "display": "White"
          }
        },
        {
          "url": "text",
          "valueString": "White"
        }
      ]
    },
    {
      "url": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity",
      "extension": [
        {
          "url": "ombCategory",
          "valueCoding": {
            "code": "2186-5",
            "system": "urn:oid:2.16.840.1.113883.6.238",
            "display": "Not Hispanic or Latino"
          }
        },
        {
          "url": "text",
          "valueString": "Not Hispanic or Latino"
        }
      ]
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName",
      "valueString": "Jerica256 Treutel973"
    },
    {
      "url": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex",
      "valueCode": "F"
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
      "valueAddress": {
        "city": "Wayland",
        "state": "Massachusetts",
        "country": "US"
      }
    },
    {
      "url": "http://synthetichealth.github.io/synthea/disability-adjusted-life-years",
      "valueDecimal": 0.028457301024333526
    },
    {
      "url": "http://synthetichealth.github.io/synthea/quality-adjusted-life-years",
      "valueDecimal": 30.971542698975668
    }
  ],
  "communication": [
    {
      "language": {
        "text": "English",
        "coding": [
          {
            "code": "en-US",
            "system": "urn:ietf:bcp:47",
            "display": "English"
          }
        ]
      }
    }
  ],
  "identifier": [
    {
      "value": "00285770-1332-4a2d-8e87-61376dd5cab3",
      "system": "https://github.com/synthetichealth/synthea"
    },
    {
      "type": {
        "text": "Medical Record Number",
        "coding": [
          {
            "code": "MR",
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "display": "Medical Record Number"
          }
        ]
      },
      "value": "00285770-1332-4a2d-8e87-61376dd5cab3",
      "system": "http://hospital.smarthealthit.org"
    },
    {
      "type": {
        "text": "Social Security Number",
        "coding": [
          {
            "code": "SS",
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "display": "Social Security Number"
          }
        ]
      },
      "value": "999-72-7667",
      "system": "http://hl7.org/fhir/sid/us-ssn"
    },
    {
      "type": {
        "text": "Driver's License",
        "coding": [
          {
            "code": "DL",
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "display": "Driver's License"
          }
        ]
      },
      "value": "S99922678",
      "system": "urn:oid:2.16.840.1.113883.4.3.25"
    },
    {
      "type": {
        "text": "Passport Number",
        "coding": [
          {
            "code": "PPN",
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "display": "Passport Number"
          }
        ]
      },
      "value": "X88372084X",
      "system": "http://standardhealthrecord.org/fhir/StructureDefinition/passportNumber"
    }
  ],
  "telecom": [
    {
      "use": "home",
      "value": "555-813-8353",
      "system": "phone"
    }
  ],
  "gender": "female",
  "maritalStatus": {
    "text": "S",
    "coding": [
      {
        "code": "S",
        "system": "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
        "display": "S"
      }
    ]
  },
  "status": "generated"
}'''));

    pt.id = '12345';
    dbDir = await getDatabasesPath();
    dbPath = dbDir + 'sqliteFhir.db';
    await deleteDatabase(dbPath);

    final directory = await getApplicationDocumentsDirectory();
    File file = new File('${directory.path}/assets/smallSqlite.txt');
    String objects = await file.readAsString();
    fhirDb = await openDatabase(dbPath);
    await fhirDb.execute(objects);
    await fhirDb.rawInsert(
        "INSERT Into Patient (id, json_text)"
        "VALUES (?,?)",
        [pt.id, pt]);
    var result = await fhirDb.rawQuery('SELECT * FROM patient');
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
                PageButton('assets/images/patient.png', 'Register New Patient',
                    Register()),
                ActionButton('assets/images/sync.png', 'Sync with server',
                    syncServer, 'get'),
                PageButton('assets/images/chop.png', 'Settings', Settings()),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                PageButton('assets/images/activities.png',
                    'Evaluation & Treatment', EvalRx()),
                PageButton('assets/images/testing.png', 'Testing', Testing()),
                ActionButton(
                    'assets/images/trash.png', 'Delete Files', deleteFiles)
              ],
            ),
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
    if (entity.path.contains('.txt')) {
      File f = File(entity.path + '');
      f.delete();
    }
  });
}

//creates folders for each of the basic resources we'll use
Future _loadInfo() async {
  Organization org =
      new Organization(name: "Children's Hospital of Philadelphia");
  Practitioner practitioner = new Practitioner(name: [
    HumanName(
        given: ['Jason', 'Grey'],
        suffix: ['MD', 'MPH'],
        family: 'Faulkenberry'),
  ], address: [
    Address(
      use: 'work',
      line: ['734 Schuylkill Ave'],
      city: 'Philadelphia',
      state: 'PA',
      postalCode: '19146',
    )
  ]);

//  practitioner.id = await ObjectId(practitioner.runtimeType.toString());
//  print(practitioner.id);
//  org.id = await ObjectId(org.runtimeType.toString());
//  print(org.id);
}
