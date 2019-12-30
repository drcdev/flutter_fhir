import 'dart:convert';
import 'package:flutter_fhir/class/patient.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:random_string/random_string.dart';


savePatient(Patient pt) async {
  pt.id = randomAlphaNumeric(10).toString(); //assign ID
  final directory = await getApplicationDocumentsDirectory(); //get current directory
  await File('${directory.path}/' + pt.id + '.txt').writeAsString(json.encode(pt)); //write patient info to file as pt.id
  final ptList = File('${directory.path}/ptList.txt');
  if(!await ptList.exists()) {
    await ptList.writeAsString('\n' + pt.id);
  } else {
      String pts = await ptList.readAsString();
      pts += '\n' + pt.id;
      await ptList.writeAsString(pts);
//      await ptList.writeAsString(pt.id);
  }
}
 