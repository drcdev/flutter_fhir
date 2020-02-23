import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class SupplyRequest {
  static Future<SupplyRequest> newInstance({
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
    CodeableConcept category,
    String priority,
    Element elementPriority,
    CodeableConcept itemCodeableConcept,
    Reference itemReference,
    Quantity quantity,
    List<SupplyRequest_Parameter> parameter,
    String occurrenceDateTime,
    Element elementOccurrenceDateTime,
    Period occurrencePeriod,
    Timing occurrenceTiming,
    DateTime authoredOn,
    Element elementAuthoredOn,
    Reference requester,
    List<Reference> supplier,
    List<CodeableConcept> reasonCode,
    List<Reference> reasonReference,
    Reference deliverFrom,
    Reference deliverTo,
  }) async {
    var fhirDb = new DatabaseHelper();
    SupplyRequest newSupplyRequest = new SupplyRequest(
      resourceType: 'SupplyRequest',
      id: id ?? await fhirDb.newResourceId('SupplyRequest'),
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
      category: category,
      priority: priority,
      elementPriority: elementPriority,
      itemCodeableConcept: itemCodeableConcept,
      itemReference: itemReference,
      quantity: quantity,
      parameter: parameter,
      occurrenceDateTime: occurrenceDateTime,
      elementOccurrenceDateTime: elementOccurrenceDateTime,
      occurrencePeriod: occurrencePeriod,
      occurrenceTiming: occurrenceTiming,
      authoredOn: authoredOn,
      elementAuthoredOn: elementAuthoredOn,
      requester: requester,
      supplier: supplier,
      reasonCode: reasonCode,
      reasonReference: reasonReference,
      deliverFrom: deliverFrom,
      deliverTo: deliverTo,
    );
    newSupplyRequest.meta.createdAt = DateTime.now();
    newSupplyRequest.meta.lastUpdated = newSupplyRequest.meta.createdAt;
    int saved = await fhirDb.saveResource(newSupplyRequest);
    return newSupplyRequest;
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
  String resourceType = 'SupplyRequest';
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
  CodeableConcept category;
  @HiveField(15)
  String priority;
  @HiveField(16)
  Element elementPriority;
  @HiveField(17)
  CodeableConcept itemCodeableConcept;
  @HiveField(18)
  Reference itemReference;
  @HiveField(19)
  Quantity quantity;
  @HiveField(20)
  List<SupplyRequest_Parameter> parameter;
  @HiveField(21)
  String occurrenceDateTime;
  @HiveField(22)
  Element elementOccurrenceDateTime;
  @HiveField(23)
  Period occurrencePeriod;
  @HiveField(24)
  Timing occurrenceTiming;
  @HiveField(25)
  DateTime authoredOn;
  @HiveField(26)
  Element elementAuthoredOn;
  @HiveField(27)
  Reference requester;
  @HiveField(28)
  List<Reference> supplier;
  @HiveField(29)
  List<CodeableConcept> reasonCode;
  @HiveField(30)
  List<Reference> reasonReference;
  @HiveField(31)
  Reference deliverFrom;
  @HiveField(32)
  Reference deliverTo;

  SupplyRequest({
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
    this.category,
    this.priority,
    this.elementPriority,
    this.itemCodeableConcept,
    this.itemReference,
    @required this.quantity,
    this.parameter,
    this.occurrenceDateTime,
    this.elementOccurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.authoredOn,
    this.elementAuthoredOn,
    this.requester,
    this.supplier,
    this.reasonCode,
    this.reasonReference,
    this.deliverFrom,
    this.deliverTo,
  });

  factory SupplyRequest.fromJson(Map<String, dynamic> json) =>
      _$SupplyRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SupplyRequestToJson(this);
}

class SupplyRequest_Parameter {
  static Future<SupplyRequest_Parameter> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    CodeableConcept valueCodeableConcept,
    Quantity valueQuantity,
    Range valueRange,
    bool valueBoolean,
    Element elementValueBoolean,
  }) async {
    var fhirDb = new DatabaseHelper();
    SupplyRequest_Parameter newSupplyRequest_Parameter =
        new SupplyRequest_Parameter(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      valueCodeableConcept: valueCodeableConcept,
      valueQuantity: valueQuantity,
      valueRange: valueRange,
      valueBoolean: valueBoolean,
      elementValueBoolean: elementValueBoolean,
    );
    return newSupplyRequest_Parameter;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept code;
  @HiveField(4)
  CodeableConcept valueCodeableConcept;
  @HiveField(5)
  Quantity valueQuantity;
  @HiveField(6)
  Range valueRange;
  @HiveField(7)
  bool valueBoolean;
  @HiveField(8)
  Element elementValueBoolean;

  SupplyRequest_Parameter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    this.valueBoolean,
    this.elementValueBoolean,
  });

  factory SupplyRequest_Parameter.fromJson(Map<String, dynamic> json) =>
      _$SupplyRequest_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$SupplyRequest_ParameterToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SupplyRequest _$SupplyRequestFromJson(Map<String, dynamic> json) {
  return SupplyRequest(
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
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    priority: json['priority'] as String,
    elementPriority: json['elementPriority'] == null
        ? null
        : Element.fromJson(json['elementPriority'] as Map<String, dynamic>),
    itemCodeableConcept: json['itemCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['itemCodeableConcept'] as Map<String, dynamic>),
    itemReference: json['itemReference'] == null
        ? null
        : Reference.fromJson(json['itemReference'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : SupplyRequest_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    authoredOn: json['authoredOn'] == null
        ? null
        : DateTime.parse(json['authoredOn'] as String),
    elementAuthoredOn: json['elementAuthoredOn'] == null
        ? null
        : Element.fromJson(json['elementAuthoredOn'] as Map<String, dynamic>),
    requester: json['requester'] == null
        ? null
        : Reference.fromJson(json['requester'] as Map<String, dynamic>),
    supplier: (json['supplier'] as List)
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
    deliverFrom: json['deliverFrom'] == null
        ? null
        : Reference.fromJson(json['deliverFrom'] as Map<String, dynamic>),
    deliverTo: json['deliverTo'] == null
        ? null
        : Reference.fromJson(json['deliverTo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SupplyRequestToJson(SupplyRequest instance) {
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
  writeNotNull('category', instance.category?.toJson());
  writeNotNull('priority', instance.priority);
  writeNotNull('elementPriority', instance.elementPriority?.toJson());
  writeNotNull('itemCodeableConcept', instance.itemCodeableConcept?.toJson());
  writeNotNull('itemReference', instance.itemReference?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull(
      'parameter', instance.parameter?.map((e) => e?.toJson())?.toList());
  writeNotNull('occurrenceDateTime', instance.occurrenceDateTime);
  writeNotNull('elementOccurrenceDateTime',
      instance.elementOccurrenceDateTime?.toJson());
  writeNotNull('occurrencePeriod', instance.occurrencePeriod?.toJson());
  writeNotNull('occurrenceTiming', instance.occurrenceTiming?.toJson());
  writeNotNull('authoredOn', instance.authoredOn?.toIso8601String());
  writeNotNull('elementAuthoredOn', instance.elementAuthoredOn?.toJson());
  writeNotNull('requester', instance.requester?.toJson());
  writeNotNull(
      'supplier', instance.supplier?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'reasonCode', instance.reasonCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('reasonReference',
      instance.reasonReference?.map((e) => e?.toJson())?.toList());
  writeNotNull('deliverFrom', instance.deliverFrom?.toJson());
  writeNotNull('deliverTo', instance.deliverTo?.toJson());
  return val;
}

SupplyRequest_Parameter _$SupplyRequest_ParameterFromJson(
    Map<String, dynamic> json) {
  return SupplyRequest_Parameter(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    valueCodeableConcept: json['valueCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['valueCodeableConcept'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueRange: json['valueRange'] == null
        ? null
        : Range.fromJson(json['valueRange'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SupplyRequest_ParameterToJson(
    SupplyRequest_Parameter instance) {
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
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('valueCodeableConcept', instance.valueCodeableConcept?.toJson());
  writeNotNull('valueQuantity', instance.valueQuantity?.toJson());
  writeNotNull('valueRange', instance.valueRange?.toJson());
  writeNotNull('valueBoolean', instance.valueBoolean);
  writeNotNull('elementValueBoolean', instance.elementValueBoolean?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SupplyRequestAdapter extends TypeAdapter<SupplyRequest> {
  @override
  SupplyRequest read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SupplyRequest(
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
      category: fields[14] as CodeableConcept,
      priority: fields[15] as String,
      elementPriority: fields[16] as Element,
      itemCodeableConcept: fields[17] as CodeableConcept,
      itemReference: fields[18] as Reference,
      quantity: fields[19] as Quantity,
      parameter: (fields[20] as List)?.cast<SupplyRequest_Parameter>(),
      occurrenceDateTime: fields[21] as String,
      elementOccurrenceDateTime: fields[22] as Element,
      occurrencePeriod: fields[23] as Period,
      occurrenceTiming: fields[24] as Timing,
      authoredOn: fields[25] as DateTime,
      elementAuthoredOn: fields[26] as Element,
      requester: fields[27] as Reference,
      supplier: (fields[28] as List)?.cast<Reference>(),
      reasonCode: (fields[29] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[30] as List)?.cast<Reference>(),
      deliverFrom: fields[31] as Reference,
      deliverTo: fields[32] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, SupplyRequest obj) {
    writer
      ..writeByte(33)
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
      ..write(obj.category)
      ..writeByte(15)
      ..write(obj.priority)
      ..writeByte(16)
      ..write(obj.elementPriority)
      ..writeByte(17)
      ..write(obj.itemCodeableConcept)
      ..writeByte(18)
      ..write(obj.itemReference)
      ..writeByte(19)
      ..write(obj.quantity)
      ..writeByte(20)
      ..write(obj.parameter)
      ..writeByte(21)
      ..write(obj.occurrenceDateTime)
      ..writeByte(22)
      ..write(obj.elementOccurrenceDateTime)
      ..writeByte(23)
      ..write(obj.occurrencePeriod)
      ..writeByte(24)
      ..write(obj.occurrenceTiming)
      ..writeByte(25)
      ..write(obj.authoredOn)
      ..writeByte(26)
      ..write(obj.elementAuthoredOn)
      ..writeByte(27)
      ..write(obj.requester)
      ..writeByte(28)
      ..write(obj.supplier)
      ..writeByte(29)
      ..write(obj.reasonCode)
      ..writeByte(30)
      ..write(obj.reasonReference)
      ..writeByte(31)
      ..write(obj.deliverFrom)
      ..writeByte(32)
      ..write(obj.deliverTo);
  }
}

class SupplyRequest_ParameterAdapter
    extends TypeAdapter<SupplyRequest_Parameter> {
  @override
  SupplyRequest_Parameter read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SupplyRequest_Parameter(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      valueCodeableConcept: fields[4] as CodeableConcept,
      valueQuantity: fields[5] as Quantity,
      valueRange: fields[6] as Range,
      valueBoolean: fields[7] as bool,
      elementValueBoolean: fields[8] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SupplyRequest_Parameter obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.valueCodeableConcept)
      ..writeByte(5)
      ..write(obj.valueQuantity)
      ..writeByte(6)
      ..write(obj.valueRange)
      ..writeByte(7)
      ..write(obj.valueBoolean)
      ..writeByte(8)
      ..write(obj.elementValueBoolean);
  }
}
