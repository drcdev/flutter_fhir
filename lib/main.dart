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
          children: <Widget>[

            new RaisedButton(
              child: new Text("Register Patient"),
              color:  Colors.blueAccent[600],
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Register()),
                );
              }
            ),

            new RaisedButton(
              child: new Text("Download Patients"),
              color:  Colors.blueAccent[600],
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SyncServer()),
                );
              }
            ),

          ],
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
        title: Text("Download Patients"),
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


// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.blue[100],
//         appBar: AppBar(
//           title: Text("CHOP's FHIRflies"),
//           backgroundColor: Colors.blue[900],
//         ),
//         body: Container(
//           child: SingleChildScrollView(
//             child: FutureBuilder(            
//               future: getFutureData(),
//               builder: (BuildContext context, AsyncSnapshot snapshot) {
//                 if (snapshot.hasData) {
//                   return Center(
//                     child: Text(
//                       snapshot.data,
//                     ),
//                   );
//                 } else {
//                   return Center(
//                     child: CircularProgressIndicator(),
//                   );
//                 }
//               },
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }

// Future<String> getFutureData() async {
//   Map<String, String> headers = {"Content-type": "application/json"};
//   Response response = await post(
//       "https://dbhifhir.aidbox.app/auth/token?client_id=greyfhir&client_secret=verysecret&grant_type=client_credentials",
//       headers: headers);
//   var parsedbody = json.decode(response.body);
//   var token = parsedbody['token_type'] + " " + parsedbody['access_token'];
//   headers.putIfAbsent("Authorization", () => token);
//   Response patients =
//       await get("https://dbhifhir.aidbox.app/Patient", headers: headers);
//   var jsonData = patients.body;
//   var parsedJson = json.decode(jsonData);
//   return parsedJson.toString().replaceAll(",", ",\n          ").replaceAll("{", "{\n     ");
// }