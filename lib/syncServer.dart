import 'package:flutter/material.dart';
import 'package:flutter_fhir/patientList.dart';
import 'package:flutter_fhir/main.dart';

class SyncServer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sync with server"),
      ),
      body: new Column(
        children: <Widget>[

          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainMenu()),
              );
            },
            child: Text('Return to Opening Page'),
          ),

          new Container(
            child: FutureBuilder(            
              future: patientList("get"),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Center(
                    child: Text(
                      snapshot.data,
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
    
        ],
      ),
    );
  }
}

//will use this eventually to sync with server
          // new RaisedButton(
          //   onPressed: () {
          //     Patient newpt = Patient(resourceType: 'Patient', address: [Address(district: barrio)], name: [HumanName(given: [givenNameController.text], family: familyNameController.text)], birthDate: birthDate);
          //     patientList('post', body: newpt);
          //   },
          //   //'{\n  "resourceType": "Patient",\n  "name": [\n    {\n      "family": "' + familyNameController.text + '",\n      "given": [\n        "' + givenNameController.text + '"\n      ]\n    }\n  ],\n  "birthDate": "' + birthDate + '"\n}'),
          //   child: Text('Press to Upload Patient'),
          // ),