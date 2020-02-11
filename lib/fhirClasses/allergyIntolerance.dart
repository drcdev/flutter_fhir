import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 63)
class AllergyIntolerance {

  //  This is a AllergyIntolerance resource
  @HiveField(0)
  final String resourceType= 'AllergyIntolerance';

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

  //  Business identifiers assigned to this AllergyIntolerance by the
  // performer or other systems which remain constant as the resource is
  // updated and propagates from server to server.
  @HiveField(11)
  List<Identifier> identifier;

  //  The clinical status of the allergy or intolerance.
  @HiveField(12)
  CodeableConcept clinicalStatus;

  //  Assertion about certainty associated with the propensity, or potential
  // risk, of a reaction to the identified substance (including
  // pharmaceutical product).
  @HiveField(13)
  CodeableConcept verificationStatus;

  //  Identification of the underlying physiological mechanism for the
  // reaction risk.
  @HiveField(14)
  String type; // <code> enum: allergy/intolerance;

  //  Extensions for type
  @HiveField(15)
  Element elementType;

  //  Category of the identified substance.
  @HiveField(16)
  List<String> category; // <code> enum: food/medication/environment/biologic> category;

  //  Extensions for category
  @HiveField(17)
  List<Element> elementCategory;

  //  Estimate of the potential clinical harm, or seriousness, of the
  // reaction to the identified substance.
  @HiveField(18)
  String criticality; // <code> enum: low/high/unable-to-assess;

  //  Extensions for criticality
  @HiveField(19)
  Element elementCriticality;

  //  Code for an allergy or intolerance statement (either a positive or a
  // negated/excluded statement).  This may be a code for a substance or
  // pharmaceutical product that is considered to be responsible for the
  // adverse reaction risk (e.g., "Latex"), an allergy or intolerance
  // condition (e.g., "Latex allergy"), or a negated/excluded code for a
  // specific substance or class (e.g., "No latex allergy") or a general or
  // categorical negated statement (e.g.,  "No known allergy", "No known
  // drug allergies").  Note: the substance for a specific reaction may be
  // different from the substance identified as the cause of the risk, but
  // it must be consistent with it. For instance, it may be a more specific
  // substance (e.g. a brand medication) or a composite product that
  // includes the identified substance. It must be clinically safe to only
  // process the 'code' and ignore the 'reaction.substance'.  If a receiving
  // system is unable to confirm that AllergyIntolerance.reaction.substance
  // falls within the semantic scope of AllergyIntolerance.code, then the
  // receiving system should ignore AllergyIntolerance.reaction.substance.
  @HiveField(20)
  CodeableConcept code;

  //  The patient who has the allergy or intolerance.
  @HiveField(21)
  Reference patient;

  //  The encounter when the allergy or intolerance was asserted.
  @HiveField(22)
  Reference encounter;

  //  Estimated or actual date,  date-time, or age when allergy or
  // intolerance was identified.
  @HiveField(23)
  String onsetDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for onsetDateTime
  @HiveField(24)
  Element elementOnsetDateTime;

  //  Estimated or actual date,  date-time, or age when allergy or
  // intolerance was identified.
  @HiveField(25)
  Age onsetAge;

  //  Estimated or actual date,  date-time, or age when allergy or
  // intolerance was identified.
  @HiveField(26)
  Period onsetPeriod;

  //  Estimated or actual date,  date-time, or age when allergy or
  // intolerance was identified.
  @HiveField(27)
  Range onsetRange;

  //  Estimated or actual date,  date-time, or age when allergy or
  // intolerance was identified.
  @HiveField(28)
  String onsetString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for onsetString
  @HiveField(29)
  Element elementOnsetString;

  //  The recordedDate represents when this particular AllergyIntolerance
  // record was created in the system, which is often a system-generated
  // date.
  @HiveField(30)
  DateTime recordedDate;

  //  Extensions for recordedDate
  @HiveField(31)
  Element elementRecordedDate;

