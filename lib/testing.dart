import 'package:flutter/material.dart';
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
      List<String> patients;
      final ptList = File('${directory.path}/ptList.txt');
      String pts = await ptList.readAsString();
      patients = pts.split('\n');
      String newpt = '';
      print(patients);
      for(var i = 0; i < patients.length; i++){
        final pt = File('${directory.path}/' + patients[i] + '.txt');
        newpt = newpt + '\n' + await pt.readAsString();
      }
      print(newpt);
      return(newpt);
    } catch (e) {
      print("Couldn't read file");
      return("Couldn't read file");
    }
  
  }
}