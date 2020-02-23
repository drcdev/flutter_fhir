import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class Procedure {
  static Future<Procedure> newInstance({
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
    List<Identifier> identifier,
    List<String> instantiatesCanonical,
    List<String> instantiatesUri,
    List<Element> elementInstantiatesUri,
    List<Reference> basedOn,
    List<Reference> partOf,
    String status,
    Element elementStatus,
    CodeableConcept statusReason,
    CodeableConcept category,
    CodeableConcept code,
    Reference subject,
    Reference encounter,
    String performedDateTime,
    Element elementPerformedDateTime,
    Period performedPeriod,
    String performedString,
    Element elementPerformedString,
    Age performedAge,
    Range performedRange,
    Reference recorder,
    Reference asserter,
    List<Procedure_Performer> performer,
    Reference location,
    List<CodeableConcept> reasonCode,
    List<Reference> reasonReference,
    List<CodeableConcept> bodySite,
    CodeableConcept outcome,
    List<Reference> report,
    List<CodeableConcept> complication,
    List<Reference> complicationDetail,
    List<CodeableConcept> followUp,
    List<Annotation> note,
    List<Procedure_FocalDevice> focalDevice,
    List<Reference> usedReference,
    List<CodeableConcept> usedCode,
  }) async {
    var fhirDb = new DatabaseHelper();
    Procedure newProcedure = new Procedure(
      resourceType: 'Procedure',
      id: id ?? await fhirDb.newResourceId('Procedure'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      instantiatesCanonical: instantiatesCanonical,
      instantiatesUri: instantiatesUri,
      elementInstantiatesUri: elementInstantiatesUri,
      basedOn: basedOn,
      partOf: partOf,
      status: status,
      elementStatus: elementStatus,
      statusReason: statusReason,
      category: category,
      code: code,
      subject: subject,
      encounter: encounter,
      performedDateTime: performedDateTime,
      elementPerformedDateTime: elementPerformedDateTime,
      performedPeriod: performedPeriod,
      performedString: performedString,
      elementPerformedString: elementPerformedString,
      performedAge: performedAge,
      performedRange: performedRange,
      recorder: recorder,
      asserter: asserter,
      performer: performer,
      location: location,
      reasonCode: reasonCode,
      reasonReference: reasonReference,
      bodySite: bodySite,
      outcome: outcome,
      report: report,
      complication: complication,
      complicationDetail: complicationDetail,
      followUp: followUp,
      note: note,
      focalDevice: focalDevice,
      usedReference: usedReference,
      usedCode: usedCode,
    );
    newProcedure.meta.createdAt = DateTime.now();
    newProcedure.meta.lastUpdated = newProcedure.meta.createdAt;
    int saved = await fhirDb.saveResource(newProcedure);
    return newProcedure;
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
  String resourceType = 'Procedure';
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
  List<Identifier> identifier;
  @HiveField(12)
  List<String> instantiatesCanonical;
  @HiveField(13)
  List<String> instantiatesUri;
  @HiveField(14)
  List<Element> elementInstantiatesUri;
  @HiveField(15)
  List<Reference> basedOn;
  @HiveField(16)
  List<Reference> partOf;
  @HiveField(17)
  String status;
  @HiveField(18)
  Element elementStatus;
  @HiveField(19)
  CodeableConcept statusReason;
  @HiveField(20)
  CodeableConcept category;
  @HiveField(21)
  CodeableConcept code;
  @HiveField(22)
  Reference subject;
  @HiveField(23)
  Reference encounter;
  @HiveField(24)
  String performedDateTime;
  @HiveField(25)
  Element elementPerformedDateTime;
  @HiveField(26)
  Period performedPeriod;
  @HiveField(27)
  String performedString;
  @HiveField(28)
  Element elementPerformedString;
  @HiveField(29)
  Age performedAge;
  @HiveField(30)
  Range performedRange;
  @HiveField(31)
  Reference recorder;
  @HiveField(32)
  Reference asserter;
  @HiveField(33)
  List<Procedure_Performer> performer;
  @HiveField(34)
  Reference location;
  @HiveField(35)
  List<CodeableConcept> reasonCode;
  @HiveField(36)
  List<Reference> reasonReference;
  @HiveField(37)
  List<CodeableConcept> bodySite;
  @HiveField(38)
  CodeableConcept outcome;
  @HiveField(39)
  List<Reference> report;
  @HiveField(40)
  List<CodeableConcept> complication;
  @HiveField(41)
  List<Reference> complicationDetail;
  @HiveField(42)
  List<CodeableConcept> followUp;
  @HiveField(43)
  List<Annotation> note;
  @HiveField(44)
  List<Procedure_FocalDevice> focalDevice;
  @HiveField(45)
  List<Reference> usedReference;
  @HiveField(46)
  List<CodeableConcept> usedCode;

  Procedure({
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
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.elementInstantiatesUri,
    this.basedOn,
    this.partOf,
    this.status,
    this.elementStatus,
    this.statusReason,
    this.category,
    this.code,
    @required this.subject,
    this.encounter,
    this.performedDateTime,
    this.elementPerformedDateTime,
    this.performedPeriod,
    this.performedString,
    this.elementPerformedString,
    this.performedAge,
    this.performedRange,
    this.recorder,
    this.asserter,
    this.performer,
    this.location,
    this.reasonCode,
    this.reasonReference,
    this.bodySite,
    this.outcome,
    this.report,
    this.complication,
    this.complicationDetail,
    this.followUp,
    this.note,
    this.focalDevice,
    this.usedReference,
    this.usedCode,
  });

  factory Procedure.fromJson(Map<String, dynamic> json) =>
      _$ProcedureFromJson(json);
  Map<String, dynamic> toJson() => _$ProcedureToJson(this);
}

class Procedure_Performer {
  static Future<Procedure_Performer> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept function,
    Reference actor,
    Reference onBehalfOf,
  }) async {
    var fhirDb = new DatabaseHelper();
    Procedure_Performer newProcedure_Performer = new Procedure_Performer(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      function: function,
      actor: actor,
      onBehalfOf: onBehalfOf,
    );
    return newProcedure_Performer;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept function;
  @HiveField(4)
  Reference actor;
  @HiveField(5)
  Reference onBehalfOf;

  Procedure_Performer({
    this.id,
    this.extension,
    this.modifierExtension,
    this.function,
    @required this.actor,
    this.onBehalfOf,
  });

  factory Procedure_Performer.fromJson(Map<String, dynamic> json) =>
      _$Procedure_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$Procedure_PerformerToJson(this);
}

class Procedure_FocalDevice {
  static Future<Procedure_FocalDevice> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept action,
    Reference manipulated,
  }) async {
    var fhirDb = new DatabaseHelper();
    Procedure_FocalDevice newProcedure_FocalDevice = new Procedure_FocalDevice(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      action: action,
      manipulated: manipulated,
    );
    return newProcedure_FocalDevice;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept action;
  @HiveField(4)
  Reference manipulated;

  Procedure_FocalDevice({
    this.id,
    this.extension,
    this.modifierExtension,
    this.action,
    @required this.manipulated,
  });

  factory Procedure_FocalDevice.fromJson(Map<String, dynamic> json) =>
      _$Procedure_FocalDeviceFromJson(json);
  Map<String, dynamic> toJson() => _$Procedure_FocalDeviceToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Procedure _$ProcedureFromJson(Map<String, dynamic> json) {
  return Procedure(
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
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instantiatesCanonical: (json['instantiatesCanonical'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    instantiatesUri:
        (json['instantiatesUri'] as List)?.map((e) => e as String)?.toList(),
    elementInstantiatesUri: (json['elementInstantiatesUri'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    partOf: (json['partOf'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    statusReason: json['statusReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['statusReason'] as Map<String, dynamic>),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    performedDateTime: json['performedDateTime'] as String,
    elementPerformedDateTime: json['elementPerformedDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementPerformedDateTime'] as Map<String, dynamic>),
    performedPeriod: json['performedPeriod'] == null
        ? null
        : Period.fromJson(json['performedPeriod'] as Map<String, dynamic>),
    performedString: json['performedString'] as String,
    elementPerformedString: json['elementPerformedString'] == null
        ? null
        : Element.fromJson(
            json['elementPerformedString'] as Map<String, dynamic>),
    performedAge: json['performedAge'] == null
        ? null
        : Age.fromJson(json['performedAge'] as Map<String, dynamic>),
    performedRange: json['performedRange'] == null
        ? null
        : Range.fromJson(json['performedRange'] as Map<String, dynamic>),
    recorder: json['recorder'] == null
        ? null
        : Reference.fromJson(json['recorder'] as Map<String, dynamic>),
    asserter: json['asserter'] == null
        ? null
        : Reference.fromJson(json['asserter'] as Map<String, dynamic>),
    performer: (json['performer'] as List)
        ?.map((e) => e == null
            ? null
            : Procedure_Performer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    bodySite: (json['bodySite'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outcome: json['outcome'] == null
        ? null
        : CodeableConcept.fromJson(json['outcome'] as Map<String, dynamic>),
    report: (json['report'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    complication: (json['complication'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    complicationDetail: (json['complicationDetail'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    followUp: (json['followUp'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    focalDevice: (json['focalDevice'] as List)
        ?.map((e) => e == null
            ? null
            : Procedure_FocalDevice.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    usedReference: (json['usedReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    usedCode: (json['usedCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ProcedureToJson(Procedure instance) {
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
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('instantiatesCanonical', instance.instantiatesCanonical);
  writeNotNull('instantiatesUri', instance.instantiatesUri);
  writeNotNull('elementInstantiatesUri',
      instance.elementInstantiatesUri?.map((e) => e?.toJson())?.toList());
  writeNotNull('basedOn', instance.basedOn?.map((e) => e?.toJson())?.toList());
  writeNotNull('partOf', instance.partOf?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('statusReason', instance.statusReason?.toJson());
  writeNotNull('category', instance.category?.toJson());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('performedDateTime', instance.performedDateTime);
  writeNotNull(
      'elementPerformedDateTime', instance.elementPerformedDateTime?.toJson());
  writeNotNull('performedPeriod', instance.performedPeriod?.toJson());
  writeNotNull('performedString', instance.performedString);
  writeNotNull(
      'elementPerformedString', instance.elementPerformedString?.toJson());
  writeNotNull('performedAge', instance.performedAge?.toJson());
  writeNotNull('performedRange', instance.performedRange?.toJson());
  writeNotNull('recorder', instance.recorder?.toJson());
  writeNotNull('asserter', instance.asserter?.toJson());
  writeNotNull(
      'performer', instance.performer?.map((e) => e?.toJson())?.toList());
  writeNotNull('location', instance.location?.toJson());
  writeNotNull(
      'reasonCode', instance.reasonCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('reasonReference',
      instance.reasonReference?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'bodySite', instance.bodySite?.map((e) => e?.toJson())?.toList());
  writeNotNull('outcome', instance.outcome?.toJson());
  writeNotNull('report', instance.report?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'complication', instance.complication?.map((e) => e?.toJson())?.toList());
  writeNotNull('complicationDetail',
      instance.complicationDetail?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'followUp', instance.followUp?.map((e) => e?.toJson())?.toList());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'focalDevice', instance.focalDevice?.map((e) => e?.toJson())?.toList());
  writeNotNull('usedReference',
      instance.usedReference?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'usedCode', instance.usedCode?.map((e) => e?.toJson())?.toList());
  return val;
}

Procedure_Performer _$Procedure_PerformerFromJson(Map<String, dynamic> json) {
  return Procedure_Performer(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    function: json['function'] == null
        ? null
        : CodeableConcept.fromJson(json['function'] as Map<String, dynamic>),
    actor: json['actor'] == null
        ? null
        : Reference.fromJson(json['actor'] as Map<String, dynamic>),
    onBehalfOf: json['onBehalfOf'] == null
        ? null
        : Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Procedure_PerformerToJson(Procedure_Performer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('function', instance.function?.toJson());
  writeNotNull('actor', instance.actor?.toJson());
  writeNotNull('onBehalfOf', instance.onBehalfOf?.toJson());
  return val;
}

Procedure_FocalDevice _$Procedure_FocalDeviceFromJson(
    Map<String, dynamic> json) {
  return Procedure_FocalDevice(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    action: json['action'] == null
        ? null
        : CodeableConcept.fromJson(json['action'] as Map<String, dynamic>),
    manipulated: json['manipulated'] == null
        ? null
        : Reference.fromJson(json['manipulated'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Procedure_FocalDeviceToJson(
    Procedure_FocalDevice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('action', instance.action?.toJson());
  writeNotNull('manipulated', instance.manipulated?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProcedureAdapter extends TypeAdapter<Procedure> {
  @override
  Procedure read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Procedure(
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
      identifier: (fields[11] as List)?.cast<Identifier>(),
      instantiatesCanonical: (fields[12] as List)?.cast<String>(),
      instantiatesUri: (fields[13] as List)?.cast<String>(),
      elementInstantiatesUri: (fields[14] as List)?.cast<Element>(),
      basedOn: (fields[15] as List)?.cast<Reference>(),
      partOf: (fields[16] as List)?.cast<Reference>(),
      status: fields[17] as String,
      elementStatus: fields[18] as Element,
      statusReason: fields[19] as CodeableConcept,
      category: fields[20] as CodeableConcept,
      code: fields[21] as CodeableConcept,
      subject: fields[22] as Reference,
      encounter: fields[23] as Reference,
      performedDateTime: fields[24] as String,
      elementPerformedDateTime: fields[25] as Element,
      performedPeriod: fields[26] as Period,
      performedString: fields[27] as String,
      elementPerformedString: fields[28] as Element,
      performedAge: fields[29] as Age,
      performedRange: fields[30] as Range,
      recorder: fields[31] as Reference,
      asserter: fields[32] as Reference,
      performer: (fields[33] as List)?.cast<Procedure_Performer>(),
      location: fields[34] as Reference,
      reasonCode: (fields[35] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[36] as List)?.cast<Reference>(),
      bodySite: (fields[37] as List)?.cast<CodeableConcept>(),
      outcome: fields[38] as CodeableConcept,
      report: (fields[39] as List)?.cast<Reference>(),
      complication: (fields[40] as List)?.cast<CodeableConcept>(),
      complicationDetail: (fields[41] as List)?.cast<Reference>(),
      followUp: (fields[42] as List)?.cast<CodeableConcept>(),
      note: (fields[43] as List)?.cast<Annotation>(),
      focalDevice: (fields[44] as List)?.cast<Procedure_FocalDevice>(),
      usedReference: (fields[45] as List)?.cast<Reference>(),
      usedCode: (fields[46] as List)?.cast<CodeableConcept>(),
    );
  }

  @override
  void write(BinaryWriter writer, Procedure obj) {
    writer
      ..writeByte(47)
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
      ..write(obj.instantiatesCanonical)
      ..writeByte(13)
      ..write(obj.instantiatesUri)
      ..writeByte(14)
      ..write(obj.elementInstantiatesUri)
      ..writeByte(15)
      ..write(obj.basedOn)
      ..writeByte(16)
      ..write(obj.partOf)
      ..writeByte(17)
      ..write(obj.status)
      ..writeByte(18)
      ..write(obj.elementStatus)
      ..writeByte(19)
      ..write(obj.statusReason)
      ..writeByte(20)
      ..write(obj.category)
      ..writeByte(21)
      ..write(obj.code)
      ..writeByte(22)
      ..write(obj.subject)
      ..writeByte(23)
      ..write(obj.encounter)
      ..writeByte(24)
      ..write(obj.performedDateTime)
      ..writeByte(25)
      ..write(obj.elementPerformedDateTime)
      ..writeByte(26)
      ..write(obj.performedPeriod)
      ..writeByte(27)
      ..write(obj.performedString)
      ..writeByte(28)
      ..write(obj.elementPerformedString)
      ..writeByte(29)
      ..write(obj.performedAge)
      ..writeByte(30)
      ..write(obj.performedRange)
      ..writeByte(31)
      ..write(obj.recorder)
      ..writeByte(32)
      ..write(obj.asserter)
      ..writeByte(33)
      ..write(obj.performer)
      ..writeByte(34)
      ..write(obj.location)
      ..writeByte(35)
      ..write(obj.reasonCode)
      ..writeByte(36)
      ..write(obj.reasonReference)
      ..writeByte(37)
      ..write(obj.bodySite)
      ..writeByte(38)
      ..write(obj.outcome)
      ..writeByte(39)
      ..write(obj.report)
      ..writeByte(40)
      ..write(obj.complication)
      ..writeByte(41)
      ..write(obj.complicationDetail)
      ..writeByte(42)
      ..write(obj.followUp)
      ..writeByte(43)
      ..write(obj.note)
      ..writeByte(44)
      ..write(obj.focalDevice)
      ..writeByte(45)
      ..write(obj.usedReference)
      ..writeByte(46)
      ..write(obj.usedCode);
  }
}

class Procedure_PerformerAdapter extends TypeAdapter<Procedure_Performer> {
  @override
  Procedure_Performer read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Procedure_Performer(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      function: fields[3] as CodeableConcept,
      actor: fields[4] as Reference,
      onBehalfOf: fields[5] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Procedure_Performer obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.function)
      ..writeByte(4)
      ..write(obj.actor)
      ..writeByte(5)
      ..write(obj.onBehalfOf);
  }
}

class Procedure_FocalDeviceAdapter extends TypeAdapter<Procedure_FocalDevice> {
  @override
  Procedure_FocalDevice read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Procedure_FocalDevice(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      action: fields[3] as CodeableConcept,
      manipulated: fields[4] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Procedure_FocalDevice obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.action)
      ..writeByte(4)
      ..write(obj.manipulated);
  }
}
