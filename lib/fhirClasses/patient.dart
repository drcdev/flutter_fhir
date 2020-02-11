import 'package:flutter_fhir/fhirClasses/classes.dart';
import 'package:hive/hive.dart';
import 'dart:io';
import 'dart:convert';

import 'package:path_provider/path_provider.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/humanName.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 158)
class Patient {

  //  This is a Patient resource
  @HiveField(0)
  final String resourceType= 'Patient';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
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
  @HiveField(10)
  List<Extension> modifierExtension;

  //  An identifier for this patient.
  @HiveField(11)
  List<Identifier> identifier;

  //  Whether this patient record is in active use.  Many systems use this
  // property to mark as non-current patients, such as those that have not
  // been seen for a period of time based on an organization's business
  // rules. It is often used to filter patient lists to exclude inactive
  // patients Deceased patients may also be marked as inactive for the same
  // reasons, but may be active for some time after death.
  @HiveField(12)
  bool active;

  //  Extensions for active
  @HiveField(13)
  Element elementActive;

  //  A name associated with the individual.
  @HiveField(14)
  List<HumanName> name;

  //  A contact detail (e.g. a telephone number or an email address) by
  // which the individual may be contacted.
  @HiveField(15)
  List<ContactPoint> telecom;

  //  Administrative Gender - the gender that the patient is considered to
  // have for administration and record keeping purposes.
  @HiveField(16)
  String gender; // <code> enum: male/female/other/unknown;

  //  Extensions for gender
  @HiveField(17)
  Element elementGender;

  //  The date of birth for the individual.
  @HiveField(18)
  String birthDate;

  //  Extensions for birthDate
  @HiveField(19)
  Element elementBirthDate;

  //  Indicates if the individual is deceased or not.
  @HiveField(20)
  bool deceasedBoolean; //  pattern: ^true|false$

  //  Extensions for deceasedBoolean
  @HiveField(21)
  Element elementDeceasedBoolean;

  //  Indicates if the individual is deceased or not.
  @HiveField(22)
  String deceasedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for deceasedDateTime
  @HiveField(23)
  Element elementDeceasedDateTime;

  //  An address for the individual.
  @HiveField(24)
  List<Address> address;

  //  This field contains a patient's most recent marital (civil) status.
  @HiveField(25)
  CodeableConcept maritalStatus;

  //  Indicates whether the patient is part of a multiple (boolean) or
  // indicates the actual birth order (integer).
  @HiveField(26)
  bool multipleBirthBoolean; //  pattern: ^true|false$

  //  Extensions for multipleBirthBoolean
  @HiveField(27)
  Element elementMultipleBirthBoolean;

  //  Indicates whether the patient is part of a multiple (boolean) or
  // indicates the actual birth order (integer).
  int multipleBirthInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for multipleBirthInteger
  @HiveField(29)
  Element elementMultipleBirthInteger;

  //  Image of the patient.
  @HiveField(30)
  List<Attachment> photo;

  //  A contact party (e.g. guardian, partner, friend) for the patient.
  @HiveField(31)
  List<Patient_Contact> contact;

  //  A language which may be used to communicate with the patient about his
  // or her health.
  @HiveField(32)
  List<Patient_Communication> communication;

  //  Patient's nominated care provider.
  @HiveField(33)
  List<Reference> generalPractitioner;

  //  Organization that is the custodian of the patient record.
  @HiveField(34)
  Reference managingOrganization;

