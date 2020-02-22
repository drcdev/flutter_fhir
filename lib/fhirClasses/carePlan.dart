import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class CarePlan {
  static Future<CarePlan> newInstance({
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
    List<Reference> partOf,
    String status,
    Element elementStatus,
    String intent,
    Element elementIntent,
    List<CodeableConcept> category,
    String title,
    Element elementTitle,
    String description,
    Element elementDescription,
    Reference subject,
    Reference encounter,
    Period period,
    DateTime created,
    Element elementCreated,
    Reference author,
    List<Reference> contributor,
    List<Reference> careTeam,
    List<Reference> addresses,
    List<Reference> supportingInfo,
    List<Reference> goal,
    List<CarePlan_Activity> activity,
    List<Annotation> note,
  }) async {
    var fhirDb = new DatabaseHelper();
    CarePlan newCarePlan = new CarePlan(
      resourceType: 'CarePlan',
      id: id ?? await fhirDb.newResourceId('CarePlan'),
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
      partOf: partOf,
      status: status,
      elementStatus: elementStatus,
      intent: intent,
      elementIntent: elementIntent,
      category: category,
      title: title,
      elementTitle: elementTitle,
      description: description,
      elementDescription: elementDescription,
      subject: subject,
      encounter: encounter,
      period: period,
      created: created,
      elementCreated: elementCreated,
      author: author,
      contributor: contributor,
      careTeam: careTeam,
      addresses: addresses,
      supportingInfo: supportingInfo,
      goal: goal,
      activity: activity,
      note: note,
    );
    newCarePlan.meta.createdAt = DateTime.now();
    newCarePlan.meta.lastUpdated = newCarePlan.meta.createdAt;
    int saved = await fhirDb.saveResource(newCarePlan);
    return newCarePlan;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'CarePlan';
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
  List<Reference> partOf;
  String status;
  Element elementStatus;
  String intent;
  Element elementIntent;
  List<CodeableConcept> category;
  String title;
  Element elementTitle;
  String description;
  Element elementDescription;
  Reference subject;
  Reference encounter;
  Period period;
  DateTime created;
  Element elementCreated;
  Reference author;
  List<Reference> contributor;
  List<Reference> careTeam;
  List<Reference> addresses;
  List<Reference> supportingInfo;
  List<Reference> goal;
  List<CarePlan_Activity> activity;
  List<Annotation> note;

  CarePlan({
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
    this.partOf,
    this.status,
    this.elementStatus,
    this.intent,
    this.elementIntent,
    this.category,
    this.title,
    this.elementTitle,
    this.description,
    this.elementDescription,
    @required this.subject,
    this.encounter,
    this.period,
    this.created,
    this.elementCreated,
    this.author,
    this.contributor,
    this.careTeam,
    this.addresses,
    this.supportingInfo,
    this.goal,
    this.activity,
    this.note,
  });

  factory CarePlan.fromJson(Map<String, dynamic> json) =>
      _$CarePlanFromJson(json);
  Map<String, dynamic> toJson() => _$CarePlanToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CarePlan_Activity {
  static Future<CarePlan_Activity> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<CodeableConcept> outcomeCodeableConcept,
    List<Reference> outcomeReference,
    List<Annotation> progress,
    Reference reference,
    CarePlan_Detail detail,
  }) async {
    var fhirDb = new DatabaseHelper();
    CarePlan_Activity newCarePlan_Activity = new CarePlan_Activity(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      outcomeCodeableConcept: outcomeCodeableConcept,
      outcomeReference: outcomeReference,
      progress: progress,
      reference: reference,
      detail: detail,
    );
    return newCarePlan_Activity;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> outcomeCodeableConcept;
  List<Reference> outcomeReference;
  List<Annotation> progress;
  Reference reference;
  CarePlan_Detail detail;

  CarePlan_Activity({
    this.id,
    this.extension,
    this.modifierExtension,
    this.outcomeCodeableConcept,
    this.outcomeReference,
    this.progress,
    this.reference,
    this.detail,
  });

  factory CarePlan_Activity.fromJson(Map<String, dynamic> json) =>
      _$CarePlan_ActivityFromJson(json);
  Map<String, dynamic> toJson() => _$CarePlan_ActivityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CarePlan_Detail {
  static Future<CarePlan_Detail> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String kind,
    Element elementKind,
    List<String> instantiatesCanonical,
    List<String> instantiatesUri,
    List<Element> elementInstantiatesUri,
    CodeableConcept code,
    List<CodeableConcept> reasonCode,
    List<Reference> reasonReference,
    List<Reference> goal,
    String status,
    Element elementStatus,
    CodeableConcept statusReason,
    bool doNotPerform,
    Element elementDoNotPerform,
    Timing scheduledTiming,
    Period scheduledPeriod,
    String scheduledString,
    Element elementScheduledString,
    Reference location,
    List<Reference> performer,
    CodeableConcept productCodeableConcept,
    Reference productReference,
    Quantity dailyAmount,
    Quantity quantity,
    String description,
    Element elementDescription,
  }) async {
    var fhirDb = new DatabaseHelper();
    CarePlan_Detail newCarePlan_Detail = new CarePlan_Detail(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      kind: kind,
      elementKind: elementKind,
      instantiatesCanonical: instantiatesCanonical,
      instantiatesUri: instantiatesUri,
      elementInstantiatesUri: elementInstantiatesUri,
      code: code,
      reasonCode: reasonCode,
      reasonReference: reasonReference,
      goal: goal,
      status: status,
      elementStatus: elementStatus,
      statusReason: statusReason,
      doNotPerform: doNotPerform,
      elementDoNotPerform: elementDoNotPerform,
      scheduledTiming: scheduledTiming,
      scheduledPeriod: scheduledPeriod,
      scheduledString: scheduledString,
      elementScheduledString: elementScheduledString,
      location: location,
      performer: performer,
      productCodeableConcept: productCodeableConcept,
      productReference: productReference,
      dailyAmount: dailyAmount,
      quantity: quantity,
      description: description,
      elementDescription: elementDescription,
    );
    return newCarePlan_Detail;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String kind;
  Element elementKind;
  List<String> instantiatesCanonical;
  List<String> instantiatesUri;
  List<Element> elementInstantiatesUri;
  CodeableConcept code;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<Reference> goal;
  String status;
  Element elementStatus;
  CodeableConcept statusReason;
  bool doNotPerform;
  Element elementDoNotPerform;
  Timing scheduledTiming;
  Period scheduledPeriod;
  String scheduledString;
  Element elementScheduledString;
  Reference location;
  List<Reference> performer;
  CodeableConcept productCodeableConcept;
  Reference productReference;
  Quantity dailyAmount;
  Quantity quantity;
  String description;
  Element elementDescription;

  CarePlan_Detail({
    this.id,
    this.extension,
    this.modifierExtension,
    this.kind,
    this.elementKind,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.elementInstantiatesUri,
    this.code,
    this.reasonCode,
    this.reasonReference,
    this.goal,
    this.status,
    this.elementStatus,
    this.statusReason,
    this.doNotPerform,
    this.elementDoNotPerform,
    this.scheduledTiming,
    this.scheduledPeriod,
    this.scheduledString,
    this.elementScheduledString,
    this.location,
    this.performer,
    this.productCodeableConcept,
    this.productReference,
    this.dailyAmount,
    this.quantity,
    this.description,
    this.elementDescription,
  });

  factory CarePlan_Detail.fromJson(Map<String, dynamic> json) =>
      _$CarePlan_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$CarePlan_DetailToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarePlan _$CarePlanFromJson(Map<String, dynamic> json) {
  return CarePlan(
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
    partOf: (json['partOf'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    elementCreated: json['elementCreated'] == null
        ? null
        : Element.fromJson(json['elementCreated'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : Reference.fromJson(json['author'] as Map<String, dynamic>),
    contributor: (json['contributor'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    careTeam: (json['careTeam'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    addresses: (json['addresses'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInfo: (json['supportingInfo'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    goal: (json['goal'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    activity: (json['activity'] as List)
        ?.map((e) => e == null
            ? null
            : CarePlan_Activity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CarePlanToJson(CarePlan instance) => <String, dynamic>{
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
      'partOf': instance.partOf?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'intent': instance.intent,
      'elementIntent': instance.elementIntent?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'period': instance.period?.toJson(),
      'created': instance.created?.toIso8601String(),
      'elementCreated': instance.elementCreated?.toJson(),
      'author': instance.author?.toJson(),
      'contributor': instance.contributor?.map((e) => e?.toJson())?.toList(),
      'careTeam': instance.careTeam?.map((e) => e?.toJson())?.toList(),
      'addresses': instance.addresses?.map((e) => e?.toJson())?.toList(),
      'supportingInfo':
          instance.supportingInfo?.map((e) => e?.toJson())?.toList(),
      'goal': instance.goal?.map((e) => e?.toJson())?.toList(),
      'activity': instance.activity?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };

CarePlan_Activity _$CarePlan_ActivityFromJson(Map<String, dynamic> json) {
  return CarePlan_Activity(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outcomeCodeableConcept: (json['outcomeCodeableConcept'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outcomeReference: (json['outcomeReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    progress: (json['progress'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reference: json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>),
    detail: json['detail'] == null
        ? null
        : CarePlan_Detail.fromJson(json['detail'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CarePlan_ActivityToJson(CarePlan_Activity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'outcomeCodeableConcept':
          instance.outcomeCodeableConcept?.map((e) => e?.toJson())?.toList(),
      'outcomeReference':
          instance.outcomeReference?.map((e) => e?.toJson())?.toList(),
      'progress': instance.progress?.map((e) => e?.toJson())?.toList(),
      'reference': instance.reference?.toJson(),
      'detail': instance.detail?.toJson(),
    };

CarePlan_Detail _$CarePlan_DetailFromJson(Map<String, dynamic> json) {
  return CarePlan_Detail(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    kind: json['kind'] as String,
    elementKind: json['elementKind'] == null
        ? null
        : Element.fromJson(json['elementKind'] as Map<String, dynamic>),
    instantiatesCanonical: (json['instantiatesCanonical'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    instantiatesUri:
        (json['instantiatesUri'] as List)?.map((e) => e as String)?.toList(),
    elementInstantiatesUri: (json['elementInstantiatesUri'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    goal: (json['goal'] as List)
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
    doNotPerform: json['doNotPerform'] as bool,
    elementDoNotPerform: json['elementDoNotPerform'] == null
        ? null
        : Element.fromJson(json['elementDoNotPerform'] as Map<String, dynamic>),
    scheduledTiming: json['scheduledTiming'] == null
        ? null
        : Timing.fromJson(json['scheduledTiming'] as Map<String, dynamic>),
    scheduledPeriod: json['scheduledPeriod'] == null
        ? null
        : Period.fromJson(json['scheduledPeriod'] as Map<String, dynamic>),
    scheduledString: json['scheduledString'] as String,
    elementScheduledString: json['elementScheduledString'] == null
        ? null
        : Element.fromJson(
            json['elementScheduledString'] as Map<String, dynamic>),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    performer: (json['performer'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    productCodeableConcept: json['productCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productCodeableConcept'] as Map<String, dynamic>),
    productReference: json['productReference'] == null
        ? null
        : Reference.fromJson(json['productReference'] as Map<String, dynamic>),
    dailyAmount: json['dailyAmount'] == null
        ? null
        : Quantity.fromJson(json['dailyAmount'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CarePlan_DetailToJson(CarePlan_Detail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'kind': instance.kind,
      'elementKind': instance.elementKind?.toJson(),
      'instantiatesCanonical': instance.instantiatesCanonical,
      'instantiatesUri': instance.instantiatesUri,
      'elementInstantiatesUri':
          instance.elementInstantiatesUri?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'goal': instance.goal?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'statusReason': instance.statusReason?.toJson(),
      'doNotPerform': instance.doNotPerform,
      'elementDoNotPerform': instance.elementDoNotPerform?.toJson(),
      'scheduledTiming': instance.scheduledTiming?.toJson(),
      'scheduledPeriod': instance.scheduledPeriod?.toJson(),
      'scheduledString': instance.scheduledString,
      'elementScheduledString': instance.elementScheduledString?.toJson(),
      'location': instance.location?.toJson(),
      'performer': instance.performer?.map((e) => e?.toJson())?.toList(),
      'productCodeableConcept': instance.productCodeableConcept?.toJson(),
      'productReference': instance.productReference?.toJson(),
      'dailyAmount': instance.dailyAmount?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
    };
