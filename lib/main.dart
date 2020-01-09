import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_fhir/testing.dart';
import 'package:flutter_fhir/register.dart';
import 'package:flutter_fhir/evalRx.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_fhir/syncServer.dart';
import 'package:flutter_fhir/settings.dart';
import 'package:flutter_fhir/buttons.dart';


void main() => runApp(MainMenu());

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("CHOP's FHIRflies"),
          backgroundColor: Colors.blue[900],
        ),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            //calls MenuButton class for each one, passes image, text, and class to call
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PageButton('images/patient.png', 'Register New Patient', Register()),
                  ActionButton('images/sync.png', 'Sync with server', syncServer, 'get'),
                  PageButton('images/chop.png', 'Settings', Settings()),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  PageButton('images/activities.png', 'Evaluation & Treatment', EvalRx()),
                  PageButton('images/testing.png', 'Testing', Testing()),
                  ActionButton('images/trash.png', 'Delete Files', deleteFiles)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//deletes all files in application document directory ending in .txt
deleteFiles() async{
  final directory = await getApplicationDocumentsDirectory(); //get current directory
  directory.list(recursive: false, followLinks: true).listen((FileSystemEntity entity)
  {
    print(entity.path);
    if (entity.path.contains('.txt')) {
      File f = File(entity.path);
      f.delete();
    }
  });
}