  //  Link to another patient resource that concerns the same actual
  // patient.
  @HiveField(35)
  List<Patient_Link> link;

Patient(
  {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.active,
    this.elementActive,
    this.name,
    this.telecom,
    this.gender,
    this.elementGender,
    this.birthDate,
    this.elementBirthDate,
    this.deceasedBoolean,
    this.elementDeceasedBoolean,
    this.deceasedDateTime,
    this.elementDeceasedDateTime,
    this.address,
    this.maritalStatus,
    this.multipleBirthBoolean,
    this.elementMultipleBirthBoolean,
    this.multipleBirthInteger,
    this.elementMultipleBirthInteger,
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
  List<String> ptNumbers = (await File('${directory.path}/fhir/patient.txt').readAsString()).split('\n');
  var ptList = new List<Patient>();
  for(var i = 0; i < ptNumbers.length; i++){
    final pt = File('${directory.path}/fhir/patient/' + ptNumbers[i] + '.txt');
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

  //  Extensions for gender
  Element elementGender;

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
    this.elementGender,
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

  //  Extensions for preferred
  Element elementPreferred;

Patient_Communication(
  this.language,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.preferred,
    this.elementPreferred
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

  //  Extensions for type
  Element elementType;

Patient_Link(
  this.other,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType
    });

  factory Patient_Link.fromJson(Map<String, dynamic> json) => _$Patient_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$Patient_LinkToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PatientAdapter extends TypeAdapter<Patient> {
  @override
  final typeId = 158;

  @override
  Patient read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Patient(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      identifier: (fields[11] as List)?.cast<Identifier>(),
      active: fields[12] as bool,
      elementActive: fields[13] as Element,
      name: (fields[14] as List)?.cast<HumanName>(),
      telecom: (fields[15] as List)?.cast<ContactPoint>(),
      gender: fields[16] as String,
      elementGender: fields[17] as Element,
      birthDate: fields[18] as String,
      elementBirthDate: fields[19] as Element,
      deceasedBoolean: fields[20] as bool,
      elementDeceasedBoolean: fields[21] as Element,
      deceasedDateTime: fields[22] as String,
      elementDeceasedDateTime: fields[23] as Element,
      address: (fields[24] as List)?.cast<Address>(),
      maritalStatus: fields[25] as CodeableConcept,
      multipleBirthBoolean: fields[26] as bool,
      elementMultipleBirthBoolean: fields[27] as Element,
      elementMultipleBirthInteger: fields[29] as Element,
      photo: (fields[30] as List)?.cast<Attachment>(),
      contact: (fields[31] as List)?.cast<Patient_Contact>(),
      communication: (fields[32] as List)?.cast<Patient_Communication>(),
      generalPractitioner: (fields[33] as List)?.cast<Reference>(),
      managingOrganization: fields[34] as Reference,
      link: (fields[35] as List)?.cast<Patient_Link>(),
    );
  }

  @override
  void write(BinaryWriter writer, Patient obj) {
    writer
      ..writeByte(35)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.active)
      ..writeByte(13)
      ..write(obj.elementActive)
      ..writeByte(14)
      ..write(obj.name)
      ..writeByte(15)
      ..write(obj.telecom)
      ..writeByte(16)
      ..write(obj.gender)
      ..writeByte(17)
      ..write(obj.elementGender)
      ..writeByte(18)
      ..write(obj.birthDate)
      ..writeByte(19)
      ..write(obj.elementBirthDate)
      ..writeByte(20)
      ..write(obj.deceasedBoolean)
      ..writeByte(21)
      ..write(obj.elementDeceasedBoolean)
      ..writeByte(22)
      ..write(obj.deceasedDateTime)
      ..writeByte(23)
      ..write(obj.elementDeceasedDateTime)
      ..writeByte(24)
      ..write(obj.address)
      ..writeByte(25)
      ..write(obj.maritalStatus)
      ..writeByte(26)
      ..write(obj.multipleBirthBoolean)
      ..writeByte(27)
      ..write(obj.elementMultipleBirthBoolean)
      ..writeByte(29)
      ..write(obj.elementMultipleBirthInteger)
      ..writeByte(30)
      ..write(obj.photo)
      ..writeByte(31)
      ..write(obj.contact)
      ..writeByte(32)
      ..write(obj.communication)
      ..writeByte(33)
      ..write(obj.generalPractitioner)
      ..writeByte(34)
      ..write(obj.managingOrganization)
      ..writeByte(35)
      ..write(obj.link);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Patient _$PatientFromJson(Map<String, dynamic> json) {
  return Patient(
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    active: json['active'] as bool,
    elementActive: json['elementActive'] == null
        ? null
        : Element.fromJson(json['elementActive'] as Map<String, dynamic>),
    name: (json['name'] as List)
        ?.map((e) =>
            e == null ? null : HumanName.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    telecom: (json['telecom'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    gender: json['gender'] as String,
    elementGender: json['elementGender'] == null
        ? null
        : Element.fromJson(json['elementGender'] as Map<String, dynamic>),
    birthDate: json['birthDate'] as String,
    elementBirthDate: json['elementBirthDate'] == null
        ? null
        : Element.fromJson(json['elementBirthDate'] as Map<String, dynamic>),
    deceasedBoolean: json['deceasedBoolean'] as bool,
    elementDeceasedBoolean: json['elementDeceasedBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementDeceasedBoolean'] as Map<String, dynamic>),
    deceasedDateTime: json['deceasedDateTime'] as String,
    elementDeceasedDateTime: json['elementDeceasedDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementDeceasedDateTime'] as Map<String, dynamic>),
    address: (json['address'] as List)
        ?.map((e) =>
            e == null ? null : Address.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    maritalStatus: json['maritalStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['maritalStatus'] as Map<String, dynamic>),
    multipleBirthBoolean: json['multipleBirthBoolean'] as bool,
    elementMultipleBirthBoolean: json['elementMultipleBirthBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementMultipleBirthBoolean'] as Map<String, dynamic>),
    multipleBirthInteger: json['multipleBirthInteger'] as int,
    elementMultipleBirthInteger: json['elementMultipleBirthInteger'] == null
        ? null
        : Element.fromJson(
            json['elementMultipleBirthInteger'] as Map<String, dynamic>),
    photo: (json['photo'] as List)
        ?.map((e) =>
            e == null ? null : Attachment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : Patient_Contact.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    communication: (json['communication'] as List)
        ?.map((e) => e == null
            ? null
            : Patient_Communication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    generalPractitioner: (json['generalPractitioner'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    managingOrganization: json['managingOrganization'] == null
        ? null
        : Reference.fromJson(
            json['managingOrganization'] as Map<String, dynamic>),
    link: (json['link'] as List)
        ?.map((e) =>
            e == null ? null : Patient_Link.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PatientToJson(Patient instance) => <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'active': instance.active,
      'elementActive': instance.elementActive?.toJson(),
      'name': instance.name?.map((e) => e?.toJson())?.toList(),
      'telecom': instance.telecom?.map((e) => e?.toJson())?.toList(),
      'gender': instance.gender,
      'elementGender': instance.elementGender?.toJson(),
      'birthDate': instance.birthDate,
      'elementBirthDate': instance.elementBirthDate?.toJson(),
      'deceasedBoolean': instance.deceasedBoolean,
      'elementDeceasedBoolean': instance.elementDeceasedBoolean?.toJson(),
      'deceasedDateTime': instance.deceasedDateTime,
      'elementDeceasedDateTime': instance.elementDeceasedDateTime?.toJson(),
      'address': instance.address?.map((e) => e?.toJson())?.toList(),
      'maritalStatus': instance.maritalStatus?.toJson(),
      'multipleBirthBoolean': instance.multipleBirthBoolean,
      'elementMultipleBirthBoolean':
          instance.elementMultipleBirthBoolean?.toJson(),
      'multipleBirthInteger': instance.multipleBirthInteger,
      'elementMultipleBirthInteger':
          instance.elementMultipleBirthInteger?.toJson(),
      'photo': instance.photo?.map((e) => e?.toJson())?.toList(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'communication':
          instance.communication?.map((e) => e?.toJson())?.toList(),
      'generalPractitioner':
          instance.generalPractitioner?.map((e) => e?.toJson())?.toList(),
      'managingOrganization': instance.managingOrganization?.toJson(),
      'link': instance.link?.map((e) => e?.toJson())?.toList(),
    };

Patient_Contact _$Patient_ContactFromJson(Map<String, dynamic> json) {
  return Patient_Contact(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relationship: (json['relationship'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] == null
        ? null
        : HumanName.fromJson(json['name'] as Map<String, dynamic>),
    telecom: (json['telecom'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    address: json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>),
    gender: json['gender'] as String,
    elementGender: json['elementGender'] == null
        ? null
        : Element.fromJson(json['elementGender'] as Map<String, dynamic>),
    organization: json['organization'] == null
        ? null
        : Reference.fromJson(json['organization'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Patient_ContactToJson(Patient_Contact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'relationship': instance.relationship?.map((e) => e?.toJson())?.toList(),
      'name': instance.name?.toJson(),
      'telecom': instance.telecom?.map((e) => e?.toJson())?.toList(),
      'address': instance.address?.toJson(),
      'gender': instance.gender,
      'elementGender': instance.elementGender?.toJson(),
      'organization': instance.organization?.toJson(),
      'period': instance.period?.toJson(),
    };

Patient_Communication _$Patient_CommunicationFromJson(
    Map<String, dynamic> json) {
  return Patient_Communication(
    json['language'] == null
        ? null
        : CodeableConcept.fromJson(json['language'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    preferred: json['preferred'] as bool,
    elementPreferred: json['elementPreferred'] == null
        ? null
        : Element.fromJson(json['elementPreferred'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Patient_CommunicationToJson(
        Patient_Communication instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'language': instance.language?.toJson(),
      'preferred': instance.preferred,
      'elementPreferred': instance.elementPreferred?.toJson(),
    };

Patient_Link _$Patient_LinkFromJson(Map<String, dynamic> json) {
  return Patient_Link(
    json['other'] == null
        ? null
        : Reference.fromJson(json['other'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Patient_LinkToJson(Patient_Link instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'other': instance.other?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
    };
