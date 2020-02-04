import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

Write(var object) async {
  //declare the type of the json object passed
  String objectType = object.runtimeType.toString();

  object.id = object.id ?? '1001';

  //get current working directory
  final directory = await getApplicationDocumentsDirectory();

  //define a file for that particular type of resource
  var file = File('${directory.path}/fhir/' +
      objectType[0].toLowerCase() +
      objectType.substring(1, objectType.length) +
      '.txt');

  //if the file doesn't exist, create it, add the id
  //if it does exist, check if the id is on it, if it isn't, add the id
  if (!await file.exists()) {
    switch(objectType) {
      case 'Patient': { object.id = '1D7-1'; } break;
      case 'Practitioner': { object.id = '1E9-1'; } break;
      case 'Organization': {object.id = '1D2-1'; } break;
      case 'Location': {object.id = '4001'; } break;
      case 'Composition': {object.id = '5001'; } break;
      case 'MedicationAdministration': {object.id = '6001'; } break;
      case 'Encounter': {object.id = '7001'; } break;
      case 'Period': {object.id = '8001'; } break;
    }
    file.writeAsString(object.id);
  } else {
    String objects = await file.readAsString();
    object.id = (int.parse(objects.split('\n').last) + 1).toString();
    print(object.id);
    if (!objects.contains(object.id)) {
      objects += '\n' + object.id;
      file.writeAsString(objects);
    }
  }

  //if the object doesn't exist in the appropriate directory, add it
  file = File('${directory.path}/fhir/' +
      objectType[0].toLowerCase() +
      objectType.substring(1, objectType.length) +
      '/' +
      object.id +
      '.txt');

  if (!await file.exists()) {
    file.writeAsString(json.encode(object));
  }
  print(file);

}
