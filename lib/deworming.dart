import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class Deworming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MoreWorms(),
    );
  }
}

class MoreWorms extends StatefulWidget {
  @override
  _Deworming createState() => _Deworming();
}

class _Deworming extends State<MoreWorms> {
  String savedString = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deworming"),
      ),
      body: Column(
        children: [
          Text(savedString),
          Row(
            children: [
              RaisedButton(
                onPressed: () {
                   _save();
                },
              child: Text('Save'),
              ),
              RaisedButton(
                onPressed: () {
                  _read();
                },
              child: Text('Read'),
              ),
            ]
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pop(context); // Navigate back to opening screen when tapped.
            },
            child: Text('Return to Opening Page'),
          ),
        ]
      ),
    );
  }

  _read() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/my_file.txt');
      String text = await file.readAsString();
      print(text);
    } catch (e) {
      print("Couldn't read file");
    }
  }

  _save() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/my_file.txt');
    final text = 'Hello World!';
    print('${directory.path}/my_file.txt'.toString());
    await file.writeAsString(text);
    print('saved');
  }
}