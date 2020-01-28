import 'dart:io';
import 'dart:convert';

import 'package:flutter_fhir/class/narrative.dart';
import 'package:path_provider/path_provider.dart';
import 'package:random_string/random_string.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/address.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/humanName.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'patient.g.dart';

@JsonSerializable(explicitToJson: true)
class Patient {

//  This is a Patient resource
String resourceType;

//  The logical id of the resource, as used in the URL for the resource.
// Once assigned, this value never changes.
String id;

//  The metadata about the resource. This is content that is maintained by
// the infrastructure. Changes to the content might not always be
// associated with version changes to the resource.
Meta meta;

//  A reference to a set of rules that were followed when the resource was
// constructed, and which must be understood when processing the content.
// Often, this is a reference to an implementation guide that defines the
// special rules along with other profiles etc.
String implicitRules;

//  The base language in which the resource is written.
String language;

//  A human-readable narrative that contains a summary of the resource and
// can be used to represent the content of the resource to a human. The
// narrative need not encode all the structured data, but is required to
// contain sufficient detail to make it "clinically safe" for a human to
// just read the narrative. Resource definitions may define what content
// should be represented in the narrative to ensure clinical safety.
Narrative text;

//  These resources do not have an independent existence apart from the
// resource that contains them - they cannot be identified independently,
// and nor can they have their own independent transaction scope.
List<ResourceList> contained;

//  May be used to represent additional information that is not part of
// the basic definition of the resource. To make the use of extensions
// safe and manageable, there is a strict set of governance  applied to
// the definition and use of extensions. Though any implementer can define
// an extension, there is a set of requirements that SHALL be met as part
// of the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the resource and that modifies the
// understanding of the element that contains it and/or the understanding
// of the containing element's descendants. Usually modifier elements
// provide negation or qualification. To make the use of extensions safe
// and manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer is allowed to
// define an extension, there is a set of requirements that SHALL be met
// as part of the definition of the extension. Applications processing a
// resource are required to check for modifier extensions. Modifier
// extensions SHALL NOT change the meaning of any elements on Resource or
// DomainResource (including cannot change the meaning of
// modifierExtension itself).
List<Extension> modifierExtension;

//  An identifier for this patient.
List<Identifier> identifier;

//  Whether this patient record is in active use.  Many systems use this
// property to mark as non-current patients, such as those that have not
// been seen for a period of time based on an organization's business
// rules. It is often used to filter patient lists to exclude inactive
// patients Deceased patients may also be marked as inactive for the same
// reasons, but may be active for some time after death.
bool active;

//  A name associated with the individual.
List<HumanName> name;

//  A contact detail (e.g. a telephone number or an email address) by
// which the individual may be contacted.
List<ContactPoint> telecom;

//  Administrative Gender - the gender that the patient is considered to
// have for administration and record keeping purposes.
String gender; // <code> enum: male/female/other/unknown;

//  The date of birth for the individual.
String birthDate;

//  Indicates if the individual is deceased or not.
bool deceasedBoolean; //  pattern: ^true|false$

//  Indicates if the individual is deceased or not.
String deceasedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

//  An address for the individual.
List<Address> address;

//  This field contains a patient's most recent marital (civil) status.
CodeableConcept maritalStatus;

//  Indicates whether the patient is part of a multiple (boolean) or
// indicates the actual birth order (integer).
bool multipleBirthBoolean; //  pattern: ^true|false$

//  Indicates whether the patient is part of a multiple (boolean) or
// indicates the actual birth order (integer).
int multipleBirthInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

//  Image of the patient.
List<Attachment> photo;

//  A contact party (e.g. guardian, partner, friend) for the patient.
List<Patient_Contact> contact;

//  A language which may be used to communicate with the patient about his
// or her health.
List<Patient_Communication> communication;

//  Patient's nominated care provider.
List<Reference> generalPractitioner;

//  Organization that is the custodian of the patient record.
Reference managingOrganization;

//  Link to another patient resource that concerns the same actual
// patient.
List<Patient_Link> link;

Patient(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
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
    this.link
    });

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
class Patient_Contact {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  The nature of the relationship between the patient and the contact
// person.
List<CodeableConcept> relationship;

//  A name associated with the contact person.
HumanName name;

//  A contact detail for the person, e.g. a telephone number or an email
// address.
List<ContactPoint> telecom;

//  Address for the contact person.
Address address;

//  Administrative Gender - the gender that the contact person is
// considered to have for administration and record keeping purposes.
String gender; // <code> enum: male/female/other/unknown;

//  Organization on behalf of which the contact is acting or for which the
// contact is working.
Reference organization;

//  The period during which this contact person or organization is valid
// to be contacted relating to this patient.
Period period;

Patient_Contact(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.relationship,
    this.name,
    this.telecom,
    this.address,
    this.gender,
    this.organization,
    this.period
    });

  factory Patient_Contact.fromJson(Map<String, dynamic> json) => _$Patient_ContactFromJson(json);
  Map<String, dynamic> toJson() => _$Patient_ContactToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Patient_Communication {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  The ISO-639-1 alpha 2 code in lower case for the language, optionally
// followed by a hyphen and the ISO-3166-1 alpha 2 code for the region in
// upper case; e.g. "en" for English, or "en-US" for American English
// versus "en-EN" for England English.
CodeableConcept language;

//  Indicates whether or not the patient prefers this language (over other
// languages he masters up a certain level).
bool preferred;

Patient_Communication(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.language,
    this.preferred
    });

  factory Patient_Communication.fromJson(Map<String, dynamic> json) => _$Patient_CommunicationFromJson(json);
  Map<String, dynamic> toJson() => _$Patient_CommunicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Patient_Link {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  The other patient resource that the link refers to.
Reference other;

//  The type of link between this patient resource and another patient
// resource.
String type; // <code> enum: replaced-by/replaces/refer/seealso;

Patient_Link(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.other,
    this.type
    });

  factory Patient_Link.fromJson(Map<String, dynamic> json) => _$Patient_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$Patient_LinkToJson(this);
}

