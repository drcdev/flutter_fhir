import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_fhir/class/patient.dart';
import 'package:flutter_fhir/class/bundle.dart';

patientList(String action, {Patient body} ) async {
  Map<String, String> headers = {'Content-type': 'application/json'};
  Response response = await post(
      'https://dbhifhir.aidbox.app/auth/token?client_id=greyfhir&client_secret=verysecret&grant_type=client_credentials',
      headers: headers);
  var parsedbody = json.decode(response.body);
  var token = parsedbody['token_type'] + ' ' + parsedbody['access_token'];
  headers.putIfAbsent("Authorization", () => token);
  if(action == 'get') {
    Response patients = await get('https://dbhifhir.aidbox.app/Patient', headers: headers);
    var myBundle = Bundle.fromJson(json.decode(patients.body));
    for(var i = 0; i < myBundle.total; i++) {
      savePatient(Patient.fromJson(myBundle.entry[i].resource.toJson()));
    }
    print('We gots em all!');
  } else if (action == 'post') {
    await post('https://dbhifhir.aidbox.app/Patient', headers: headers, body: json.encode(body));
    print('All sent.');
  } else {
    print('Well, that didn\'t work.');
  }
}
