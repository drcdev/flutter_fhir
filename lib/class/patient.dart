import 'humanName.dart';
import 'address.dart';
import 'meta.dart';
import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'package:random_string/random_string.dart';
import 'package:json_annotation/json_annotation.dart';
part 'patient.g.dart';

@JsonSerializable(explicitToJson: true)
class Patient {
  String resourceType;
  String id;
  List<HumanName> name;
  String gender;
  String birthDate;
  List<Address> address;
  Meta meta;

  Patient({this.resourceType, this.id, this.name, this.gender, this.birthDate, this.address, this.meta});

  factory Patient.fromJson(Map<String, dynamic> json) => _$PatientFromJson(json);
  Map<String, dynamic> toJson() => _$PatientToJson(this);
}

savePatient(Patient pt) async {
  if(pt.id == null) { pt.id = 'flutter' + randomAlphaNumeric(10).toString();} //assign ID
  final directory = await getApplicationDocumentsDirectory(); //get current directory
  await File('${directory.path}/' + pt.id + '.txt').writeAsString(json.encode(pt)); //write patient info to file as pt.id
  final ptList = File('${directory.path}/ptList.txt');
  if(!await ptList.exists()) { //if ptList doesn't exist create it
    ptList.writeAsString(pt.id);
  } else { //otherwise, read it, add the new patient, then save the file
      String pts = await ptList.readAsString();
      pts += '\n' + pt.id;
      ptList.writeAsString(pts);
  }
}