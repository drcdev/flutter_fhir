import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/util/db.dart';
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

@JsonSerializable(explicitToJson: true)
class ServiceRequest {
  static Future<ServiceRequest> newInstance(
      {String resourceType,
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
      List<Reference> relevantHistory}) async {
    var fhirDb = new DatabaseHelper();
    ServiceRequest newServiceRequest = new ServiceRequest(
      resourceType: 'ServiceRequest',
      id: await fhirDb.newResourceId('ServiceRequest'),
      meta: await Meta.newInstance(),
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
    int saved = await fhirDb.newResource(newServiceRequest);
    return newServiceRequest;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'ServiceRequest';
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
  List<Reference> replaces;
  Identifier requisition;
  String status;
  Element elementStatus;
  String intent;
  Element elementIntent;
  List<CodeableConcept> category;
  String priority;
  Element elementPriority;
  bool doNotPerform;
  Element elementDoNotPerform;
  CodeableConcept code;
  List<CodeableConcept> orderDetail;
  Quantity quantityQuantity;
  Ratio quantityRatio;
  Range quantityRange;
  Reference subject;
  Reference encounter;
  String
      occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  Element elementOccurrenceDateTime;
  Period occurrencePeriod;
  Timing occurrenceTiming;
  bool asNeededBoolean; //  pattern: ^true|false$
  Element elementAsNeededBoolean;
  CodeableConcept asNeededCodeableConcept;
  DateTime authoredOn;
  Element elementAuthoredOn;
  Reference requester;
  CodeableConcept performerType;
  List<Reference> performer;
  List<CodeableConcept> locationCode;
  List<Reference> locationReference;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<Reference> insurance;
  List<Reference> supportingInfo;
  List<Reference> specimen;
  List<CodeableConcept> bodySite;
  List<Annotation> note;
  String patientInstruction;
  Element elementPatientInstruction;
  List<Reference> relevantHistory;

  ServiceRequest(
      {@required this.resourceType,
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
      this.relevantHistory});

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

Map<String, dynamic> _$ServiceRequestToJson(ServiceRequest instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
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
      'instantiatesCanonical': instance.instantiatesCanonical,
      'instantiatesUri': instance.instantiatesUri,
      'elementInstantiatesUri':
          instance.elementInstantiatesUri?.map((e) => e?.toJson())?.toList(),
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'replaces': instance.replaces?.map((e) => e?.toJson())?.toList(),
      'requisition': instance.requisition?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'intent': instance.intent,
      'elementIntent': instance.elementIntent?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'priority': instance.priority,
      'elementPriority': instance.elementPriority?.toJson(),
      'doNotPerform': instance.doNotPerform,
      'elementDoNotPerform': instance.elementDoNotPerform?.toJson(),
      'code': instance.code?.toJson(),
      'orderDetail': instance.orderDetail?.map((e) => e?.toJson())?.toList(),
      'quantityQuantity': instance.quantityQuantity?.toJson(),
      'quantityRatio': instance.quantityRatio?.toJson(),
      'quantityRange': instance.quantityRange?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'occurrenceDateTime': instance.occurrenceDateTime,
      'elementOccurrenceDateTime': instance.elementOccurrenceDateTime?.toJson(),
      'occurrencePeriod': instance.occurrencePeriod?.toJson(),
      'occurrenceTiming': instance.occurrenceTiming?.toJson(),
      'asNeededBoolean': instance.asNeededBoolean,
      'elementAsNeededBoolean': instance.elementAsNeededBoolean?.toJson(),
      'asNeededCodeableConcept': instance.asNeededCodeableConcept?.toJson(),
      'authoredOn': instance.authoredOn?.toIso8601String(),
      'elementAuthoredOn': instance.elementAuthoredOn?.toJson(),
      'requester': instance.requester?.toJson(),
      'performerType': instance.performerType?.toJson(),
      'performer': instance.performer?.map((e) => e?.toJson())?.toList(),
      'locationCode': instance.locationCode?.map((e) => e?.toJson())?.toList(),
      'locationReference':
          instance.locationReference?.map((e) => e?.toJson())?.toList(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'insurance': instance.insurance?.map((e) => e?.toJson())?.toList(),
      'supportingInfo':
          instance.supportingInfo?.map((e) => e?.toJson())?.toList(),
      'specimen': instance.specimen?.map((e) => e?.toJson())?.toList(),
      'bodySite': instance.bodySite?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'patientInstruction': instance.patientInstruction,
      'elementPatientInstruction': instance.elementPatientInstruction?.toJson(),
      'relevantHistory':
          instance.relevantHistory?.map((e) => e?.toJson())?.toList(),
    };
