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
@HiveType(typeId: 315)
class ImmunizationRecommendation {

  //  This is a ImmunizationRecommendation resource
  @HiveField(0)
  final String resourceType= 'ImmunizationRecommendation';

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

  //  A unique identifier assigned to this particular recommendation record.
  @HiveField(11)
  List<Identifier> identifier;

  //  The patient the recommendation(s) are for.
  @HiveField(12)
  Reference patient;

  //  The date the immunization recommendation(s) were created.
  @HiveField(13)
  DateTime date;

  //  Extensions for date
  @HiveField(14)
  Element elementDate;

  //  Indicates the authority who published the protocol (e.g. ACIP).
  @HiveField(15)
  Reference authority;

  //  Vaccine administration recommendations.
  @HiveField(16)
  List<ImmunizationRecommendation_Recommendation> recommendation;

ImmunizationRecommendation(
  this.patient,
    this.recommendation,
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
    this.date,
    this.elementDate,
    this.authority
    });

  factory ImmunizationRecommendation.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationRecommendationToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 316)
class ImmunizationRecommendation_Recommendation {

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

  //  Vaccine(s) or vaccine group that pertain to the recommendation.
  @HiveField(3)
  List<CodeableConcept> vaccineCode;

  //  The targeted disease for the recommendation.
  @HiveField(4)
  CodeableConcept targetDisease;

  //  Vaccine(s) which should not be used to fulfill the recommendation.
  @HiveField(5)
  List<CodeableConcept> contraindicatedVaccineCode;

  //  Indicates the patient status with respect to the path to immunity for
  // the target disease.
  @HiveField(6)
  CodeableConcept forecastStatus;

  //  The reason for the assigned forecast status.
  @HiveField(7)
  List<CodeableConcept> forecastReason;

  //  Vaccine date recommendations.  For example, earliest date to
  // administer, latest date to administer, etc.
  @HiveField(8)
  List<ImmunizationRecommendation_DateCriterion> dateCriterion;

  //  Contains the description about the protocol under which the vaccine
  // was administered.
  @HiveField(9)
  String description;

  //  Extensions for description
  @HiveField(10)
  Element elementDescription;

  //  One possible path to achieve presumed immunity against a disease -
  // within the context of an authority.
  @HiveField(11)
  String series;

  //  Extensions for series
  @HiveField(12)
  Element elementSeries;

  //  Nominal position of the recommended dose in a series (e.g. dose 2 is
  // the next recommended dose).
  int doseNumberPositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for doseNumberPositiveInt
  @HiveField(14)
  Element elementDoseNumberPositiveInt;

  //  Nominal position of the recommended dose in a series (e.g. dose 2 is
  // the next recommended dose).
  @HiveField(15)
  String doseNumberString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for doseNumberString
  @HiveField(16)
  Element elementDoseNumberString;

  //  The recommended number of doses to achieve immunity.
  int seriesDosesPositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for seriesDosesPositiveInt
  @HiveField(18)
  Element elementSeriesDosesPositiveInt;

  //  The recommended number of doses to achieve immunity.
  @HiveField(19)
  String seriesDosesString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for seriesDosesString
  @HiveField(20)
  Element elementSeriesDosesString;

  //  Immunization event history and/or evaluation that supports the status
  // and recommendation.
  @HiveField(21)
  List<Reference> supportingImmunization;

  //  Patient Information that supports the status and recommendation.  This
  // includes patient observations, adverse reactions and
  // allergy/intolerance information.
  @HiveField(22)
  List<Reference> supportingPatientInformation;

ImmunizationRecommendation_Recommendation(
  this.forecastStatus,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.vaccineCode,
    this.targetDisease,
    this.contraindicatedVaccineCode,
    this.forecastReason,
    this.dateCriterion,
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
    this.elementSeriesDosesString,
    this.supportingImmunization,
    this.supportingPatientInformation
    });

  factory ImmunizationRecommendation_Recommendation.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendation_RecommendationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationRecommendation_RecommendationToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 317)
