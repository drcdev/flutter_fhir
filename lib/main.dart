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
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            //calls MenuButton class for each one, passes image, text, and class to call
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MenuButton('images/patient.png', 'New Patient', Register()),
                  MenuButton('images/sync.png', 'Sync with server', SyncServer()),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MenuButton('images/activities.png', 'Patient Activities', PatientActivity()),
                  MenuButton('images/testing.png', 'Testing', Testing()),
                ],
              ),
            ],
          ),
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
          ClipRRect(child: Image.asset(imageDir, height: 150, width: 150),),
          Text(buttonText, style: TextStyle(color: Colors.white),),
        ],
      ),
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => link),);
      }
    );
  }
}