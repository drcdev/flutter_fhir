import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_fhir/fhirClasses/patient.dart';
import 'package:flutter_fhir/fhirClasses/bundle.dart' as bundle;


//Obtain authorization token
Future<String> obtainAuth () async {
  String name = 'faulkenbej@chop.edu';
  String secret = 'chopchop';
  String clientSecret = 'chopcho9';
  Map<String, String> headers = {'Content-type': 'application/json'};
  Response response = await post(
      'https://dbhifhir.aidbox.app/auth/token?client_id=greyfhir&grant_type=password&username=$name&password=$secret&client_secret=$clientSecret',
      headers: headers);
  if(response.statusCode == 200) {
    var parsedbody = json.decode(response.body);
    return parsedbody['token_type'] + ' ' + parsedbody['access_token'];
  } else {
    return('Error, Status Code: ${response.statusCode.toString()}');
  }
}


syncServer(String action, {Patient body}) async {
  print(await obtainAuth());
}
//  Map<String, String> headers = {'Content-type': 'application/json'};
//  Response response = await post(
//      'https://dbhifhir.aidbox.app/auth/token?client_id=greyfhir&grant_type=password&username=faulkenbej@chop.edu&password=chopchop&client_secret=chopchop',
//      headers: headers);
//  var parsedbody = json.decode(response.body);
//  var token = parsedbody['token_type'] + ' ' + parsedbody['access_token'];
//  headers.putIfAbsent("Authorization", () => token);
//  if (action == 'get') {
//    Response patients =
//        await get('https://dbhifhir.aidbox.app/Patient', headers: headers);
//    var myBundle = bundle.Bundle.fromJson(json.decode(patients.body));
//    for (var i = 0; i < myBundle.total; i++) {
//      print(i);
////      await Patient.fromJson(myBundle.entry[i].resource.toJson());
//      print(myBundle.entry[i].toJson().toString());
//      print(myBundle.entry[i].resource.toJson().toString());
//    }
//    print('Patients downloaded.');
//  } else if (action == 'post') {
//    await post('https://dbhifhir.aidbox.app/Patient',
//        headers: headers, body: json.encode(body));
//    print('All sent.');
//  } else {
//    print('Well, that didn\'t work.');
//  }
//}

//will use this eventually to sync with server
// new RaisedButton(
//   onPressed: () {
//     Patient newpt = Patient(resourceType: 'Patient', address: [Address(district: barrio)], name: [HumanName(given: [givenNameController.text], family: familyNameController.text)], birthDate: birthDate);
//     patientList('post', body: newpt);
//   },
//   //'{\n  "resourceType": "Patient",\n  "name": [\n    {\n      "family": "' + familyNameController.text + '",\n      "given": [\n        "' + givenNameController.text + '"\n      ]\n    }\n  ],\n  "birthDate": "' + birthDate + '"\n}'),
//   child: Text('Press to Upload Patient'),
// ),
