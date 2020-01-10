import 'package:flutter/material.dart';
import 'package:flutter_fhir/class/patient.dart';
import 'package:flutter_fhir/main.dart';
import 'package:flutter_fhir/buttons.dart';
import 'package:flutter_fhir/parasite.dart';
import 'package:flutter_fhir/vaccine.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

class EvalRx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Patient Activities"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PageButton('images/parasite.png', 'Antiparasite Campaign', Parasite()),
              PageButton('images/vaccine.png', 'Immunizations', Vaccine()),
            ],
          ),

          RaisedButton(
            onPressed: () {
              ptList();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainMenu()),
              );
            },
            child: Text('Return to Opening Page'),
          ),
        ],
      ),
    );
  }
}

Future<List<Patient>> ptList() async {
  final directory = await getApplicationDocumentsDirectory(); //get current directory
  List<String> ptNumbers = (await File('${directory.path}/ptList.txt').readAsString()).split('\n');
  var ptList = new List<Patient>();
  for(var i = 0; i < ptNumbers.length; i++){
    final pt = File('${directory.path}/' + ptNumbers[i] + '.txt');
    var newpt = Patient.fromJson(json.decode(await pt.readAsString()));
    ptList.add(newpt);
  }
  return ptList;
}