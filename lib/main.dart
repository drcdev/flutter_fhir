import 'package:flutter/material.dart';
import 'package:flutter_fhir/testing.dart';
import 'package:flutter_fhir/register.dart';
import 'package:flutter_fhir/syncServer.dart';
import 'package:flutter_fhir/patientActivity.dart';

//Calls menu class
void main() {
  runApp(MaterialApp(
    title: "CHOP's FHIRflies",
    home: Menu(),
  ));
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
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
              children: [
                MenuButton('images/chop.jpg', 'New Patient', Register()),
                MenuButton('images/vaccine.jpg', 'Patient Activities', PatientActivity()),
              ],
            ),
            Column(   
              children: [   
                MenuButton('images/samurai.png', 'Sync with server', SyncServer()),
                MenuButton('images/deworming.jpg', 'Testing', Testing()), 
              ],
            ),
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
          Image.asset(
            imageDir,
            width: 150,
            height: 150,
            fit: BoxFit.fill,
            ),
          Text(buttonText),
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