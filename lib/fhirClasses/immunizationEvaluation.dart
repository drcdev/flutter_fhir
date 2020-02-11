import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 118)
class ImmunizationEvaluation {

  //  This is a ImmunizationEvaluation resource
  @HiveField(0)
  final String resourceType= 'ImmunizationEvaluation';

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

  //  A unique identifier assigned to this immunization evaluation record.
  @HiveField(11)
  List<Identifier> identifier;

  //  Indicates the current status of the evaluation of the vaccination
  // administration event.
  @HiveField(12)
  String status;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  The individual for whom the evaluation is being done.
  @HiveField(14)
  Reference patient;

  //  The date the evaluation of the vaccine administration event was
  // performed.
  @HiveField(15)
  DateTime date;

  //  Extensions for date
  @HiveField(16)
  Element elementDate;

  //  Indicates the authority who published the protocol (e.g. ACIP).
  @HiveField(17)
  Reference authority;

  //  The vaccine preventable disease the dose is being evaluated against.
  @HiveField(18)
  CodeableConcept targetDisease;

  //  The vaccine administration event being evaluated.
  @HiveField(19)
  Reference immunizationEvent;

  //  Indicates if the dose is valid or not valid with respect to the
  // published recommendations.
  @HiveField(20)
  CodeableConcept doseStatus;

  //  Provides an explanation as to why the vaccine administration event is
  // valid or not relative to the published recommendations.
  @HiveField(21)
  List<CodeableConcept> doseStatusReason;

  //  Additional information about the evaluation.
  @HiveField(22)
  String description;

  //  Extensions for description
  @HiveField(23)
  Element elementDescription;

  //  One possible path to achieve presumed immunity against a disease -
  // within the context of an authority.
  @HiveField(24)
  String series;

  //  Extensions for series
  @HiveField(25)
  Element elementSeries;

  //  Nominal position in a series.
  int doseNumberPositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for doseNumberPositiveInt
  @HiveField(27)
  Element elementDoseNumberPositiveInt;

  //  Nominal position in a series.
  @HiveField(28)
  String doseNumberString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for doseNumberString
  @HiveField(29)
  Element elementDoseNumberString;

  //  The recommended number of doses to achieve immunity.
  int seriesDosesPositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for seriesDosesPositiveInt
  @HiveField(31)
  Element elementSeriesDosesPositiveInt;

