import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_fhir/testing.dart';
import 'package:flutter_fhir/register.dart';
import 'package:flutter_fhir/patientActivity.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_fhir/patientList.dart';

//Calls menu class
void main() {
  runApp(MainMenu());
}

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
                  PageButton('images/patient.png', 'New Patient', Register()),
//                  ActionButton('images/sync.png', 'Sync with server', patientList("get")),
                  ActionButton('images/chop.png', 'Placeholder', placeHolder()),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  PageButton('images/activities.png', 'Patient Activities', PatientActivity()),
                  PageButton('images/testing.png', 'Testing', Testing()),
                  ActionButton('images/trash.png', 'Delete Files', deleteFiles())
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
Future deleteFiles() async{
  final directory = await getApplicationDocumentsDirectory(); //get current directory
  directory.list(recursive: false, followLinks: true).listen((FileSystemEntity entity)
  {
    if (entity.path.contains('.txt')) {
      File f = File(entity.path);
      f.delete();
    }
  });
}

//prints list of files in application document directory
Future placeHolder() async{
  final directory = await getApplicationDocumentsDirectory(); //get current directory
  print(directory.list(recursive: false, followLinks: true).listen((FileSystemEntity entity)
  {
    print(entity.path);
  }));
}

//PageButton, returns FlatButton with image, text, and link to next page, passed as arguments
class PageButton extends StatelessWidget {
  final String imageDir;
  final String buttonText;
  final Widget link;

  PageButton(this.imageDir, this.buttonText, this.link);

  @override
  Widget build(context) {
    return FlatButton(
        child: Column(
          children: <Widget>[
            ClipRRect(child: Image.asset(imageDir, height: 150, width: 150),),
            Text(buttonText, style: TextStyle(color: Colors.white),),
          ],
        ),
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => link),);
        }
    );
  }
}

//ActionButton, returns FlatButton with image, text, and function to call, passed as arguments
class ActionButton extends StatelessWidget {
  final String imageDir;
  final String buttonText;
  final Future<dynamic> func;

  ActionButton(this.imageDir, this.buttonText, this.func);

  @override
  Widget build(context) {
    return FlatButton(
      onPressed: () async {
        await func;
        setState((){});
      },
        child: Column(
          children: <Widget>[
            ClipRRect(child: Image.asset(imageDir, height: 150, width: 150),),
            Text(buttonText, style: TextStyle(color: Colors.white),),
          ],
        ),
    );
  }
}