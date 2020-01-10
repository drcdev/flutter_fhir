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
    return MaterialApp(
      home: _EvalRx(),
    );
  }
}

class _EvalRx extends StatefulWidget {
  @override
  _EvalRxState createState() => _EvalRxState();
}

class _EvalRxState extends State<_EvalRx> {
  List<Patient> patientList;

  @override
  void initState() {
    super.initState();
    _getList();
  }

  Future _getList() async {
    List<Patient> list = await ptList();
    setState(() {
      patientList = list;
    });
  }

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

          Padding( padding: const EdgeInsets.all(15.0), ),
          Expanded(
            child: Container(
              decoration: new BoxDecoration(color: Colors.blueGrey),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: patientList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      '${(patientList[index].name?.first?.family?.toString() ?? '') + ', ' + (patientList[index].name?.first?.given?.first?.toString() ?? '')}',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding( padding: const EdgeInsets.all(12.0), ),

          RaisedButton(
            onPressed: () {
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