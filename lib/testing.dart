import 'package:flutter/material.dart';
import 'package:flutter_fhir/class/patient.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'dart:convert';


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
              String pt = await _read();
              setState(() => newpt = pt);
            },
          child: Text('Read'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pop(context); // Navigate back to opening screen when tapped.
            },
            child: Text('Return to Opening Page'),
          ),
          Text(newpt),
        ]
      ),
    );
  }

  Future<String> _read() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final ptList = File('${directory.path}/ptList.txt');
      List<String> ptNumbers = (await ptList.readAsString()).split('\n');
      List<Patient> patientList;
      for(var i = 0; i < ptNumbers.length; i++){
        final pt = File('${directory.path}/' + ptNumbers[i] + '.txt');
        String newpt = await pt. .readAsString();  
        Patient ptnew = json.encoder.convert(newpt);
        Map<String, dynamic> map = jsonDecode(newpt); 
        Patient ptnew = Patient.fromJson(json.encode(newpt)));
        print(ptnew.name.toString());
      }
      return(newpt);
    } catch (e) {
      print("Couldn't read file");
      return("Couldn't read file");
    }
  
  }
}