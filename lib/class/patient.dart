import 'package:flutter_fhir/class/address.dart';
import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/communication.dart';
import 'package:flutter_fhir/class/contact.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/link.dart';
import 'package:flutter_fhir/class/meta.dart';
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
  String birthDate;
  bool deceasedBoolean;
  String deceasedDateTime;
  List<Address> address;
  CodeableConcept maritalStatus;
  bool multipleBirthBoolean;
  int multipleBirthInteger;
  List<Attachment> photo;
  List<Contact> contact;
  List<Communication> communication;
  List<Practitioner> generalPractitioner;
  Reference managingOrganization;
  List<Link> link;
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