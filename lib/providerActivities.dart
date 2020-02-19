import 'package:flutter/cupertino.dart';
import 'package:flutter_fhir/fhirClasses/patient.dart';
import 'package:flutter_fhir/parasites/parasite.dart';
import 'package:flutter_fhir/vaccines/vaccine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fhir/util/buttons.dart';
import 'package:flutter_fhir/util/db.dart';

class ProviderActivities extends StatelessWidget {
  Patient pt;
  ProviderActivities({this.pt});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: pt != null ? _ProviderActivities(pt: pt) : _ProviderActivities());
  }
}

class _ProviderActivities extends StatefulWidget {
  Patient pt;
  _ProviderActivities({this.pt});
  @override
  _ProviderActivitiesState createState() => pt != null
      ? _ProviderActivitiesState(pt: pt)
      : _ProviderActivitiesState();
}

class _ProviderActivitiesState extends State<_ProviderActivities> {
  Patient pt;
  _ProviderActivitiesState({this.pt});

  Future<Map> _getLocationNumbers() async {
    var locations = new Map();
    var fhirDb = DatabaseHelper();
    List<dynamic> ptList = await fhirDb.getList('Patient');
    for (int i = 0; i < ptList.length; i++) {
      if (ptList[i].address != null) {
        if (locations.containsKey(ptList[i].address[0].district)) {
          locations[ptList[i].address[0].district] += 1;
        } else {
          locations[ptList[i].address[0].district] = 1;
        }
      }
    }
    return locations;
  }

  Future<Map> _identify() async {
    var locations = new Map();
    var fhirDb = DatabaseHelper();
    List<dynamic> ptList = await fhirDb.getList('Patient');
    for (int i = 0; i < ptList.length; i++) {
      if (ptList[i].birthDate != null) {
        double diff = DateTime
            .now()
            .difference(DateTime.parse(ptList[i].birthDate))
            .inDays /
            365;
        if (ptList[i].address != null && 2 <= diff && diff <= 5) {
          if (locations.containsKey(ptList[i].address[0].district)) {
            locations[ptList[i].address[0].district] += 1;
          } else {
            locations[ptList[i].address[0].district] = 1;
          }
        }
      }
    }
    return locations;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Salud Dominicana'),
        backgroundColor: Colors.blue[900],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          color: Colors.blueGrey,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Visibility(
                visible: pt != null,
                child: Text(
                  'Active Patient: ' + (pt?.printName() ?? ''),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ]),
          ),
        ),
        //calls MenuButton class for each one, passes image, text, and class to call
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          PageButton('assets/images/parasite.png', 'Antiparasite Campaign',
              Parasite()),
          PageButton('assets/images/vaccine.png', 'Immunizations', Vaccine()),
        ]),
        Container(
          color: Colors.blueGrey[900],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Total',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 28,
                          color: Colors.white),
                    ),
                    FutureBuilder(
                      future: _getLocationNumbers(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data.length, //# of locations
                              itemBuilder: (context, index) {
                                String key =
                                    snapshot.data.keys.elementAt(index);
                                return Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: new Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        new Text(
                                          '$key: ${snapshot.data[key]}',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        )
                                      ]),
                                );
                              });
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Text(
                      '2-5yo',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 28,
                          color: Colors.white),
                    ),
                    FutureBuilder(
                      future: _identify(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data.length, //# of locations
                              itemBuilder: (context, index) {
                                String key =
                                    snapshot.data.keys.elementAt(index);
                                return Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: new Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        new Text(
                                          '$key: ${snapshot.data[key]}',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        )
                                      ]),
                                );
                              });
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}