class ImmunizationRecommendation_DateCriterion {

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

  //  Date classification of recommendation.  For example, earliest date to
  // give, latest date to give, etc.
  @HiveField(3)
  CodeableConcept code;

  //  The date whose meaning is specified by dateCriterion.code.
  @HiveField(4)
  DateTime value;

  //  Extensions for value
  @HiveField(5)
  Element elementValue;

ImmunizationRecommendation_DateCriterion(
  this.code,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.value,
    this.elementValue
    });

  factory ImmunizationRecommendation_DateCriterion.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendation_DateCriterionFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationRecommendation_DateCriterionToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ImmunizationRecommendationAdapter
    extends TypeAdapter<ImmunizationRecommendation> {
  @override
  final typeId = 315;

  @override
  ImmunizationRecommendation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImmunizationRecommendation(
      fields[12] as Reference,
      (fields[16] as List)?.cast<ImmunizationRecommendation_Recommendation>(),
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
      date: fields[13] as DateTime,
      elementDate: fields[14] as Element,
      authority: fields[15] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, ImmunizationRecommendation obj) {
    writer
      ..writeByte(17)
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
      ..write(obj.patient)
      ..writeByte(13)
      ..write(obj.date)
      ..writeByte(14)
      ..write(obj.elementDate)
      ..writeByte(15)
      ..write(obj.authority)
      ..writeByte(16)
      ..write(obj.recommendation);
  }
}

