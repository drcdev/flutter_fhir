import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

Write(var object) async {
  //declare the type of the json object passed
  String objectType = object.runtimeType.toString();

  //get current working directory
  final directory = await getApplicationDocumentsDirectory();

  //ToDo - figure out better id
  object.id = object.id ?? '1001';

  //if the object doesn't exist in the appropriate directory, add it
  var file = File('${directory.path}/fhir/' +
      objectType[0].toLowerCase() +
      objectType.substring(1, objectType.length) +
      '/' +
      object.id +
      '.txt');

  if (!await file.exists()) {
    file.writeAsString(json.encode(object));
  }
  print(file);

  //define a file for that particular type of resource
  file = File('${directory.path}/fhir/' +
      objectType[0].toLowerCase() +
      objectType.substring(1, objectType.length) +
      '.txt');

  //if the file doesn't exist, create it, add the id
  //if it does exist, check if the id is on it, if it isn't, add the id
  if (!await file.exists()) {
    file.writeAsString(object.id);
  } else {
    String objects = await file.readAsString();
    if (!objects.contains(object.id)) {
      objects += '\n' + object.id;
      file.writeAsString(objects);
    }
  }
}