  //  Individual who recorded the record and takes responsibility for its
  // content.
  @HiveField(32)
  Reference recorder;

  //  The source of the information about the allergy that is recorded.
  @HiveField(33)
  Reference asserter;

  //  Represents the date and/or time of the last known occurrence of a
  // reaction event.
  @HiveField(34)
  DateTime lastOccurrence;

  //  Extensions for lastOccurrence
  @HiveField(35)
  Element elementLastOccurrence;

  //  Additional narrative about the propensity for the Adverse Reaction,
  // not captured in other fields.
  @HiveField(36)
  List<Annotation> note;

  //  Details about each adverse reaction event linked to exposure to the
  // identified substance.
  @HiveField(37)
  List<AllergyIntolerance_Reaction> reaction;

AllergyIntolerance(
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
    this.clinicalStatus,
    this.verificationStatus,
    this.type,
    this.elementType,
    this.category,
    this.elementCategory,
    this.criticality,
    this.elementCriticality,
    this.code,
    this.encounter,
    this.onsetDateTime,
    this.elementOnsetDateTime,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.elementOnsetString,
    this.recordedDate,
    this.elementRecordedDate,
    this.recorder,
    this.asserter,
    this.lastOccurrence,
    this.elementLastOccurrence,
    this.note,
    this.reaction
    });

  factory AllergyIntolerance.fromJson(Map<String, dynamic> json) => _$AllergyIntoleranceFromJson(json);
  Map<String, dynamic> toJson() => _$AllergyIntoleranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllergyIntolerance_Reaction {

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

  //  Identification of the specific substance (or pharmaceutical product)
  // considered to be responsible for the Adverse Reaction event. Note: the
  // substance for a specific reaction may be different from the substance
  // identified as the cause of the risk, but it must be consistent with it.
  // For instance, it may be a more specific substance (e.g. a brand
  // medication) or a composite product that includes the identified
  // substance. It must be clinically safe to only process the 'code' and
  // ignore the 'reaction.substance'.  If a receiving system is unable to
  // confirm that AllergyIntolerance.reaction.substance falls within the
  // semantic scope of AllergyIntolerance.code, then the receiving system
  // should ignore AllergyIntolerance.reaction.substance.
  CodeableConcept substance;

  //  Clinical symptoms and/or signs that are observed or associated with
  // the adverse reaction event.
  List<CodeableConcept> manifestation;

  //  Text description about the reaction as a whole, including details of
  // the manifestation if required.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  Record of the date and/or time of the onset of the Reaction.
  DateTime onset;

  //  Extensions for onset
  Element elementOnset;

  //  Clinical assessment of the severity of the reaction event as a whole,
  // potentially considering multiple different manifestations.
  String severity; // <code> enum: mild/moderate/severe;

  //  Extensions for severity
  Element elementSeverity;

  //  Identification of the route by which the subject was exposed to the
  // substance.
  CodeableConcept exposureRoute;

  //  Additional text about the adverse reaction event not captured in other
  // fields.
  List<Annotation> note;

AllergyIntolerance_Reaction(
  this.manifestation,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.substance,
    this.description,
    this.elementDescription,
    this.onset,
    this.elementOnset,
    this.severity,
    this.elementSeverity,
    this.exposureRoute,
    this.note
    });

  factory AllergyIntolerance_Reaction.fromJson(Map<String, dynamic> json) => _$AllergyIntolerance_ReactionFromJson(json);
  Map<String, dynamic> toJson() => _$AllergyIntolerance_ReactionToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AllergyIntoleranceAdapter extends TypeAdapter<AllergyIntolerance> {
  @override
  final typeId = 63;

  @override
  AllergyIntolerance read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AllergyIntolerance(
      fields[21] as Reference,
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
      clinicalStatus: fields[12] as CodeableConcept,
      verificationStatus: fields[13] as CodeableConcept,
      type: fields[14] as String,
      elementType: fields[15] as Element,
      category: (fields[16] as List)?.cast<String>(),
      elementCategory: (fields[17] as List)?.cast<Element>(),
      criticality: fields[18] as String,
      elementCriticality: fields[19] as Element,
      code: fields[20] as CodeableConcept,
      encounter: fields[22] as Reference,
      onsetDateTime: fields[23] as String,
      elementOnsetDateTime: fields[24] as Element,
      onsetAge: fields[25] as Age,
      onsetPeriod: fields[26] as Period,
      onsetRange: fields[27] as Range,
      onsetString: fields[28] as String,
      elementOnsetString: fields[29] as Element,
      recordedDate: fields[30] as DateTime,
      elementRecordedDate: fields[31] as Element,
      recorder: fields[32] as Reference,
      asserter: fields[33] as Reference,
      lastOccurrence: fields[34] as DateTime,
      elementLastOccurrence: fields[35] as Element,
      note: (fields[36] as List)?.cast<Annotation>(),
      reaction: (fields[37] as List)?.cast<AllergyIntolerance_Reaction>(),
    );
  }

  @override
  void write(BinaryWriter writer, AllergyIntolerance obj) {
    writer
      ..writeByte(38)
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
      ..write(obj.clinicalStatus)
      ..writeByte(13)
      ..write(obj.verificationStatus)
      ..writeByte(14)
      ..write(obj.type)
      ..writeByte(15)
      ..write(obj.elementType)
      ..writeByte(16)
      ..write(obj.category)
      ..writeByte(17)
      ..write(obj.elementCategory)
      ..writeByte(18)
      ..write(obj.criticality)
      ..writeByte(19)
      ..write(obj.elementCriticality)
      ..writeByte(20)
      ..write(obj.code)
      ..writeByte(21)
      ..write(obj.patient)
      ..writeByte(22)
      ..write(obj.encounter)
      ..writeByte(23)
      ..write(obj.onsetDateTime)
      ..writeByte(24)
      ..write(obj.elementOnsetDateTime)
      ..writeByte(25)
      ..write(obj.onsetAge)
      ..writeByte(26)
      ..write(obj.onsetPeriod)
      ..writeByte(27)
      ..write(obj.onsetRange)
      ..writeByte(28)
      ..write(obj.onsetString)
      ..writeByte(29)
      ..write(obj.elementOnsetString)
      ..writeByte(30)
      ..write(obj.recordedDate)
      ..writeByte(31)
      ..write(obj.elementRecordedDate)
      ..writeByte(32)
      ..write(obj.recorder)
      ..writeByte(33)
      ..write(obj.asserter)
      ..writeByte(34)
      ..write(obj.lastOccurrence)
      ..writeByte(35)
      ..write(obj.elementLastOccurrence)
      ..writeByte(36)
      ..write(obj.note)
      ..writeByte(37)
      ..write(obj.reaction);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllergyIntolerance _$AllergyIntoleranceFromJson(Map<String, dynamic> json) {
  return AllergyIntolerance(
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
    clinicalStatus: json['clinicalStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['clinicalStatus'] as Map<String, dynamic>),
    verificationStatus: json['verificationStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['verificationStatus'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    category: (json['category'] as List)?.map((e) => e as String)?.toList(),
    elementCategory: (json['elementCategory'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    criticality: json['criticality'] as String,
    elementCriticality: json['elementCriticality'] == null
        ? null
        : Element.fromJson(json['elementCriticality'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    onsetDateTime: json['onsetDateTime'] as String,
    elementOnsetDateTime: json['elementOnsetDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementOnsetDateTime'] as Map<String, dynamic>),
    onsetAge: json['onsetAge'] == null
        ? null
        : Age.fromJson(json['onsetAge'] as Map<String, dynamic>),
    onsetPeriod: json['onsetPeriod'] == null
        ? null
        : Period.fromJson(json['onsetPeriod'] as Map<String, dynamic>),
    onsetRange: json['onsetRange'] == null
        ? null
        : Range.fromJson(json['onsetRange'] as Map<String, dynamic>),
    onsetString: json['onsetString'] as String,
    elementOnsetString: json['elementOnsetString'] == null
        ? null
        : Element.fromJson(json['elementOnsetString'] as Map<String, dynamic>),
    recordedDate: json['recordedDate'] == null
        ? null
        : DateTime.parse(json['recordedDate'] as String),
    elementRecordedDate: json['elementRecordedDate'] == null
        ? null
        : Element.fromJson(json['elementRecordedDate'] as Map<String, dynamic>),
    recorder: json['recorder'] == null
        ? null
        : Reference.fromJson(json['recorder'] as Map<String, dynamic>),
    asserter: json['asserter'] == null
        ? null
        : Reference.fromJson(json['asserter'] as Map<String, dynamic>),
    lastOccurrence: json['lastOccurrence'] == null
        ? null
        : DateTime.parse(json['lastOccurrence'] as String),
    elementLastOccurrence: json['elementLastOccurrence'] == null
        ? null
        : Element.fromJson(
            json['elementLastOccurrence'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reaction: (json['reaction'] as List)
        ?.map((e) => e == null
            ? null
            : AllergyIntolerance_Reaction.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AllergyIntoleranceToJson(AllergyIntolerance instance) =>
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
      'clinicalStatus': instance.clinicalStatus?.toJson(),
      'verificationStatus': instance.verificationStatus?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'category': instance.category,
      'elementCategory':
          instance.elementCategory?.map((e) => e?.toJson())?.toList(),
      'criticality': instance.criticality,
      'elementCriticality': instance.elementCriticality?.toJson(),
      'code': instance.code?.toJson(),
      'patient': instance.patient?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'onsetDateTime': instance.onsetDateTime,
      'elementOnsetDateTime': instance.elementOnsetDateTime?.toJson(),
      'onsetAge': instance.onsetAge?.toJson(),
      'onsetPeriod': instance.onsetPeriod?.toJson(),
      'onsetRange': instance.onsetRange?.toJson(),
      'onsetString': instance.onsetString,
      'elementOnsetString': instance.elementOnsetString?.toJson(),
      'recordedDate': instance.recordedDate?.toIso8601String(),
      'elementRecordedDate': instance.elementRecordedDate?.toJson(),
      'recorder': instance.recorder?.toJson(),
      'asserter': instance.asserter?.toJson(),
      'lastOccurrence': instance.lastOccurrence?.toIso8601String(),
      'elementLastOccurrence': instance.elementLastOccurrence?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'reaction': instance.reaction?.map((e) => e?.toJson())?.toList(),
    };

AllergyIntolerance_Reaction _$AllergyIntolerance_ReactionFromJson(
    Map<String, dynamic> json) {
  return AllergyIntolerance_Reaction(
    (json['manifestation'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    substance: json['substance'] == null
        ? null
        : CodeableConcept.fromJson(json['substance'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    onset:
        json['onset'] == null ? null : DateTime.parse(json['onset'] as String),
    elementOnset: json['elementOnset'] == null
        ? null
        : Element.fromJson(json['elementOnset'] as Map<String, dynamic>),
    severity: json['severity'] as String,
    elementSeverity: json['elementSeverity'] == null
        ? null
        : Element.fromJson(json['elementSeverity'] as Map<String, dynamic>),
    exposureRoute: json['exposureRoute'] == null
        ? null
        : CodeableConcept.fromJson(
            json['exposureRoute'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AllergyIntolerance_ReactionToJson(
        AllergyIntolerance_Reaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'substance': instance.substance?.toJson(),
      'manifestation':
          instance.manifestation?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'onset': instance.onset?.toIso8601String(),
      'elementOnset': instance.elementOnset?.toJson(),
      'severity': instance.severity,
      'elementSeverity': instance.elementSeverity?.toJson(),
      'exposureRoute': instance.exposureRoute?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };
