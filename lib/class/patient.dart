import 'dart:io';
import 'dart:convert';

import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/resource.dart';
import 'package:path_provider/path_provider.dart';
import 'package:random_string/random_string.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/address.dart';
import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/humanName.dart';

part 'patient.g.dart';

@JsonSerializable(explicitToJson: true)
class Patient {
  String resourceType;

  // Logical id of this artifact
  String id;

  // Metadata about the resource
  Meta meta;

  // A set of rules under which this content was created
  String implicitRules;

  // Language of the resource content
  String language;

  // Text summary of the resource, for human interpretation
  Narrative text;

  // Contained, inline Resources
  List<Resource> contained;

  // An identifier for this patient
  List<Identifier> identifier;

  // Whether this patient's record is in active use
  bool active;

  // A name associated with the patient
  List<HumanName> name;

  // A contact detail for the individual
  List<ContactPoint> telecom;

  // male | female | other | unknown
  String gender;

  // The date of birth for the individual
  DateTime birthDate;

  // deceased[x]: Indicates if the individual is deceased or not. One of these 2:
  bool deceasedBoolean;
  DateTime deceasedDateTime;

  // An address for the individual
  List<Address> address;

  // Marital (civil) status of a patient
  CodeableConcept maritalStatus;

  // multipleBirth[x]: Whether patient is part of a multiple birth. One of these 2:
  bool multipleBirthBoolean;
  int multipleBirthInteger;

  // Image of the patient
  List<Attachment> photo;

  // A contact party (e.g. guardian, partner, friend) for the patient
  List<Contact> contact;

  // A language which may be used to communicate with the patient about
  // his or her health
  List<_Communication> communication;

  // Patient's nominated primary care provider
  // Reference(Organization|Practitioner|PractitionerRole)
  List<Reference> generalPractitioner;

  // Organization that is the custodian of the patient record
  // Reference(Organization)
  Reference managingOrganization;

  // Link to another patient resource that concerns the same actual person
  List<Link> link;

  Patient(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.text,
        this.contained,
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
        this.link});

  String printName(){
    return('${(this.name?.first?.family?.toString() ?? '')}'
        ', '
        '${(this.name?.first?.given?.first?.toString() ?? '')}'
    );
  }

  writePatient() async {
    // assign ID
    if(this.id == null) { this.id = 'flutter' + randomAlphaNumeric(10).toString();}
    // get current directory
    final directory = await getApplicationDocumentsDirectory();
    // write patient info to file as pt.id
    await File('${directory.path}/' + this.id + '.txt').writeAsString(json.encode(this));
    // get list of patients
    final ptList = File('${directory.path}/ptList.txt');
    //if ptList doesn't exist create it
    if(!await ptList.exists()) {
      ptList.writeAsString(this.id);
    } else {
      //otherwise, read it, add the new patient, then save the file
      String pts = await ptList.readAsString();
      if(!pts.contains(this.id)) {
        pts += '\n' + this.id;
        ptList.writeAsString(pts);
      }
    }
  }

  factory Patient.fromJson(Map<String, dynamic> json) => _$PatientFromJson(json);
  Map<String, dynamic> toJson() => _$PatientToJson(this);
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

  // The kind of relationship
  List<CodeableConcept> relationship;

  // A name associated with the contact person
  HumanName name;

  // A contact detail for the person
  List<ContactPoint> telecom;

  // Address for the contact person
  Address address;

  // male | female | other | unknown
  String gender;

  // C? Organization that is associated with the contact
  // Reference(Organization)
  Reference organization;

  // The period during which this contact person or organization is valid to
  // be contacted relating to this patient
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

  // A language which may be used to communicate with the patient about
  // his or her health
  CodeableConcept language;

  // R!  The language which can be used to communicate with the patient about
  // his or her health
  bool preferred;

  _Communication({this.language, this.preferred});

  factory _Communication.fromJson(Map<String, dynamic> json) => _$_CommunicationFromJson(json);
  Map<String, dynamic> toJson() => _$_CommunicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Link {

  // R!  The other patient or related person resource that the link refers to
  // Reference(Patient|RelatedPerson)
  Reference other;

  // R!  replaced-by | replaces | refer | seealso
  String type;

  Link({this.other, this.type});

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
  Map<String, dynamic> toJson() => _$LinkToJson(this);
}