class ImmunizationRecommendation_RecommendationAdapter
    extends TypeAdapter<ImmunizationRecommendation_Recommendation> {
  @override
  final typeId = 316;

  @override
  ImmunizationRecommendation_Recommendation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImmunizationRecommendation_Recommendation(
      fields[6] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      vaccineCode: (fields[3] as List)?.cast<CodeableConcept>(),
      targetDisease: fields[4] as CodeableConcept,
      contraindicatedVaccineCode: (fields[5] as List)?.cast<CodeableConcept>(),
      forecastReason: (fields[7] as List)?.cast<CodeableConcept>(),
      dateCriterion:
          (fields[8] as List)?.cast<ImmunizationRecommendation_DateCriterion>(),
      description: fields[9] as String,
      elementDescription: fields[10] as Element,
      series: fields[11] as String,
      elementSeries: fields[12] as Element,
      elementDoseNumberPositiveInt: fields[14] as Element,
      doseNumberString: fields[15] as String,
      elementDoseNumberString: fields[16] as Element,
      elementSeriesDosesPositiveInt: fields[18] as Element,
      seriesDosesString: fields[19] as String,
      elementSeriesDosesString: fields[20] as Element,
      supportingImmunization: (fields[21] as List)?.cast<Reference>(),
      supportingPatientInformation: (fields[22] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(
      BinaryWriter writer, ImmunizationRecommendation_Recommendation obj) {
    writer
      ..writeByte(21)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.vaccineCode)
      ..writeByte(4)
      ..write(obj.targetDisease)
      ..writeByte(5)
      ..write(obj.contraindicatedVaccineCode)
      ..writeByte(6)
      ..write(obj.forecastStatus)
      ..writeByte(7)
      ..write(obj.forecastReason)
      ..writeByte(8)
      ..write(obj.dateCriterion)
      ..writeByte(9)
      ..write(obj.description)
      ..writeByte(10)
      ..write(obj.elementDescription)
      ..writeByte(11)
      ..write(obj.series)
      ..writeByte(12)
      ..write(obj.elementSeries)
      ..writeByte(14)
      ..write(obj.elementDoseNumberPositiveInt)
      ..writeByte(15)
      ..write(obj.doseNumberString)
      ..writeByte(16)
      ..write(obj.elementDoseNumberString)
      ..writeByte(18)
      ..write(obj.elementSeriesDosesPositiveInt)
      ..writeByte(19)
      ..write(obj.seriesDosesString)
      ..writeByte(20)
      ..write(obj.elementSeriesDosesString)
      ..writeByte(21)
      ..write(obj.supportingImmunization)
      ..writeByte(22)
      ..write(obj.supportingPatientInformation);
  }
}

class ImmunizationRecommendation_DateCriterionAdapter
    extends TypeAdapter<ImmunizationRecommendation_DateCriterion> {
  @override
  final typeId = 317;

  @override
  ImmunizationRecommendation_DateCriterion read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImmunizationRecommendation_DateCriterion(
      fields[3] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      value: fields[4] as DateTime,
      elementValue: fields[5] as Element,
    );
  }

  @override
  void write(
      BinaryWriter writer, ImmunizationRecommendation_DateCriterion obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.value)
      ..writeByte(5)
      ..write(obj.elementValue);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImmunizationRecommendation _$ImmunizationRecommendationFromJson(
    Map<String, dynamic> json) {
  return ImmunizationRecommendation(
    json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    (json['recommendation'] as List)
        ?.map((e) => e == null
            ? null
            : ImmunizationRecommendation_Recommendation.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
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
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    authority: json['authority'] == null
        ? null
        : Reference.fromJson(json['authority'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImmunizationRecommendationToJson(
        ImmunizationRecommendation instance) =>
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
      'patient': instance.patient?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'authority': instance.authority?.toJson(),
      'recommendation':
          instance.recommendation?.map((e) => e?.toJson())?.toList(),
    };

ImmunizationRecommendation_Recommendation
    _$ImmunizationRecommendation_RecommendationFromJson(
        Map<String, dynamic> json) {
  return ImmunizationRecommendation_Recommendation(
    json['forecastStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['forecastStatus'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    vaccineCode: (json['vaccineCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    targetDisease: json['targetDisease'] == null
        ? null
        : CodeableConcept.fromJson(
            json['targetDisease'] as Map<String, dynamic>),
    contraindicatedVaccineCode: (json['contraindicatedVaccineCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    forecastReason: (json['forecastReason'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dateCriterion: (json['dateCriterion'] as List)
        ?.map((e) => e == null
            ? null
            : ImmunizationRecommendation_DateCriterion.fromJson(
                e as Map<String, dynamic>))
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
    supportingImmunization: (json['supportingImmunization'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingPatientInformation: (json['supportingPatientInformation'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImmunizationRecommendation_RecommendationToJson(
        ImmunizationRecommendation_Recommendation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'vaccineCode': instance.vaccineCode?.map((e) => e?.toJson())?.toList(),
      'targetDisease': instance.targetDisease?.toJson(),
      'contraindicatedVaccineCode': instance.contraindicatedVaccineCode
          ?.map((e) => e?.toJson())
          ?.toList(),
      'forecastStatus': instance.forecastStatus?.toJson(),
      'forecastReason':
          instance.forecastReason?.map((e) => e?.toJson())?.toList(),
      'dateCriterion':
          instance.dateCriterion?.map((e) => e?.toJson())?.toList(),
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
      'supportingImmunization':
          instance.supportingImmunization?.map((e) => e?.toJson())?.toList(),
      'supportingPatientInformation': instance.supportingPatientInformation
          ?.map((e) => e?.toJson())
          ?.toList(),
    };

ImmunizationRecommendation_DateCriterion
    _$ImmunizationRecommendation_DateCriterionFromJson(
        Map<String, dynamic> json) {
  return ImmunizationRecommendation_DateCriterion(
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    value:
        json['value'] == null ? null : DateTime.parse(json['value'] as String),
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImmunizationRecommendation_DateCriterionToJson(
        ImmunizationRecommendation_DateCriterion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'value': instance.value?.toIso8601String(),
      'elementValue': instance.elementValue?.toJson(),
    };
