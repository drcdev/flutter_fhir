import 'package:flutter/material.dart';
import 'package:flutter_fhir/class/patient.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'dart:convert';
import 'package:flutter_fhir/main.dart';


class Testing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tests(),
    );
  }
}

class Tests extends StatefulWidget {
  @override
  _Testing createState() => _Testing();
}

class _Testing extends State<Tests> {
  String newpt = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testing Page"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () async {
              List<Patient> ptList = await _read();
              String ptnames ='';
              if(ptList.length > 0){
                for(var i = 0; i < ptList.length; i++){
                  ptnames += ptList[i].name[0].given[0] + ' ' + ptList[i].name[0].family + '\n';
                }
              } else ptnames = 'No patients';
              setState(() => newpt = ptnames);
            },
          child: Text('Read'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Menu()),
              );
            },
            child: Text('Return to Opening Page'),
          ),
          Text(newpt),
        ]
      ),
    );
  }

  Future<List <Patient>> _read() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      List<String> ptNumbers = (await File('${directory.path}/ptList.txt').readAsString()).split('\n');
      List<Patient> ptList = [];
      for(var i = 0; i < ptNumbers.length; i++){
        final pt = File('${directory.path}/' + ptNumbers[i] + '.txt');
        var newpt = Patient.fromJson(json.decode(await pt.readAsString()));
        ptList.add(newpt);
      }
      return(ptList);
    } catch (e) {
      List<Patient> ptList = [];
      return(ptList);
    }
  
  }
}