import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
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

  @HiveField(0)
  String resourceType = 'PaymentReconciliation';
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
  String status;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  Period period;
  @HiveField(15)
  DateTime created;
  @HiveField(16)
  Element elementCreated;
  @HiveField(17)
  Reference paymentIssuer;
  @HiveField(18)
  Reference request;
  @HiveField(19)
  Reference requestor;
  @HiveField(20)
  String outcome;
  @HiveField(21)
  Element elementOutcome;
  @HiveField(22)
  String disposition;
  @HiveField(23)
  Element elementDisposition;
  @HiveField(24)
  String paymentDate;
  @HiveField(25)
  Element elementPaymentDate;
  @HiveField(26)
  Money paymentAmount;
  @HiveField(27)
  Identifier paymentIdentifier;
  @HiveField(28)
  List<PaymentReconciliation_Detail> detail;
  @HiveField(29)
  CodeableConcept formCode;
  @HiveField(30)
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Identifier identifier;
  @HiveField(4)
  Identifier predecessor;
  @HiveField(5)
  CodeableConcept type;
  @HiveField(6)
  Reference request;
  @HiveField(7)
  Reference submitter;
  @HiveField(8)
  Reference response;
  @HiveField(9)
  String date;
  @HiveField(10)
  Element elementDate;
  @HiveField(11)
  Reference responsible;
  @HiveField(12)
  Reference payee;
  @HiveField(13)
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String type;
  @HiveField(4)
  Element elementType;
  @HiveField(5)
  String text;
  @HiveField(6)
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
    PaymentReconciliation instance) {
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
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('elementCreated', instance.elementCreated?.toJson());
  writeNotNull('paymentIssuer', instance.paymentIssuer?.toJson());
  writeNotNull('request', instance.request?.toJson());
  writeNotNull('requestor', instance.requestor?.toJson());
  writeNotNull('outcome', instance.outcome);
  writeNotNull('elementOutcome', instance.elementOutcome?.toJson());
  writeNotNull('disposition', instance.disposition);
  writeNotNull('elementDisposition', instance.elementDisposition?.toJson());
  writeNotNull('paymentDate', instance.paymentDate);
  writeNotNull('elementPaymentDate', instance.elementPaymentDate?.toJson());
  writeNotNull('paymentAmount', instance.paymentAmount?.toJson());
  writeNotNull('paymentIdentifier', instance.paymentIdentifier?.toJson());
  writeNotNull('detail', instance.detail?.map((e) => e?.toJson())?.toList());
  writeNotNull('formCode', instance.formCode?.toJson());
  writeNotNull(
      'processNote', instance.processNote?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    PaymentReconciliation_Detail instance) {
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
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('predecessor', instance.predecessor?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('request', instance.request?.toJson());
  writeNotNull('submitter', instance.submitter?.toJson());
  writeNotNull('response', instance.response?.toJson());
  writeNotNull('date', instance.date);
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('responsible', instance.responsible?.toJson());
  writeNotNull('payee', instance.payee?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  return val;
}

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
    PaymentReconciliation_ProcessNote instance) {
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
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('text', instance.text);
  writeNotNull('elementText', instance.elementText?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PaymentReconciliationAdapter extends TypeAdapter<PaymentReconciliation> {
  @override
  PaymentReconciliation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PaymentReconciliation(
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
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      period: fields[14] as Period,
      created: fields[15] as DateTime,
      elementCreated: fields[16] as Element,
      paymentIssuer: fields[17] as Reference,
      request: fields[18] as Reference,
      requestor: fields[19] as Reference,
      outcome: fields[20] as String,
      elementOutcome: fields[21] as Element,
      disposition: fields[22] as String,
      elementDisposition: fields[23] as Element,
      paymentDate: fields[24] as String,
      elementPaymentDate: fields[25] as Element,
      paymentAmount: fields[26] as Money,
      paymentIdentifier: fields[27] as Identifier,
      detail: (fields[28] as List)?.cast<PaymentReconciliation_Detail>(),
      formCode: fields[29] as CodeableConcept,
      processNote:
          (fields[30] as List)?.cast<PaymentReconciliation_ProcessNote>(),
    );
  }

  @override
  void write(BinaryWriter writer, PaymentReconciliation obj) {
    writer
      ..writeByte(31)
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
      ..write(obj.period)
      ..writeByte(15)
      ..write(obj.created)
      ..writeByte(16)
      ..write(obj.elementCreated)
      ..writeByte(17)
      ..write(obj.paymentIssuer)
      ..writeByte(18)
      ..write(obj.request)
      ..writeByte(19)
      ..write(obj.requestor)
      ..writeByte(20)
      ..write(obj.outcome)
      ..writeByte(21)
      ..write(obj.elementOutcome)
      ..writeByte(22)
      ..write(obj.disposition)
      ..writeByte(23)
      ..write(obj.elementDisposition)
      ..writeByte(24)
      ..write(obj.paymentDate)
      ..writeByte(25)
      ..write(obj.elementPaymentDate)
      ..writeByte(26)
      ..write(obj.paymentAmount)
      ..writeByte(27)
      ..write(obj.paymentIdentifier)
      ..writeByte(28)
      ..write(obj.detail)
      ..writeByte(29)
      ..write(obj.formCode)
      ..writeByte(30)
      ..write(obj.processNote);
  }
}

class PaymentReconciliation_DetailAdapter
    extends TypeAdapter<PaymentReconciliation_Detail> {
  @override
  PaymentReconciliation_Detail read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PaymentReconciliation_Detail(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      identifier: fields[3] as Identifier,
      predecessor: fields[4] as Identifier,
      type: fields[5] as CodeableConcept,
      request: fields[6] as Reference,
      submitter: fields[7] as Reference,
      response: fields[8] as Reference,
      date: fields[9] as String,
      elementDate: fields[10] as Element,
      responsible: fields[11] as Reference,
      payee: fields[12] as Reference,
      amount: fields[13] as Money,
    );
  }

  @override
  void write(BinaryWriter writer, PaymentReconciliation_Detail obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.identifier)
      ..writeByte(4)
      ..write(obj.predecessor)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.request)
      ..writeByte(7)
      ..write(obj.submitter)
      ..writeByte(8)
      ..write(obj.response)
      ..writeByte(9)
      ..write(obj.date)
      ..writeByte(10)
      ..write(obj.elementDate)
      ..writeByte(11)
      ..write(obj.responsible)
      ..writeByte(12)
      ..write(obj.payee)
      ..writeByte(13)
      ..write(obj.amount);
  }
}

class PaymentReconciliation_ProcessNoteAdapter
    extends TypeAdapter<PaymentReconciliation_ProcessNote> {
  @override
  PaymentReconciliation_ProcessNote read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PaymentReconciliation_ProcessNote(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as String,
      elementType: fields[4] as Element,
      text: fields[5] as String,
      elementText: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, PaymentReconciliation_ProcessNote obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.elementType)
      ..writeByte(5)
      ..write(obj.text)
      ..writeByte(6)
      ..write(obj.elementText);
  }
}
