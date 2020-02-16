//import 'package:flutter/material.dart';
//import 'package:flutter_fhir/fhirClasses/patient.dart';
//import 'package:flutter_fhir/buttons.dart';
//import 'package:flutter_fhir/mainMenu/mainMenu.dart';
//import 'package:flutter_fhir/mainMenu/providerActivities/parasites/parasite.dart';
//import 'package:flutter_fhir/mainMenu/providerActivities/vaccines/vaccine.dart';
//import 'package:flutter/cupertino.dart';
//
//class EvalRx extends StatelessWidget {
//  Patient pt;
//  EvalRx({this.pt});
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: pt != null ? _EvalRx(pt: pt) : _EvalRx(),
//    );
//  }
//}
//
//class _EvalRx extends StatefulWidget {
//  Patient pt;
//  _EvalRx({this.pt});
//  @override
//  _EvalRxState createState() => pt != null ? _EvalRxState(pt: pt) : _EvalRxState();
//}
//
//class _EvalRxState extends State<_EvalRx> {
//  Patient pt;
//  _EvalRxState({this.pt});
//  List<Patient> patientList;
//  var searchPt = new TextEditingController();
//  String search;
//
//  //check if a patient has been passed or selected
//  //if so, display only that patient
//  //add listener to allow patient search
//  @override
//  void initState() {
//    super.initState();
//    _getList();
//    if(pt != null) {
//      search = pt.printName();
//      searchPt.text = search;
//    }
//    searchPt.addListener(() {
//      setState(() {
//        search = searchPt.text;
//      });
//    });
//  }
//
//  @override
//  void dispose() {
//    searchPt.dispose();
//    super.dispose();
//  }
//
//  //get a list of all patients on this device
//  Future _getList() async {
//    List<Patient> list = await readPtList();
//    setState(() {
//      patientList = list;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.black,
//      appBar: AppBar(
//        title: Text("Patient Activities"),
//      ),
//      body: Column(
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//        children: [
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            children: [
//              ActionPageButton('assets/images/parasite.png', 'Antiparasite Campaign', Parasite(pt: pt), pt),
//              PageButton('assets/images/vaccine.png', 'Immunizations', Vaccine()),
//            ],
//          ),
//
//          Padding( padding: const EdgeInsets.all(10.0), ),
//          TextField(
//            style: TextStyle(
//              color: Colors.white,
//              fontSize: 20,
//            ),
//            decoration: InputDecoration(
//              labelText: 'Search Patient Name',
//              labelStyle: TextStyle(
//                color: Colors.white,
//                fontSize: 20,
//              )
//            ),
//            controller: searchPt,
//          ),
//
//          Padding( padding: const EdgeInsets.all(5.0), ),
//          Expanded(
//            //read the list of patients on the device, and create a scrollable,
//            // searchable list for provider
//            child: FutureBuilder(
//              future: readPtList(),
//              builder: (BuildContext context, AsyncSnapshot snapshot) {
//                if (snapshot.hasData) {
//                  return ListView.builder(
//                    shrinkWrap: true,
//                    itemCount: snapshot.data.length, //# of patients
//                    itemBuilder: (context, index) {
//                      String name = snapshot.data[index].printName(); //pt name
//                      String id = snapshot.data[index].id; //pt id
//                      return search == null || search == '' ? new Card(
//                        color: Colors.blueGrey,
//                        child: ListTile(
//                          title: Text(name,
//                            style: TextStyle(
//                              color: Colors.white,
//                            ),
//                          ),
//                          //allows selection of single patient from list
//                          onLongPress: () async {
//                            pt = await readPatient(id);
//                            setState(() => searchPt.text = name);
//                          },
//                        ),
//                      ) :
//                      snapshot.data[index].printName().toLowerCase().contains(
//                          search.toLowerCase()) ? new Card(
//                          color: Colors.blueGrey,
//                            child: ListTile(
//                              title: Text(snapshot.data[index].printName(),
//                                style: TextStyle(
//                                  color: Colors.white,
//                                ),
//                              ),
//                            ),
//                          ) : new Container();
//                    },
//                  );
//                } else {
//                  return Center(
//                    child: CircularProgressIndicator(),
//                  );
//                }
//              },
//            ),
//          ),
//          Padding( padding: const EdgeInsets.all(12.0), ),
//
//          RaisedButton(
//            onPressed: () {
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => MainMenu()),
//              );
//            },
//            child: Text('Return to Opening Page'),
//          ),
//        ],
//      ),
//    );
//  }
//}

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Antiparasite Campaign'),
//      ),
//      body: Column(children: [
//        Text('Name: ' + pt.printName()),
//        Text('Birthdate: ' +
////            pt.birthDate.month.toString() +
//            '-' +
////            pt.birthDate.day.toString() +
//            '-' +
////            pt.birthDate.year.toString() +
//            '\nBarrio: ' +
//            pt.address[0].district.toString()),
//        RaisedButton(
//          onPressed: () {
//            period.start = DateTime.now();
////            _getCurrentLocation();
////            Location_Position locPos = Location_Position(
////              longitude: _currentPosition.longitude,
////              latitude: _currentPosition.latitude
////            );
////            Location loc = Location(
////              position: locPos
////            );
////            List<Location> location = [
////              loc
////            ];
//            encounter = new Encounter.fromJson(
//                json.decode('{  "resourceType": "Encounter",'
//                        '"classs": {'
//                        '"system": "http://hl7.org/fhir/v3/ActCode",'
//                        '"code": "HH",'
//                        '"display": "home health"'
//                        '},'
//                        '"subject": {'
//                        '"reference": "Patient/' +
//                    pt.id +
//                    '",'
//                        '"display": "DR Patient"'
//                        '},'
//                        '"participant": ['
//                        '{'
//                        '"individual": {'
//                        '"reference": "Practitioner/2001",'
//                        '"display": "Dr. Grey"'
//                        '}'
//                        '}'
//                        '],'
//                        '"location": ['
//                        '{'
//                        '"location": {'
//                        '"reference": "Location/4001",'
//                        '"display": "Dominican Republic"'
//                        '}'
//                        '}'
//                        '],'
//                        '"serviceProvider": {'
//                        '"reference": "Organization/3001",'
//                        '"display": "CHOP"'
//                        '}'
//                        '}'));
//            composition = new Composition.fromJson(json.decode('{'
//                    '"resourceType": "Composition",'
//                    '"id": "5001",'
//                    '"subject": {'
//                    '"reference": "Patient/' +
//                pt.id +
//                '",'
//                    '"display": "DR Patient"'
//                    '},'
//                    '"encounter": {'
//                    '"reference": "Encounter/' +
//                encounter.id +
//                '",'
//                    '"display": "Encounter 1"'
//                    '},'
//                    '"date": "' +
//                DateTime.now().toString() +
//                '",'
//                    '"author": ['
//                    '{'
//                    '"reference": "Practitioner/2001",'
//                    '"display": "Dr. Grey"'
//                    '}'
//                    '],'
//                    '"title": "Biannual Deworming Campaign",'
//                    '}'));
//          },
//          child: Text('Start Encounter'),
//        ),
//        RaisedButton(
//          onPressed: () {
//            MedicationAdministration medicationAdministration =
//                new MedicationAdministration.fromJson(json.decode('{'
//                        '"resourceType": "MedicationAdministration",'
//                        '"status": "completed",'
//                        '"medicationCodeableConcept": {'
//                        '"coding": ['
//                        '{'
//                        '"system": "http://snomed.info/sct",'
//                        '"code": "387558006",'
//                        '"display": "Albendazole"'
//                        '}'
//                        ']'
//                        '},'
//                        '"subject": {'
//                        '"reference": "Patient/' +
//                    pt.id +
//                    '",'
//                        '"display": "DR Patient"'
//                        '},'
//                        '"context": {'
//                        '"reference": "Encounter/' +
//                    encounter.id +
//                    '",'
//                        '"display": "Deworming Encounter"'
//                        '},'
//                        '"effectiveDateTime": "2020-01-31T08:59:22-05:00",'
//                        '"performer": ['
//                        '{'
//                        '"actor": {'
//                        '"reference": "Practitioner/2001",'
//                        '"display": "Dr. Grey"'
//                        '}'
//                        '}'
//                        ']'
//                        '}'));
//          },
//          child: Text('Give Medication'),
//        ),
//        RaisedButton(
//          onPressed: () {
//            period.end = DateTime.now();
//            encounter.period = period;
//            composition.status = 'final';
//            encounter.status = 'finished';
//          },
//          child: Text('Complete Encounter'),
//        ),
//        RaisedButton(
//          onPressed: () {
//            print(pt.toJson().toString());
//            Navigator.push(
//              context,
//              MaterialPageRoute(builder: (context) => MainMenu()),
//            );
//          },
//          child: Text('Return to Opening Page'),
//        ),
//      ]),
//    );
//  }

//_getCurrentLocation() {
//  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
//
//  geolocator
//      .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
//      .then((Position position) {
//    setState(() {
//      _currentPosition = position;
//    });
//  }).catchError((e) {
//    print(e);
//  });
//}
//}
