import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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

  update() {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'Procedure';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  List<String> instantiatesCanonical;
  List<String> instantiatesUri;
  List<Element> elementInstantiatesUri;
  List<Reference> basedOn;
  List<Reference> partOf;
  String status;
  Element elementStatus;
  CodeableConcept statusReason;
  CodeableConcept category;
  CodeableConcept code;
  Reference subject;
  Reference encounter;
  String performedDateTime;
  Element elementPerformedDateTime;
  Period performedPeriod;
  String performedString;
  Element elementPerformedString;
  Age performedAge;
  Range performedRange;
  Reference recorder;
  Reference asserter;
  List<Procedure_Performer> performer;
  Reference location;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<CodeableConcept> bodySite;
  CodeableConcept outcome;
  List<Reference> report;
  List<CodeableConcept> complication;
  List<Reference> complicationDetail;
  List<CodeableConcept> followUp;
  List<Annotation> note;
  List<Procedure_FocalDevice> focalDevice;
  List<Reference> usedReference;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('Procedure_Performer'),
      extension: extension,
      modifierExtension: modifierExtension,
      function: function,
      actor: actor,
      onBehalfOf: onBehalfOf,
    );
    return newProcedure_Performer;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept function;
  Reference actor;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('Procedure_FocalDevice'),
      extension: extension,
      modifierExtension: modifierExtension,
      action: action,
      manipulated: manipulated,
    );
    return newProcedure_FocalDevice;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept action;
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
