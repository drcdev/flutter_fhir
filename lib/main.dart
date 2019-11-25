import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text("GreyFHIR"),
          backgroundColor: Colors.blue[900],
        ),
        body: Container(
          child: FutureBuilder(
            future: getFutureData(),
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
      ),
    ),
  );
}

Future<String> getFutureData() async {
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
  return parsedJson.toString();
}