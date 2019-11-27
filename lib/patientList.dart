import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter/foundation.dart';

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
    var expression = RegExp("name((.(?!name))+?)\}\]\,");
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