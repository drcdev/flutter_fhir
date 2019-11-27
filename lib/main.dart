import 'package:flutter/material.dart';
import 'package:flutter_fhir/deworming.dart';
import 'package:flutter_fhir/register.dart';
import 'package:flutter_fhir/syncServer.dart';
import 'package:flutter_fhir/vaccinations.dart';

void main() {
  runApp(MaterialApp(
    title: "CHOP's FHIRflies",
    home: Intro(),
  ));
}

class Intro extends StatelessWidget {
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
            Column(
              children: [

                FlatButton(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'images/chop.jpg',
                        width: 150,
                        height: 150,
                        fit: BoxFit.fill,
                        ),
                      Text("Register Patient"),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                    );
                  }
                ),

                FlatButton(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'images/vaccine.jpg',
                        width: 150,
                        height: 150,
                        fit: BoxFit.fill,
                        ),
                      Text("Vaccinations"),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Vaccinations()),
                    );
                  }
                ),
              ],
            ),

            Column(   
              children: [    
                FlatButton(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'images/samurai.png',
                        width: 150,
                        height: 150,
                        fit: BoxFit.fill,
                        ),
                      Text("Sync with server"),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SyncServer()),
                    );
                  }
                ),

                RaisedButton(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'images/deworming.jpg',
                        width: 150,
                        height: 150,
                        fit: BoxFit.fill,
                        ),
                      Text("Deworming"),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Deworming()),
                    );
                  }
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}