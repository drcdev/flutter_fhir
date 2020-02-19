import 'package:flutter_fhir/fhirClasses/patient.dart';
import 'package:flutter_fhir/mainMenu/providerActivities/parasites/parasite.dart';
import 'package:flutter_fhir/mainMenu/providerActivities/vaccines/vaccine.dart';
import 'package:flutter/material.dart';

import 'package:flutter_fhir/mainMenu/testingSettings/testing.dart';
import 'package:flutter_fhir/mainMenu/providerActivities/registerNew/register.dart';
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
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Visibility(
            visible: pt != null,
            child: Text(
              'Active Patient: ' + (pt?.printName() ?? ''),
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]),
        //calls MenuButton class for each one, passes image, text, and class to call
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          PageButton('assets/images/parasite.png', 'Antiparasite Campaign',
              Parasite()),
          PageButton('assets/images/vaccine.png', 'Immunizations', Vaccine()),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FutureBuilder(
              future: _getLocationNumbers(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data.length, //# of locations
                      itemBuilder: (context, index) {
                        String key = snapshot.data.keys.elementAt(index);
                        return new Column(children: <Widget>[
                          new Text(
                            '$key: ${snapshot.data[key]}',
                            style: TextStyle(color: Colors.white),
                          )
                        ]);
                      });
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            FutureBuilder(
              future: _getLocationNumbers(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data.length, //# of locations
                      itemBuilder: (context, index) {
                        String key = snapshot.data.keys.elementAt(index);
                        return new Column(children: <Widget>[
                          new Text(
                            '$key: ${snapshot.data[key]}',
                            style: TextStyle(color: Colors.white),
                          )
                        ]);
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
      ]),
    ));
  }
}
