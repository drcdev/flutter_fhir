import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class PaymentReconciliation {
  static Future<PaymentReconciliation> newInstance({
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
    String status,
    Element elementStatus,
    Period period,
    DateTime created,
    Element elementCreated,
    Reference paymentIssuer,
    Reference request,
    Reference requestor,
    String outcome,
    Element elementOutcome,
    String disposition,
    Element elementDisposition,
    String paymentDate,
    Element elementPaymentDate,
    Money paymentAmount,
    Identifier paymentIdentifier,
    List<PaymentReconciliation_Detail> detail,
    CodeableConcept formCode,
    List<PaymentReconciliation_ProcessNote> processNote,
  }) async {
    var fhirDb = new DatabaseHelper();
    PaymentReconciliation newPaymentReconciliation = new PaymentReconciliation(
      resourceType: 'PaymentReconciliation',
      id: id ?? await fhirDb.newResourceId('PaymentReconciliation'),
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
      status: status,
      elementStatus: elementStatus,
      period: period,
      created: created,
      elementCreated: elementCreated,
      paymentIssuer: paymentIssuer,
      request: request,
      requestor: requestor,
      outcome: outcome,
      elementOutcome: elementOutcome,
      disposition: disposition,
      elementDisposition: elementDisposition,
      paymentDate: paymentDate,
      elementPaymentDate: elementPaymentDate,
      paymentAmount: paymentAmount,
      paymentIdentifier: paymentIdentifier,
      detail: detail,
      formCode: formCode,
      processNote: processNote,
    );
    newPaymentReconciliation.meta.createdAt = DateTime.now();
    newPaymentReconciliation.meta.lastUpdated =
        newPaymentReconciliation.meta.createdAt;
    int saved = await fhirDb.saveResource(newPaymentReconciliation);
    return newPaymentReconciliation;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'PaymentReconciliation';
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
  String status;
  Element elementStatus;
  Period period;
  DateTime created;
  Element elementCreated;
  Reference paymentIssuer;
  Reference request;
  Reference requestor;
  String outcome;
  Element elementOutcome;
  String disposition;
  Element elementDisposition;
  String paymentDate;
  Element elementPaymentDate;
  Money paymentAmount;
  Identifier paymentIdentifier;
  List<PaymentReconciliation_Detail> detail;
  CodeableConcept formCode;
  List<PaymentReconciliation_ProcessNote> processNote;

  PaymentReconciliation({
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
    this.status,
    this.elementStatus,
    this.period,
    this.created,
    this.elementCreated,
    this.paymentIssuer,
    this.request,
    this.requestor,
    this.outcome,
    this.elementOutcome,
    this.disposition,
    this.elementDisposition,
    this.paymentDate,
    this.elementPaymentDate,
    @required this.paymentAmount,
    this.paymentIdentifier,
    this.detail,
    this.formCode,
    this.processNote,
  });

  factory PaymentReconciliation.fromJson(Map<String, dynamic> json) =>
      _$PaymentReconciliationFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentReconciliationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaymentReconciliation_Detail {
  static Future<PaymentReconciliation_Detail> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Identifier identifier,
    Identifier predecessor,
    CodeableConcept type,
    Reference request,
    Reference submitter,
    Reference response,
    String date,
    Element elementDate,
    Reference responsible,
    Reference payee,
    Money amount,
  }) async {
    var fhirDb = new DatabaseHelper();
    PaymentReconciliation_Detail newPaymentReconciliation_Detail =
        new PaymentReconciliation_Detail(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      predecessor: predecessor,
      type: type,
      request: request,
      submitter: submitter,
      response: response,
      date: date,
      elementDate: elementDate,
      responsible: responsible,
      payee: payee,
      amount: amount,
    );
    return newPaymentReconciliation_Detail;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier identifier;
  Identifier predecessor;
  CodeableConcept type;
  Reference request;
  Reference submitter;
  Reference response;
  String date;
  Element elementDate;
  Reference responsible;
  Reference payee;
  Money amount;

  PaymentReconciliation_Detail({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.predecessor,
    @required this.type,
    this.request,
    this.submitter,
    this.response,
    this.date,
    this.elementDate,
    this.responsible,
    this.payee,
    this.amount,
  });

  factory PaymentReconciliation_Detail.fromJson(Map<String, dynamic> json) =>
      _$PaymentReconciliation_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentReconciliation_DetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaymentReconciliation_ProcessNote {
  static Future<PaymentReconciliation_ProcessNote> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String type,
    Element elementType,
    String text,
    Element elementText,
  }) async {
    var fhirDb = new DatabaseHelper();
    PaymentReconciliation_ProcessNote newPaymentReconciliation_ProcessNote =
        new PaymentReconciliation_ProcessNote(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      elementType: elementType,
      text: text,
      elementText: elementText,
    );
    return newPaymentReconciliation_ProcessNote;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element elementType;
  String text;
  Element elementText;

  PaymentReconciliation_ProcessNote({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.text,
    this.elementText,
  });

  factory PaymentReconciliation_ProcessNote.fromJson(
          Map<String, dynamic> json) =>
      _$PaymentReconciliation_ProcessNoteFromJson(json);
  Map<String, dynamic> toJson() =>
      _$PaymentReconciliation_ProcessNoteToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentReconciliation _$PaymentReconciliationFromJson(
    Map<String, dynamic> json) {
  return PaymentReconciliation(
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    elementCreated: json['elementCreated'] == null
        ? null
        : Element.fromJson(json['elementCreated'] as Map<String, dynamic>),
    paymentIssuer: json['paymentIssuer'] == null
        ? null
        : Reference.fromJson(json['paymentIssuer'] as Map<String, dynamic>),
    request: json['request'] == null
        ? null
        : Reference.fromJson(json['request'] as Map<String, dynamic>),
    requestor: json['requestor'] == null
        ? null
        : Reference.fromJson(json['requestor'] as Map<String, dynamic>),
    outcome: json['outcome'] as String,
    elementOutcome: json['elementOutcome'] == null
        ? null
        : Element.fromJson(json['elementOutcome'] as Map<String, dynamic>),
    disposition: json['disposition'] as String,
    elementDisposition: json['elementDisposition'] == null
        ? null
        : Element.fromJson(json['elementDisposition'] as Map<String, dynamic>),
    paymentDate: json['paymentDate'] as String,
    elementPaymentDate: json['elementPaymentDate'] == null
        ? null
        : Element.fromJson(json['elementPaymentDate'] as Map<String, dynamic>),
    paymentAmount: json['paymentAmount'] == null
        ? null
        : Money.fromJson(json['paymentAmount'] as Map<String, dynamic>),
    paymentIdentifier: json['paymentIdentifier'] == null
        ? null
        : Identifier.fromJson(
            json['paymentIdentifier'] as Map<String, dynamic>),
    detail: (json['detail'] as List)
        ?.map((e) => e == null
            ? null
            : PaymentReconciliation_Detail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    formCode: json['formCode'] == null
        ? null
        : CodeableConcept.fromJson(json['formCode'] as Map<String, dynamic>),
    processNote: (json['processNote'] as List)
        ?.map((e) => e == null
            ? null
            : PaymentReconciliation_ProcessNote.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PaymentReconciliationToJson(
        PaymentReconciliation instance) =>
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
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'period': instance.period?.toJson(),
      'created': instance.created?.toIso8601String(),
      'elementCreated': instance.elementCreated?.toJson(),
      'paymentIssuer': instance.paymentIssuer?.toJson(),
      'request': instance.request?.toJson(),
      'requestor': instance.requestor?.toJson(),
      'outcome': instance.outcome,
      'elementOutcome': instance.elementOutcome?.toJson(),
      'disposition': instance.disposition,
      'elementDisposition': instance.elementDisposition?.toJson(),
      'paymentDate': instance.paymentDate,
      'elementPaymentDate': instance.elementPaymentDate?.toJson(),
      'paymentAmount': instance.paymentAmount?.toJson(),
      'paymentIdentifier': instance.paymentIdentifier?.toJson(),
      'detail': instance.detail?.map((e) => e?.toJson())?.toList(),
      'formCode': instance.formCode?.toJson(),
      'processNote': instance.processNote?.map((e) => e?.toJson())?.toList(),
    };

PaymentReconciliation_Detail _$PaymentReconciliation_DetailFromJson(
    Map<String, dynamic> json) {
  return PaymentReconciliation_Detail(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    predecessor: json['predecessor'] == null
        ? null
        : Identifier.fromJson(json['predecessor'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    request: json['request'] == null
        ? null
        : Reference.fromJson(json['request'] as Map<String, dynamic>),
    submitter: json['submitter'] == null
        ? null
        : Reference.fromJson(json['submitter'] as Map<String, dynamic>),
    response: json['response'] == null
        ? null
        : Reference.fromJson(json['response'] as Map<String, dynamic>),
    date: json['date'] as String,
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    responsible: json['responsible'] == null
        ? null
        : Reference.fromJson(json['responsible'] as Map<String, dynamic>),
    payee: json['payee'] == null
        ? null
        : Reference.fromJson(json['payee'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Money.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PaymentReconciliation_DetailToJson(
        PaymentReconciliation_Detail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.toJson(),
      'predecessor': instance.predecessor?.toJson(),
      'type': instance.type?.toJson(),
      'request': instance.request?.toJson(),
      'submitter': instance.submitter?.toJson(),
      'response': instance.response?.toJson(),
      'date': instance.date,
      'elementDate': instance.elementDate?.toJson(),
      'responsible': instance.responsible?.toJson(),
      'payee': instance.payee?.toJson(),
      'amount': instance.amount?.toJson(),
    };

PaymentReconciliation_ProcessNote _$PaymentReconciliation_ProcessNoteFromJson(
    Map<String, dynamic> json) {
  return PaymentReconciliation_ProcessNote(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PaymentReconciliation_ProcessNoteToJson(
        PaymentReconciliation_ProcessNote instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
    };
