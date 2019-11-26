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
      body: new Column(
        children: <Widget>[

          new RaisedButton(
            onPressed: () {
            Navigator.pop(context); // Navigate back to opening screen when tapped.
            },
            child: Text('Return to Opening Page'),
          ),

          new MyCustomForm(),
        ],
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
              future: getPatientList(),
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
  var parsedString = json.decode(patients.body).toString();
  var expression = RegExp("name((.(?!name))+?)\]\,");
  Iterable matches = expression.allMatches(parsedString);
  var end = "";

  matches.forEach((match) { 
    end = end + "\n" + parsedString.substring(match.start, match.end); 
  });

  return end;
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text(myController.text),
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: Icon(Icons.text_fields),
      ),
    );
  }
}