  //  The recommended number of doses to achieve immunity.
  @HiveField(32)
  String seriesDosesString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for seriesDosesString
  @HiveField(33)
  Element elementSeriesDosesString;

ImmunizationEvaluation(
  this.patient,
    this.targetDisease,
    this.immunizationEvent,
    this.doseStatus,
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
    this.status,
    this.elementStatus,
    this.date,
    this.elementDate,
    this.authority,
    this.doseStatusReason,
    this.description,
    this.elementDescription,
    this.series,
    this.elementSeries,
    this.doseNumberPositiveInt,
    this.elementDoseNumberPositiveInt,
    this.doseNumberString,
    this.elementDoseNumberString,
    this.seriesDosesPositiveInt,
    this.elementSeriesDosesPositiveInt,
    this.seriesDosesString,
    this.elementSeriesDosesString
    });

  factory ImmunizationEvaluation.fromJson(Map<String, dynamic> json) => _$ImmunizationEvaluationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationEvaluationToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ImmunizationEvaluationAdapter
    extends TypeAdapter<ImmunizationEvaluation> {
  @override
  final typeId = 118;

  @override
  ImmunizationEvaluation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImmunizationEvaluation(
      fields[14] as Reference,
      fields[18] as CodeableConcept,
      fields[19] as Reference,
      fields[20] as CodeableConcept,
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
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      date: fields[15] as DateTime,
      elementDate: fields[16] as Element,
      authority: fields[17] as Reference,
      doseStatusReason: (fields[21] as List)?.cast<CodeableConcept>(),
      description: fields[22] as String,
      elementDescription: fields[23] as Element,
      series: fields[24] as String,
      elementSeries: fields[25] as Element,
      elementDoseNumberPositiveInt: fields[27] as Element,
      doseNumberString: fields[28] as String,
      elementDoseNumberString: fields[29] as Element,
      elementSeriesDosesPositiveInt: fields[31] as Element,
      seriesDosesString: fields[32] as String,
      elementSeriesDosesString: fields[33] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ImmunizationEvaluation obj) {
    writer
      ..writeByte(32)
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
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.patient)
      ..writeByte(15)
      ..write(obj.date)
      ..writeByte(16)
      ..write(obj.elementDate)
      ..writeByte(17)
      ..write(obj.authority)
      ..writeByte(18)
      ..write(obj.targetDisease)
      ..writeByte(19)
      ..write(obj.immunizationEvent)
      ..writeByte(20)
      ..write(obj.doseStatus)
      ..writeByte(21)
      ..write(obj.doseStatusReason)
      ..writeByte(22)
      ..write(obj.description)
      ..writeByte(23)
      ..write(obj.elementDescription)
      ..writeByte(24)
      ..write(obj.series)
      ..writeByte(25)
      ..write(obj.elementSeries)
      ..writeByte(27)
      ..write(obj.elementDoseNumberPositiveInt)
      ..writeByte(28)
      ..write(obj.doseNumberString)
      ..writeByte(29)
      ..write(obj.elementDoseNumberString)
      ..writeByte(31)
      ..write(obj.elementSeriesDosesPositiveInt)
      ..writeByte(32)
      ..write(obj.seriesDosesString)
      ..writeByte(33)
      ..write(obj.elementSeriesDosesString);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImmunizationEvaluation _$ImmunizationEvaluationFromJson(
    Map<String, dynamic> json) {
  return ImmunizationEvaluation(
    json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    json['targetDisease'] == null
        ? null
        : CodeableConcept.fromJson(
            json['targetDisease'] as Map<String, dynamic>),
    json['immunizationEvent'] == null
        ? null
        : Reference.fromJson(json['immunizationEvent'] as Map<String, dynamic>),
    json['doseStatus'] == null
        ? null
        : CodeableConcept.fromJson(json['doseStatus'] as Map<String, dynamic>),
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    authority: json['authority'] == null
        ? null
        : Reference.fromJson(json['authority'] as Map<String, dynamic>),
    doseStatusReason: (json['doseStatusReason'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    series: json['series'] as String,
    elementSeries: json['elementSeries'] == null
        ? null
        : Element.fromJson(json['elementSeries'] as Map<String, dynamic>),
    doseNumberPositiveInt: json['doseNumberPositiveInt'] as int,
    elementDoseNumberPositiveInt: json['elementDoseNumberPositiveInt'] == null
        ? null
        : Element.fromJson(
            json['elementDoseNumberPositiveInt'] as Map<String, dynamic>),
    doseNumberString: json['doseNumberString'] as String,
    elementDoseNumberString: json['elementDoseNumberString'] == null
        ? null
        : Element.fromJson(
            json['elementDoseNumberString'] as Map<String, dynamic>),
    seriesDosesPositiveInt: json['seriesDosesPositiveInt'] as int,
    elementSeriesDosesPositiveInt: json['elementSeriesDosesPositiveInt'] == null
        ? null
        : Element.fromJson(
            json['elementSeriesDosesPositiveInt'] as Map<String, dynamic>),
    seriesDosesString: json['seriesDosesString'] as String,
    elementSeriesDosesString: json['elementSeriesDosesString'] == null
        ? null
        : Element.fromJson(
            json['elementSeriesDosesString'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImmunizationEvaluationToJson(
        ImmunizationEvaluation instance) =>
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
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'patient': instance.patient?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'authority': instance.authority?.toJson(),
      'targetDisease': instance.targetDisease?.toJson(),
      'immunizationEvent': instance.immunizationEvent?.toJson(),
      'doseStatus': instance.doseStatus?.toJson(),
      'doseStatusReason':
          instance.doseStatusReason?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'series': instance.series,
      'elementSeries': instance.elementSeries?.toJson(),
      'doseNumberPositiveInt': instance.doseNumberPositiveInt,
      'elementDoseNumberPositiveInt':
          instance.elementDoseNumberPositiveInt?.toJson(),
      'doseNumberString': instance.doseNumberString,
      'elementDoseNumberString': instance.elementDoseNumberString?.toJson(),
      'seriesDosesPositiveInt': instance.seriesDosesPositiveInt,
      'elementSeriesDosesPositiveInt':
          instance.elementSeriesDosesPositiveInt?.toJson(),
      'seriesDosesString': instance.seriesDosesString,
      'elementSeriesDosesString': instance.elementSeriesDosesString?.toJson(),
    };
