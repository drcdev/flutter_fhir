import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

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
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            new RaisedButton(
              child: new Text(
                "Register Patient",
                style: TextStyle(fontSize: 30),
              ),
              color:  Colors.red,
              padding: EdgeInsets.all(30.0),
              elevation: 8,
              shape: StadiumBorder(),
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Register()),
                );
              }
            ),

            new RaisedButton(
              child: new Text(
                "Vaccinations",
                style: TextStyle(fontSize: 30),
              ),
              color: Colors.deepOrange,
              padding: EdgeInsets.all(30.0),
              elevation: 8,
              shape: StadiumBorder(),
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Vaccinations()),
                );
              }
            ),
            
            new RaisedButton(
              child: new Text(
                "Sync with server",
                style: TextStyle(fontSize: 30),
              ),
              color:  Colors.yellow,
              padding: EdgeInsets.all(30.0),
              elevation: 8,
              shape: StadiumBorder(),
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SyncServer()),
                );
              }
            ),

            new RaisedButton(
              child: new Text(
                "Deworming",
                style: TextStyle(fontSize: 30),
              ),
              color:  Colors.green,
              padding: EdgeInsets.all(30.0),
              elevation: 8,
              shape: StadiumBorder(),
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Deworming()),
                );
              }
            ),
          ]
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
    Response response = await post("https://dbhifhir.aidbox.app/Patient", headers: headers, body: body);
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
  DateTime birthDate;
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
              setState(() => birthDate = birthday);
            },
          ),

          new Center(
            child: Text(
              response
            )
          ),

          new RaisedButton(
            onPressed: () => patientList("post", body: '{\n  "resourceType": "Patient",\n  "name": [\n    {\n      "family": "' + myController2.text + '",\n      "given": [\n        "' + myController1.text + '"\n      ]\n    }\n  ],\n  "birthDate": "' + birthDate.toString() + '"\n}'),
//              setState(() => response = "Patient Sent");
            child: Text('{\n  "resourceType": "Patient",\n  "name": [\n    {\n      "family": "' + myController2.text + '",\n      "given": [\n        "' + myController1.text + '"\n      ]\n    }\n  ],\n  "birthDate": "' + birthDate.toString() + '"\n}'),
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