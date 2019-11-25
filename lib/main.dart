import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  final postURL = "https://dbhifhir.aidbox.app";
  Map<String, String> headers = {"Content-type": "application/json"};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Future Builder',
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: FutureBuilder(
          future: getFutureData(postURL, headers),
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
    );
  }

  Future<String> getFutureData(String postURL,
      Map<String, String> headers) async {
    Response response = await post(postURL+"/auth/token?client_id=greyfhir&client_secret=verysecret&grant_type=client_credentials", headers: headers);
    var parsedbody = json.decode(response.body);
    var token = parsedbody['token_type'] + " " + parsedbody['access_token'];
    headers.putIfAbsent("Authorization", () => token);
    Response patients = await get(postURL + "/Patient", headers: headers);
    return patients.body;
  }
}
