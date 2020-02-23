import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/dataRequirement.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class GuidanceResponse {
  static Future<GuidanceResponse> newInstance({
    String resourceType,
    String id,
    Meta meta,
    String implicitRules,
    Element elementImplicitRules,
    String language,
    Element elementLanguage,
    Narrative text,
    List<dynamic> contained,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Identifier requestIdentifier,
    List<Identifier> identifier,
    String moduleUri,
    Element elementModuleUri,
    String moduleCanonical,
    Element elementModuleCanonical,
    CodeableConcept moduleCodeableConcept,
    String status,
    Element elementStatus,
    Reference subject,
    Reference encounter,
    DateTime occurrenceDateTime,
    Element elementOccurrenceDateTime,
    Reference performer,
    List<CodeableConcept> reasonCode,
    List<Reference> reasonReference,
    List<Annotation> note,
    List<Reference> evaluationMessage,
    Reference outputParameters,
    Reference result,
    List<DataRequirement> dataRequirement,
  }) async {
    var fhirDb = new DatabaseHelper();
    GuidanceResponse newGuidanceResponse = new GuidanceResponse(
      resourceType: 'GuidanceResponse',
      id: id ?? await fhirDb.newResourceId('GuidanceResponse'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      requestIdentifier: requestIdentifier,
      identifier: identifier,
      moduleUri: moduleUri,
      elementModuleUri: elementModuleUri,
      moduleCanonical: moduleCanonical,
      elementModuleCanonical: elementModuleCanonical,
      moduleCodeableConcept: moduleCodeableConcept,
      status: status,
      elementStatus: elementStatus,
      subject: subject,
      encounter: encounter,
      occurrenceDateTime: occurrenceDateTime,
      elementOccurrenceDateTime: elementOccurrenceDateTime,
      performer: performer,
      reasonCode: reasonCode,
      reasonReference: reasonReference,
      note: note,
      evaluationMessage: evaluationMessage,
      outputParameters: outputParameters,
      result: result,
      dataRequirement: dataRequirement,
    );
    newGuidanceResponse.meta.createdAt = DateTime.now();
    newGuidanceResponse.meta.lastUpdated = newGuidanceResponse.meta.createdAt;
    int saved = await fhirDb.saveResource(newGuidanceResponse);
    return newGuidanceResponse;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'GuidanceResponse';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  Identifier requestIdentifier;
  @HiveField(12)
  List<Identifier> identifier;
  @HiveField(13)
  String moduleUri;
  @HiveField(14)
  Element elementModuleUri;
  @HiveField(15)
  String moduleCanonical;
  @HiveField(16)
  Element elementModuleCanonical;
  @HiveField(17)
  CodeableConcept moduleCodeableConcept;
  @HiveField(18)
  String status;
  @HiveField(19)
  Element elementStatus;
  @HiveField(20)
  Reference subject;
  @HiveField(21)
  Reference encounter;
  @HiveField(22)
  DateTime occurrenceDateTime;
  @HiveField(23)
  Element elementOccurrenceDateTime;
  @HiveField(24)
  Reference performer;
  @HiveField(25)
  List<CodeableConcept> reasonCode;
  @HiveField(26)
  List<Reference> reasonReference;
  @HiveField(27)
  List<Annotation> note;
  @HiveField(28)
  List<Reference> evaluationMessage;
  @HiveField(29)
  Reference outputParameters;
  @HiveField(30)
  Reference result;
  @HiveField(31)
  List<DataRequirement> dataRequirement;

  GuidanceResponse({
    @required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.requestIdentifier,
    this.identifier,
    this.moduleUri,
    this.elementModuleUri,
    this.moduleCanonical,
    this.elementModuleCanonical,
    this.moduleCodeableConcept,
    this.status,
    this.elementStatus,
    this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.elementOccurrenceDateTime,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.evaluationMessage,
    this.outputParameters,
    this.result,
    this.dataRequirement,
  });

  factory GuidanceResponse.fromJson(Map<String, dynamic> json) =>
      _$GuidanceResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GuidanceResponseToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuidanceResponse _$GuidanceResponseFromJson(Map<String, dynamic> json) {
  return GuidanceResponse(
    resourceType: json['resourceType'] as String,
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    requestIdentifier: json['requestIdentifier'] == null
        ? null
        : Identifier.fromJson(
            json['requestIdentifier'] as Map<String, dynamic>),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    moduleUri: json['moduleUri'] as String,
    elementModuleUri: json['elementModuleUri'] == null
        ? null
        : Element.fromJson(json['elementModuleUri'] as Map<String, dynamic>),
    moduleCanonical: json['moduleCanonical'] as String,
    elementModuleCanonical: json['elementModuleCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementModuleCanonical'] as Map<String, dynamic>),
    moduleCodeableConcept: json['moduleCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['moduleCodeableConcept'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    occurrenceDateTime: json['occurrenceDateTime'] == null
        ? null
        : DateTime.parse(json['occurrenceDateTime'] as String),
    elementOccurrenceDateTime: json['elementOccurrenceDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementOccurrenceDateTime'] as Map<String, dynamic>),
    performer: json['performer'] == null
        ? null
        : Reference.fromJson(json['performer'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    evaluationMessage: (json['evaluationMessage'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outputParameters: json['outputParameters'] == null
        ? null
        : Reference.fromJson(json['outputParameters'] as Map<String, dynamic>),
    result: json['result'] == null
        ? null
        : Reference.fromJson(json['result'] as Map<String, dynamic>),
    dataRequirement: (json['dataRequirement'] as List)
        ?.map((e) => e == null
            ? null
            : DataRequirement.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GuidanceResponseToJson(GuidanceResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('requestIdentifier', instance.requestIdentifier?.toJson());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('moduleUri', instance.moduleUri);
  writeNotNull('elementModuleUri', instance.elementModuleUri?.toJson());
  writeNotNull('moduleCanonical', instance.moduleCanonical);
  writeNotNull(
      'elementModuleCanonical', instance.elementModuleCanonical?.toJson());
  writeNotNull(
      'moduleCodeableConcept', instance.moduleCodeableConcept?.toJson());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull(
      'occurrenceDateTime', instance.occurrenceDateTime?.toIso8601String());
  writeNotNull('elementOccurrenceDateTime',
      instance.elementOccurrenceDateTime?.toJson());
  writeNotNull('performer', instance.performer?.toJson());
  writeNotNull(
      'reasonCode', instance.reasonCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('reasonReference',
      instance.reasonReference?.map((e) => e?.toJson())?.toList());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  writeNotNull('evaluationMessage',
      instance.evaluationMessage?.map((e) => e?.toJson())?.toList());
  writeNotNull('outputParameters', instance.outputParameters?.toJson());
  writeNotNull('result', instance.result?.toJson());
  writeNotNull('dataRequirement',
      instance.dataRequirement?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GuidanceResponseAdapter extends TypeAdapter<GuidanceResponse> {
  @override
  GuidanceResponse read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GuidanceResponse(
      resourceType: fields[0] as String,
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
      requestIdentifier: fields[11] as Identifier,
      identifier: (fields[12] as List)?.cast<Identifier>(),
      moduleUri: fields[13] as String,
      elementModuleUri: fields[14] as Element,
      moduleCanonical: fields[15] as String,
      elementModuleCanonical: fields[16] as Element,
      moduleCodeableConcept: fields[17] as CodeableConcept,
      status: fields[18] as String,
      elementStatus: fields[19] as Element,
      subject: fields[20] as Reference,
      encounter: fields[21] as Reference,
      occurrenceDateTime: fields[22] as DateTime,
      elementOccurrenceDateTime: fields[23] as Element,
      performer: fields[24] as Reference,
      reasonCode: (fields[25] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[26] as List)?.cast<Reference>(),
      note: (fields[27] as List)?.cast<Annotation>(),
      evaluationMessage: (fields[28] as List)?.cast<Reference>(),
      outputParameters: fields[29] as Reference,
      result: fields[30] as Reference,
      dataRequirement: (fields[31] as List)?.cast<DataRequirement>(),
    );
  }

  @override
  void write(BinaryWriter writer, GuidanceResponse obj) {
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
      ..write(obj.requestIdentifier)
      ..writeByte(12)
      ..write(obj.identifier)
      ..writeByte(13)
      ..write(obj.moduleUri)
      ..writeByte(14)
      ..write(obj.elementModuleUri)
      ..writeByte(15)
      ..write(obj.moduleCanonical)
      ..writeByte(16)
      ..write(obj.elementModuleCanonical)
      ..writeByte(17)
      ..write(obj.moduleCodeableConcept)
      ..writeByte(18)
      ..write(obj.status)
      ..writeByte(19)
      ..write(obj.elementStatus)
      ..writeByte(20)
      ..write(obj.subject)
      ..writeByte(21)
      ..write(obj.encounter)
      ..writeByte(22)
      ..write(obj.occurrenceDateTime)
      ..writeByte(23)
      ..write(obj.elementOccurrenceDateTime)
      ..writeByte(24)
      ..write(obj.performer)
      ..writeByte(25)
      ..write(obj.reasonCode)
      ..writeByte(26)
      ..write(obj.reasonReference)
      ..writeByte(27)
      ..write(obj.note)
      ..writeByte(28)
      ..write(obj.evaluationMessage)
      ..writeByte(29)
      ..write(obj.outputParameters)
      ..writeByte(30)
      ..write(obj.result)
      ..writeByte(31)
      ..write(obj.dataRequirement);
  }
}
