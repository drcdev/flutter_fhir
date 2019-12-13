import 'package:flutter/material.dart';
import 'package:flutter_fhir/class/patient.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

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
      List<String> numbers;
      final ptList = File('${directory.path}/ptList.txt');
      String pts = await ptList.readAsString();
      numbers = pts.split('\n');
      print(numbers);
      List<Patient> patientList;
      for(var i = 0; i < numbers.length; i++){
        final pt = File('${directory.path}/' + numbers[i] + '.txt');
        var newpt = Patient.fromJson(await pt.readAsString());
      }
      print(newpt);
      return(newpt);
    } catch (e) {
      print("Couldn't read file");
      return("Couldn't read file");
    }
  
  }
}