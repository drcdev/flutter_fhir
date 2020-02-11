import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/humanName.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 507)
class RelatedPerson {

  //  This is a RelatedPerson resource
  @HiveField(0)
  final String resourceType= 'RelatedPerson';

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

  //  Identifier for a person within a particular scope.
  @HiveField(11)
  List<Identifier> identifier;

  //  Whether this related person record is in active use.
  @HiveField(12)
  bool active;

  //  Extensions for active
  @HiveField(13)
  Element elementActive;

  //  The patient this person is related to.
  @HiveField(14)
  Reference patient;

  //  The nature of the relationship between a patient and the related
  // person.
  @HiveField(15)
  List<CodeableConcept> relationship;

  //  A name associated with the person.
  @HiveField(16)
  List<HumanName> name;

  //  A contact detail for the person, e.g. a telephone number or an email
  // address.
  @HiveField(17)
  List<ContactPoint> telecom;

  //  Administrative Gender - the gender that the person is considered to
  // have for administration and record keeping purposes.
  @HiveField(18)
  String gender; // <code> enum: male/female/other/unknown;

  //  Extensions for gender
  @HiveField(19)
  Element elementGender;

  //  The date on which the related person was born.
  @HiveField(20)
  String birthDate;

  //  Extensions for birthDate
  @HiveField(21)
  Element elementBirthDate;

  //  Address where the related person can be contacted or visited.
  @HiveField(22)
  List<Address> address;

  //  Image of the person.
  @HiveField(23)
  List<Attachment> photo;

  //  The period of time during which this relationship is or was active. If
  // there are no dates defined, then the interval is unknown.
  @HiveField(24)
  Period period;

  //  A language which may be used to communicate with about the patient's
  // health.
  @HiveField(25)
  List<RelatedPerson_Communication> communication;

RelatedPerson(
  this.patient,
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
    this.relationship,
    this.name,
    this.telecom,
    this.gender,
    this.elementGender,
    this.birthDate,
    this.elementBirthDate,
    this.address,
    this.photo,
    this.period,
    this.communication
    });

  factory RelatedPerson.fromJson(Map<String, dynamic> json) => _$RelatedPersonFromJson(json);
  Map<String, dynamic> toJson() => _$RelatedPersonToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 508)
class RelatedPerson_Communication {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The ISO-639-1 alpha 2 code in lower case for the language, optionally
  // followed by a hyphen and the ISO-3166-1 alpha 2 code for the region in
  // upper case; e.g. "en" for English, or "en-US" for American English
  // versus "en-EN" for England English.
  @HiveField(3)
  CodeableConcept language;

  //  Indicates whether or not the patient prefers this language (over other
  // languages he masters up a certain level).
  @HiveField(4)
  bool preferred;

  //  Extensions for preferred
  @HiveField(5)
  Element elementPreferred;

RelatedPerson_Communication(
  this.language,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.preferred,
    this.elementPreferred
    });

  factory RelatedPerson_Communication.fromJson(Map<String, dynamic> json) => _$RelatedPerson_CommunicationFromJson(json);
  Map<String, dynamic> toJson() => _$RelatedPerson_CommunicationToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RelatedPersonAdapter extends TypeAdapter<RelatedPerson> {
  @override
  final typeId = 507;

  @override
  RelatedPerson read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RelatedPerson(
      fields[14] as Reference,
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
      relationship: (fields[15] as List)?.cast<CodeableConcept>(),
      name: (fields[16] as List)?.cast<HumanName>(),
      telecom: (fields[17] as List)?.cast<ContactPoint>(),
      gender: fields[18] as String,
      elementGender: fields[19] as Element,
      birthDate: fields[20] as String,
      elementBirthDate: fields[21] as Element,
      address: (fields[22] as List)?.cast<Address>(),
      photo: (fields[23] as List)?.cast<Attachment>(),
      period: fields[24] as Period,
      communication: (fields[25] as List)?.cast<RelatedPerson_Communication>(),
    );
  }

  @override
  void write(BinaryWriter writer, RelatedPerson obj) {
    writer
      ..writeByte(26)
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
      ..write(obj.patient)
      ..writeByte(15)
      ..write(obj.relationship)
      ..writeByte(16)
      ..write(obj.name)
      ..writeByte(17)
      ..write(obj.telecom)
      ..writeByte(18)
      ..write(obj.gender)
      ..writeByte(19)
      ..write(obj.elementGender)
      ..writeByte(20)
      ..write(obj.birthDate)
      ..writeByte(21)
      ..write(obj.elementBirthDate)
      ..writeByte(22)
      ..write(obj.address)
      ..writeByte(23)
      ..write(obj.photo)
      ..writeByte(24)
      ..write(obj.period)
      ..writeByte(25)
      ..write(obj.communication);
  }
}

class RelatedPerson_CommunicationAdapter
    extends TypeAdapter<RelatedPerson_Communication> {
  @override
  final typeId = 508;

  @override
  RelatedPerson_Communication read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RelatedPerson_Communication(
      fields[3] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      preferred: fields[4] as bool,
      elementPreferred: fields[5] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, RelatedPerson_Communication obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.language)
      ..writeByte(4)
      ..write(obj.preferred)
      ..writeByte(5)
      ..write(obj.elementPreferred);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RelatedPerson _$RelatedPersonFromJson(Map<String, dynamic> json) {
  return RelatedPerson(
    json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
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
    relationship: (json['relationship'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    address: (json['address'] as List)
        ?.map((e) =>
            e == null ? null : Address.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    photo: (json['photo'] as List)
        ?.map((e) =>
            e == null ? null : Attachment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    communication: (json['communication'] as List)
        ?.map((e) => e == null
            ? null
            : RelatedPerson_Communication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RelatedPersonToJson(RelatedPerson instance) =>
    <String, dynamic>{
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
      'patient': instance.patient?.toJson(),
      'relationship': instance.relationship?.map((e) => e?.toJson())?.toList(),
      'name': instance.name?.map((e) => e?.toJson())?.toList(),
      'telecom': instance.telecom?.map((e) => e?.toJson())?.toList(),
      'gender': instance.gender,
      'elementGender': instance.elementGender?.toJson(),
      'birthDate': instance.birthDate,
      'elementBirthDate': instance.elementBirthDate?.toJson(),
      'address': instance.address?.map((e) => e?.toJson())?.toList(),
      'photo': instance.photo?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
      'communication':
          instance.communication?.map((e) => e?.toJson())?.toList(),
    };

RelatedPerson_Communication _$RelatedPerson_CommunicationFromJson(
    Map<String, dynamic> json) {
  return RelatedPerson_Communication(
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

Map<String, dynamic> _$RelatedPerson_CommunicationToJson(
        RelatedPerson_Communication instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'language': instance.language?.toJson(),
      'preferred': instance.preferred,
      'elementPreferred': instance.elementPreferred?.toJson(),
    };
