import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/foundation.dart';

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
 
class SyncServer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sync with server"),
      ),
      body: new Column(
        children: <Widget>[

          new RaisedButton(
            onPressed: () {
            Navigator.pop(context); // Navigate back to opening screen when tapped.
            },
            child: Text('Return to Opening Page'),
          ),

          new Container(
            child: FutureBuilder(            
              future: patientList("get"),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Center(
                    child: Text(
                      snapshot.data,
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
    
        ],
      ),
    );
  }
}

class Deworming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deworming"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context); // Navigate back to opening screen when tapped.
          },
          child: Text('Return to Opening Page'),
        ),
      ),
    );
  }
}

class Vaccinations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vaccinations"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context); // Navigate back to opening screen when tapped.
          },
          child: Text('Return to Opening Page'),
        ),
      ),
    );
  }
}

Future<String> patientList(String action, {String body} ) async {
  Map<String, String> headers = {"Content-type": "application/json"};
  Response response = await post(
      "https://dbhifhir.aidbox.app/auth/token?client_id=greyfhir&client_secret=verysecret&grant_type=client_credentials",
      headers: headers);
  var parsedbody = json.decode(response.body);
  var token = parsedbody['token_type'] + " " + parsedbody['access_token'];
  headers.putIfAbsent("Authorization", () => token);
  if(action == "get") {
    Response patients = await get("https://dbhifhir.aidbox.app/Patient", headers: headers);
    var parsedString = json.decode(patients.body).toString();
    var expression = RegExp("name((.(?!name))+?)\]\,");
    Iterable matches = expression.allMatches(parsedString);
    var end = "";

    matches.forEach((match) { 
      end = end + "\n" + parsedString.substring(match.start, match.end); 
    });

    return end;
  } else if (action == "post") { 
    debugPrint('body $body');
    Response response = await post("https://dbhifhir.aidbox.app/Patient", headers: headers, body: body);
    String responseBody = response.body;
    debugPrint('response $responseBody');
    return "All sent.";
  } else {
    return "Well, that didn't work.";
  }
}

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  String birthDate;
  String response = "";
 
  @override
  void dispose() {
    myController1.dispose();
    myController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Patient'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          new TextField(
            decoration: new InputDecoration(
              hintText: "Given Names"),
            controller: myController1,
          ),

          new TextField(
            decoration: new InputDecoration(
              hintText: "Family Names"),
            controller: myController2,
          ),

          new DateTimePickerFormField(
            inputType: InputType.date,
            format: DateFormat("yyyy-MM-dd"),
            initialDate: DateTime.now(),
            editable: true,
            decoration: InputDecoration(
              labelText: 'BirthDate',
              hasFloatingPlaceholder: false
            ),
            onChanged: (birthday) {
              setState(() => birthDate = birthday.toString().replaceAll(" 00:00:00.000", "") );
            },
          ),

          new Center(
            child: Text(
              response
            )
          ),

          new RaisedButton(
            onPressed: () => patientList("post", body: '{\n  "resourceType": "Patient",\n  "name": [\n    {\n      "family": "' + myController2.text + '",\n      "given": [\n        "' + myController1.text + '"\n      ]\n    }\n  ],\n  "birthDate": "' + birthDate + '"\n}'),
            child: Text("Press to Upload Patient"),
          ),

          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Intro()),
              );
            },
            child: Text('Return to Opening Page'),
          ),
        ],
      ),
    );
  }
}

class Patient {
  Map<String, String> use;
  Map<String, String> resourceType;
  Map<String, String> id;
  Map<String, HumanName> name;
  Map<String, String> gender;
  Map<String, String> birthDate;
  Map<String, Address> address;

  Patient([this.use, this.resourceType, this.id, this.name, this.gender, this.birthDate, this.address]);
}

class Address {
  Map<String, String> use; //home | work | temp | old | billing - purpose of this address
  Map<String, String> type; //postal, physical, both
  Map<String, String> text; //Text representation of the address
  Map<String, String> line; //Street name, number, direction & P.O. Box etc. the order address elements should appear on an address label
  Map<String, String> city; //Name of city, town etc.
  Map<String, String> district; // District name (aka county)
  Map<String, String> state; // Sub-unit of country (abbreviations ok)
  Map<String, String> postalCode; // Postal code for area
  Map<String, String> country; // Country (e.g. can be ISO 3166 2 or 3 letter code)
  Map<String, Period> period; // Time period when address was/is in use
}

class HumanName {
  Map<String, String> text;
  Map<String, String> family;
  Map<String, List<String>> given;
  Map<String, List<String>> prefix;
  Map<String, List<String>> suffix;
  Map<String, Period> period;
}

class Period {
  Map<String, DateTime> start;
  Map<String, DateTime> end;
}