import 'package:flutter/material.dart';
import 'package:flutter_fhir/testing.dart';
import 'package:flutter_fhir/register.dart';
import 'package:flutter_fhir/syncServer.dart';
import 'package:flutter_fhir/patientActivity.dart';

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
        body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          children: <Widget>[
            MenuButton('images/patient.jpg', 'New Patient', Register()),
            MenuButton('images/activity.jpg', 'Patient Activities', PatientActivity()),
            MenuButton('images/sync.jpg', 'Sync with server', SyncServer()),
            MenuButton('images/testing.jpg', 'Testing', Testing()),
          ],
        ),
      ),
    );
  }
}

//MenuButton, returns FlatButton with image, text, and link to next class, passed as arguments
class MenuButton extends StatelessWidget {
  final String imageDir;
  final String buttonText;
  final Widget link;

  MenuButton(this.imageDir, this.buttonText, this.link);

  @override
  Widget build(context) {
		return FlatButton(
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              imageDir,
              height: 100,
              width: 100),
          ),
          Text(
            buttonText,
            style: TextStyle(color: Colors.white),),
        ],
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => link),
        );
      }
    );
  }
}