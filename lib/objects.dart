import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:flutter/services.dart' show rootBundle;

import 'package:path_provider/path_provider.dart';

Write(var object) async {

  String objectType = object.runtimeType.toString();
  //get current working directory
  final directory = await getApplicationDocumentsDirectory();

  //define file
  File file = new File('${directory.path}/fhir/' +
      objectType[0].toLowerCase() +
      objectType.substring(1, objectType.length) +
      '/' +
      object.id +
      '.txt');

  //write or rewrite file, for now assuming file updating
  //ToDo: decide how to handle updates not new writes
  file.writeAsString(json.encode(object));
  print(file);
}

Future <String> ObjectId(String objectType) async {

  //the id of the object
  String id;

  //get current working directory
  final directory = await getApplicationDocumentsDirectory();

  //define a file for that particular type of resource
  var file = File('${directory.path}/fhir/' +
      objectType[0].toLowerCase() +
      objectType.substring(1, objectType.length) +
      '.txt');

  //if the file doesn't exist, create it, add the id
  if (!await file.exists()) {
    Map ids =  json.decode(await rootBundle.loadString('assets/prefix.json'));
    id = (ids[objectType] + '-0001').toString();
    file.writeAsString(id);

    //if it does exist, check if the id is on it, if it isn't, add the id
  } else {
    String objects = await file.readAsString();
    int dec = int.parse(objects.split('-').last, radix: 16);
    dec += 1;
    var num = dec.toRadixString(16);
    id = objects.split('-').first + ('-');
    switch(num.length) {
      case 1: id += '000' + num.toString().toUpperCase(); break;
      case 2: id += '00' + num.toString().toUpperCase(); break;
      case 3: id += '00' + num.toString().toUpperCase(); break;
      case 4: id += num.toString().toUpperCase(); break;
    }
    objects += '\n' + id;
    file.writeAsString(objects);
  }
  return(id);
}
