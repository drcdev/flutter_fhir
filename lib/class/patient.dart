import 'package:flutter_fhir/class/address.dart';
import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/practitioner.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/humanName.dart';
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
  List<Identifier> identifier;
  bool active;
  List<HumanName> name;
  List<ContactPoint> telecom;
  String gender;
  DateTime birthDate;
  bool deceasedBoolean;
  DateTime deceasedDateTime;
  List<Address> address;
  CodeableConcept maritalStatus;
  bool multipleBirthBoolean;
  int multipleBirthInteger;
  List<Attachment> photo;
  List<Contact> contact;
  List<_Communication> communication;
  List<Practitioner> generalPractitioner;
  Reference managingOrganization;
  List<_Link> link;
  Meta meta;

  Patient(
      {this.resourceType,
        this.id,
        this.identifier,
        this.active,
        this.name,
        this.telecom,
        this.gender,
        this.birthDate,
        this.deceasedBoolean,
        this.deceasedDateTime,
        this.address,
        this.maritalStatus,
        this.multipleBirthBoolean,
        this.multipleBirthInteger,
        this.photo,
        this.contact,
        this.communication,
        this.generalPractitioner,
        this.managingOrganization,
        this.link,
        this.meta});

  String printName(){
    return('${(this.name?.first?.family?.toString() ?? '')}'
        ', '
        '${(this.name?.first?.given?.first?.toString() ?? '')}'
    );
  }

  factory Patient.fromJson(Map<String, dynamic> json) => _$PatientFromJson(json);
  Map<String, dynamic> toJson() => _$PatientToJson(this);
}

writePatient(Patient pt) async {
  if(pt.id == null) { pt.id = 'flutter' + randomAlphaNumeric(10).toString();} //assign ID
  final directory = await getApplicationDocumentsDirectory(); //get current directory
  await File('${directory.path}/' + pt.id + '.txt').writeAsString(json.encode(pt)); //write patient info to file as pt.id
  final ptList = File('${directory.path}/ptList.txt');
  if(!await ptList.exists()) { //if ptList doesn't exist create it
    ptList.writeAsString(pt.id);
  } else { //otherwise, read it, add the new patient, then save the file
      String pts = await ptList.readAsString();
      if(!pts.contains(pt.id)) {
        pts += '\n' + pt.id;
        ptList.writeAsString(pts);
      }
  }
}

Future<Patient> readPatient(String id) async {
  final directory = await getApplicationDocumentsDirectory(); //get current directory
  Patient pt = Patient.fromJson(jsonDecode(await File('${directory.path}/' + id + '.txt').readAsString())); //read patient from file
  return(pt);
}

Future<List<Patient>> readPtList() async {
  final directory = await getApplicationDocumentsDirectory(); //get current directory
  List<String> ptNumbers = (await File('${directory.path}/ptList.txt').readAsString()).split('\n');
  var ptList = new List<Patient>();
  for(var i = 0; i < ptNumbers.length; i++){
    final pt = File('${directory.path}/' + ptNumbers[i] + '.txt');
    var newpt = Patient.fromJson(json.decode(await pt.readAsString()));
    ptList.add(newpt);
  }
  return ptList;
}

@JsonSerializable(explicitToJson: true)
class Contact {
  List<CodeableConcept> relationship;
  HumanName name;
  List<ContactPoint> telecom;
  Address address;
  String gender;
  Reference organization;
  Period period;

  Contact(
      {this.relationship,
        this.name,
        this.telecom,
        this.address,
        this.gender,
        this.organization,
        this.period});

  factory Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);
  Map<String, dynamic> toJson() => _$ContactToJson(this);
}

@JsonSerializable(explicitToJson: true)
class _Communication {
  CodeableConcept language;
  bool preferred;

  _Communication({this.language, this.preferred});

  factory _Communication.fromJson(Map<String, dynamic> json) => _$_CommunicationFromJson(json);
  Map<String, dynamic> toJson() => _$_CommunicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class _Link {
  Reference other;
  String type;

  _Link({this.other, this.type});

  factory _Link.fromJson(Map<String, dynamic> json) => _$_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$_LinkToJson(this);
}