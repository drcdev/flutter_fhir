import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

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
 
class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Patients"),
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
              future: PatientList(),
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

Future<String> getPatientList() async {
  Map<String, String> headers = {"Content-type": "application/json"};
  Response response = await post(
      "https://dbhifhir.aidbox.app/auth/token?client_id=greyfhir&client_secret=verysecret&grant_type=client_credentials",
      headers: headers);
  var parsedbody = json.decode(response.body);
  var token = parsedbody['token_type'] + " " + parsedbody['access_token'];
  headers.putIfAbsent("Authorization", () => token);
  Response patients =
      await get("https://dbhifhir.aidbox.app/Patient", headers: headers);
  var jsonData = patients.body;
  var parsedJson = json.decode(jsonData);
  return parsedJson.toString().replaceAll(",", ",\n          ").replaceAll("{", "{\n     ");
}

class PatientListState extends State<PatientList> {
  final _patients = <String>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildPatients() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return Divider(); /*2*/

          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow(_patients[index]);
        }
    );
  }

    Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
  // #enddocregion _buildRow

  // #docregion RWS-build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }
  // #enddocregion RWS-build
  // #docregion RWS-var
}
}

class PatientList extends StatefulWidget {
  @override
  PatientListState createState() => PatientListState();
}