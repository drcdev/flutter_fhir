import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class ServiceRequest {
  static Future<ServiceRequest> newInstance({
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
    List<Reference> replaces,
    Identifier requisition,
    String status,
    Element elementStatus,
    String intent,
    Element elementIntent,
    List<CodeableConcept> category,
    String priority,
    Element elementPriority,
    bool doNotPerform,
    Element elementDoNotPerform,
    CodeableConcept code,
    List<CodeableConcept> orderDetail,
    Quantity quantityQuantity,
    Ratio quantityRatio,
    Range quantityRange,
    Reference subject,
    Reference encounter,
    String occurrenceDateTime,
    Element elementOccurrenceDateTime,
    Period occurrencePeriod,
    Timing occurrenceTiming,
    bool asNeededBoolean,
    Element elementAsNeededBoolean,
    CodeableConcept asNeededCodeableConcept,
    DateTime authoredOn,
    Element elementAuthoredOn,
    Reference requester,
    CodeableConcept performerType,
    List<Reference> performer,
    List<CodeableConcept> locationCode,
    List<Reference> locationReference,
    List<CodeableConcept> reasonCode,
    List<Reference> reasonReference,
    List<Reference> insurance,
    List<Reference> supportingInfo,
    List<Reference> specimen,
    List<CodeableConcept> bodySite,
    List<Annotation> note,
    String patientInstruction,
    Element elementPatientInstruction,
    List<Reference> relevantHistory,
  }) async {
    var fhirDb = new DatabaseHelper();
    ServiceRequest newServiceRequest = new ServiceRequest(
      resourceType: 'ServiceRequest',
      id: id ?? await fhirDb.newResourceId('ServiceRequest'),
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
      replaces: replaces,
      requisition: requisition,
      status: status,
      elementStatus: elementStatus,
      intent: intent,
      elementIntent: elementIntent,
      category: category,
      priority: priority,
      elementPriority: elementPriority,
      doNotPerform: doNotPerform,
      elementDoNotPerform: elementDoNotPerform,
      code: code,
      orderDetail: orderDetail,
      quantityQuantity: quantityQuantity,
      quantityRatio: quantityRatio,
      quantityRange: quantityRange,
      subject: subject,
      encounter: encounter,
      occurrenceDateTime: occurrenceDateTime,
      elementOccurrenceDateTime: elementOccurrenceDateTime,
      occurrencePeriod: occurrencePeriod,
      occurrenceTiming: occurrenceTiming,
      asNeededBoolean: asNeededBoolean,
      elementAsNeededBoolean: elementAsNeededBoolean,
      asNeededCodeableConcept: asNeededCodeableConcept,
      authoredOn: authoredOn,
      elementAuthoredOn: elementAuthoredOn,
      requester: requester,
      performerType: performerType,
      performer: performer,
      locationCode: locationCode,
      locationReference: locationReference,
      reasonCode: reasonCode,
      reasonReference: reasonReference,
      insurance: insurance,
      supportingInfo: supportingInfo,
      specimen: specimen,
      bodySite: bodySite,
      note: note,
      patientInstruction: patientInstruction,
      elementPatientInstruction: elementPatientInstruction,
      relevantHistory: relevantHistory,
    );
    newServiceRequest.meta.createdAt = DateTime.now();
    newServiceRequest.meta.lastUpdated = newServiceRequest.meta.createdAt;
    int saved = await fhirDb.saveResource(newServiceRequest);
    return newServiceRequest;
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
  String resourceType = 'ServiceRequest';
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
  List<Reference> replaces;
  @HiveField(17)
  Identifier requisition;
  @HiveField(18)
  String status;
  @HiveField(19)
  Element elementStatus;
  @HiveField(20)
  String intent;
  @HiveField(21)
  Element elementIntent;
  @HiveField(22)
  List<CodeableConcept> category;
  @HiveField(23)
  String priority;
  @HiveField(24)
  Element elementPriority;
  @HiveField(25)
  bool doNotPerform;
  @HiveField(26)
  Element elementDoNotPerform;
  @HiveField(27)
  CodeableConcept code;
  @HiveField(28)
  List<CodeableConcept> orderDetail;
  @HiveField(29)
  Quantity quantityQuantity;
  @HiveField(30)
  Ratio quantityRatio;
  @HiveField(31)
  Range quantityRange;
  @HiveField(32)
  Reference subject;
  @HiveField(33)
  Reference encounter;
  @HiveField(34)
  String occurrenceDateTime;
  @HiveField(35)
  Element elementOccurrenceDateTime;
  @HiveField(36)
  Period occurrencePeriod;
  @HiveField(37)
  Timing occurrenceTiming;
  @HiveField(38)
  bool asNeededBoolean;
  @HiveField(39)
  Element elementAsNeededBoolean;
  @HiveField(40)
  CodeableConcept asNeededCodeableConcept;
  @HiveField(41)
  DateTime authoredOn;
  @HiveField(42)
  Element elementAuthoredOn;
  @HiveField(43)
  Reference requester;
  @HiveField(44)
  CodeableConcept performerType;
  @HiveField(45)
  List<Reference> performer;
  @HiveField(46)
  List<CodeableConcept> locationCode;
  @HiveField(47)
  List<Reference> locationReference;
  @HiveField(48)
  List<CodeableConcept> reasonCode;
  @HiveField(49)
  List<Reference> reasonReference;
  @HiveField(50)
  List<Reference> insurance;
  @HiveField(51)
  List<Reference> supportingInfo;
  @HiveField(52)
  List<Reference> specimen;
  @HiveField(53)
  List<CodeableConcept> bodySite;
  @HiveField(54)
  List<Annotation> note;
  @HiveField(55)
  String patientInstruction;
  @HiveField(56)
  Element elementPatientInstruction;
  @HiveField(57)
  List<Reference> relevantHistory;

  ServiceRequest({
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
    this.replaces,
    this.requisition,
    this.status,
    this.elementStatus,
    this.intent,
    this.elementIntent,
    this.category,
    this.priority,
    this.elementPriority,
    this.doNotPerform,
    this.elementDoNotPerform,
    this.code,
    this.orderDetail,
    this.quantityQuantity,
    this.quantityRatio,
    this.quantityRange,
    @required this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.elementOccurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.asNeededBoolean,
    this.elementAsNeededBoolean,
    this.asNeededCodeableConcept,
    this.authoredOn,
    this.elementAuthoredOn,
    this.requester,
    this.performerType,
    this.performer,
    this.locationCode,
    this.locationReference,
    this.reasonCode,
    this.reasonReference,
    this.insurance,
    this.supportingInfo,
    this.specimen,
    this.bodySite,
    this.note,
    this.patientInstruction,
    this.elementPatientInstruction,
    this.relevantHistory,
  });

  factory ServiceRequest.fromJson(Map<String, dynamic> json) =>
      _$ServiceRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceRequestToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceRequest _$ServiceRequestFromJson(Map<String, dynamic> json) {
  return ServiceRequest(
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
    replaces: (json['replaces'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    requisition: json['requisition'] == null
        ? null
        : Identifier.fromJson(json['requisition'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    intent: json['intent'] as String,
    elementIntent: json['elementIntent'] == null
        ? null
        : Element.fromJson(json['elementIntent'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    priority: json['priority'] as String,
    elementPriority: json['elementPriority'] == null
        ? null
        : Element.fromJson(json['elementPriority'] as Map<String, dynamic>),
    doNotPerform: json['doNotPerform'] as bool,
    elementDoNotPerform: json['elementDoNotPerform'] == null
        ? null
        : Element.fromJson(json['elementDoNotPerform'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    orderDetail: (json['orderDetail'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    quantityQuantity: json['quantityQuantity'] == null
        ? null
        : Quantity.fromJson(json['quantityQuantity'] as Map<String, dynamic>),
    quantityRatio: json['quantityRatio'] == null
        ? null
        : Ratio.fromJson(json['quantityRatio'] as Map<String, dynamic>),
    quantityRange: json['quantityRange'] == null
        ? null
        : Range.fromJson(json['quantityRange'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    occurrenceDateTime: json['occurrenceDateTime'] as String,
    elementOccurrenceDateTime: json['elementOccurrenceDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementOccurrenceDateTime'] as Map<String, dynamic>),
    occurrencePeriod: json['occurrencePeriod'] == null
        ? null
        : Period.fromJson(json['occurrencePeriod'] as Map<String, dynamic>),
    occurrenceTiming: json['occurrenceTiming'] == null
        ? null
        : Timing.fromJson(json['occurrenceTiming'] as Map<String, dynamic>),
    asNeededBoolean: json['asNeededBoolean'] as bool,
    elementAsNeededBoolean: json['elementAsNeededBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementAsNeededBoolean'] as Map<String, dynamic>),
    asNeededCodeableConcept: json['asNeededCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['asNeededCodeableConcept'] as Map<String, dynamic>),
    authoredOn: json['authoredOn'] == null
        ? null
        : DateTime.parse(json['authoredOn'] as String),
    elementAuthoredOn: json['elementAuthoredOn'] == null
        ? null
        : Element.fromJson(json['elementAuthoredOn'] as Map<String, dynamic>),
    requester: json['requester'] == null
        ? null
        : Reference.fromJson(json['requester'] as Map<String, dynamic>),
    performerType: json['performerType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['performerType'] as Map<String, dynamic>),
    performer: (json['performer'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    locationCode: (json['locationCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    locationReference: (json['locationReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    insurance: (json['insurance'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInfo: (json['supportingInfo'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specimen: (json['specimen'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    bodySite: (json['bodySite'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    patientInstruction: json['patientInstruction'] as String,
    elementPatientInstruction: json['elementPatientInstruction'] == null
        ? null
        : Element.fromJson(
            json['elementPatientInstruction'] as Map<String, dynamic>),
    relevantHistory: (json['relevantHistory'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ServiceRequestToJson(ServiceRequest instance) {
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
  writeNotNull(
      'replaces', instance.replaces?.map((e) => e?.toJson())?.toList());
  writeNotNull('requisition', instance.requisition?.toJson());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('intent', instance.intent);
  writeNotNull('elementIntent', instance.elementIntent?.toJson());
  writeNotNull(
      'category', instance.category?.map((e) => e?.toJson())?.toList());
  writeNotNull('priority', instance.priority);
  writeNotNull('elementPriority', instance.elementPriority?.toJson());
  writeNotNull('doNotPerform', instance.doNotPerform);
  writeNotNull('elementDoNotPerform', instance.elementDoNotPerform?.toJson());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull(
      'orderDetail', instance.orderDetail?.map((e) => e?.toJson())?.toList());
  writeNotNull('quantityQuantity', instance.quantityQuantity?.toJson());
  writeNotNull('quantityRatio', instance.quantityRatio?.toJson());
  writeNotNull('quantityRange', instance.quantityRange?.toJson());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('occurrenceDateTime', instance.occurrenceDateTime);
  writeNotNull('elementOccurrenceDateTime',
      instance.elementOccurrenceDateTime?.toJson());
  writeNotNull('occurrencePeriod', instance.occurrencePeriod?.toJson());
  writeNotNull('occurrenceTiming', instance.occurrenceTiming?.toJson());
  writeNotNull('asNeededBoolean', instance.asNeededBoolean);
  writeNotNull(
      'elementAsNeededBoolean', instance.elementAsNeededBoolean?.toJson());
  writeNotNull(
      'asNeededCodeableConcept', instance.asNeededCodeableConcept?.toJson());
  writeNotNull('authoredOn', instance.authoredOn?.toIso8601String());
  writeNotNull('elementAuthoredOn', instance.elementAuthoredOn?.toJson());
  writeNotNull('requester', instance.requester?.toJson());
  writeNotNull('performerType', instance.performerType?.toJson());
  writeNotNull(
      'performer', instance.performer?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'locationCode', instance.locationCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('locationReference',
      instance.locationReference?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'reasonCode', instance.reasonCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('reasonReference',
      instance.reasonReference?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'insurance', instance.insurance?.map((e) => e?.toJson())?.toList());
  writeNotNull('supportingInfo',
      instance.supportingInfo?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'specimen', instance.specimen?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'bodySite', instance.bodySite?.map((e) => e?.toJson())?.toList());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  writeNotNull('patientInstruction', instance.patientInstruction);
  writeNotNull('elementPatientInstruction',
      instance.elementPatientInstruction?.toJson());
  writeNotNull('relevantHistory',
      instance.relevantHistory?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ServiceRequestAdapter extends TypeAdapter<ServiceRequest> {
  @override
  ServiceRequest read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ServiceRequest(
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
      replaces: (fields[16] as List)?.cast<Reference>(),
      requisition: fields[17] as Identifier,
      status: fields[18] as String,
      elementStatus: fields[19] as Element,
      intent: fields[20] as String,
      elementIntent: fields[21] as Element,
      category: (fields[22] as List)?.cast<CodeableConcept>(),
      priority: fields[23] as String,
      elementPriority: fields[24] as Element,
      doNotPerform: fields[25] as bool,
      elementDoNotPerform: fields[26] as Element,
      code: fields[27] as CodeableConcept,
      orderDetail: (fields[28] as List)?.cast<CodeableConcept>(),
      quantityQuantity: fields[29] as Quantity,
      quantityRatio: fields[30] as Ratio,
      quantityRange: fields[31] as Range,
      subject: fields[32] as Reference,
      encounter: fields[33] as Reference,
      occurrenceDateTime: fields[34] as String,
      elementOccurrenceDateTime: fields[35] as Element,
      occurrencePeriod: fields[36] as Period,
      occurrenceTiming: fields[37] as Timing,
      asNeededBoolean: fields[38] as bool,
      elementAsNeededBoolean: fields[39] as Element,
      asNeededCodeableConcept: fields[40] as CodeableConcept,
      authoredOn: fields[41] as DateTime,
      elementAuthoredOn: fields[42] as Element,
      requester: fields[43] as Reference,
      performerType: fields[44] as CodeableConcept,
      performer: (fields[45] as List)?.cast<Reference>(),
      locationCode: (fields[46] as List)?.cast<CodeableConcept>(),
      locationReference: (fields[47] as List)?.cast<Reference>(),
      reasonCode: (fields[48] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[49] as List)?.cast<Reference>(),
      insurance: (fields[50] as List)?.cast<Reference>(),
      supportingInfo: (fields[51] as List)?.cast<Reference>(),
      specimen: (fields[52] as List)?.cast<Reference>(),
      bodySite: (fields[53] as List)?.cast<CodeableConcept>(),
      note: (fields[54] as List)?.cast<Annotation>(),
      patientInstruction: fields[55] as String,
      elementPatientInstruction: fields[56] as Element,
      relevantHistory: (fields[57] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, ServiceRequest obj) {
    writer
      ..writeByte(58)
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
      ..write(obj.replaces)
      ..writeByte(17)
      ..write(obj.requisition)
      ..writeByte(18)
      ..write(obj.status)
      ..writeByte(19)
      ..write(obj.elementStatus)
      ..writeByte(20)
      ..write(obj.intent)
      ..writeByte(21)
      ..write(obj.elementIntent)
      ..writeByte(22)
      ..write(obj.category)
      ..writeByte(23)
      ..write(obj.priority)
      ..writeByte(24)
      ..write(obj.elementPriority)
      ..writeByte(25)
      ..write(obj.doNotPerform)
      ..writeByte(26)
      ..write(obj.elementDoNotPerform)
      ..writeByte(27)
      ..write(obj.code)
      ..writeByte(28)
      ..write(obj.orderDetail)
      ..writeByte(29)
      ..write(obj.quantityQuantity)
      ..writeByte(30)
      ..write(obj.quantityRatio)
      ..writeByte(31)
      ..write(obj.quantityRange)
      ..writeByte(32)
      ..write(obj.subject)
      ..writeByte(33)
      ..write(obj.encounter)
      ..writeByte(34)
      ..write(obj.occurrenceDateTime)
      ..writeByte(35)
      ..write(obj.elementOccurrenceDateTime)
      ..writeByte(36)
      ..write(obj.occurrencePeriod)
      ..writeByte(37)
      ..write(obj.occurrenceTiming)
      ..writeByte(38)
      ..write(obj.asNeededBoolean)
      ..writeByte(39)
      ..write(obj.elementAsNeededBoolean)
      ..writeByte(40)
      ..write(obj.asNeededCodeableConcept)
      ..writeByte(41)
      ..write(obj.authoredOn)
      ..writeByte(42)
      ..write(obj.elementAuthoredOn)
      ..writeByte(43)
      ..write(obj.requester)
      ..writeByte(44)
      ..write(obj.performerType)
      ..writeByte(45)
      ..write(obj.performer)
      ..writeByte(46)
      ..write(obj.locationCode)
      ..writeByte(47)
      ..write(obj.locationReference)
      ..writeByte(48)
      ..write(obj.reasonCode)
      ..writeByte(49)
      ..write(obj.reasonReference)
      ..writeByte(50)
      ..write(obj.insurance)
      ..writeByte(51)
      ..write(obj.supportingInfo)
      ..writeByte(52)
      ..write(obj.specimen)
      ..writeByte(53)
      ..write(obj.bodySite)
      ..writeByte(54)
      ..write(obj.note)
      ..writeByte(55)
      ..write(obj.patientInstruction)
      ..writeByte(56)
      ..write(obj.elementPatientInstruction)
      ..writeByte(57)
      ..write(obj.relevantHistory);
  }
}
