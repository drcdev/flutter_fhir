import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class Coverage {
  static Future<Coverage> newInstance({
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
    CodeableConcept type,
    Reference policyHolder,
    Reference subscriber,
    String subscriberId,
    Element elementSubscriberId,
    Reference beneficiary,
    String dependent,
    Element elementDependent,
    CodeableConcept relationship,
    Period period,
    List<Reference> payor,
    List<Coverage_Class> classs,
    int order,
    Element elementOrder,
    String network,
    Element elementNetwork,
    List<Coverage_CostToBeneficiary> costToBeneficiary,
    bool subrogation,
    Element elementSubrogation,
    List<Reference> contract,
  }) async {
    var fhirDb = new DatabaseHelper();
    Coverage newCoverage = new Coverage(
      resourceType: 'Coverage',
      id: id ?? await fhirDb.newResourceId('Coverage'),
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
      type: type,
      policyHolder: policyHolder,
      subscriber: subscriber,
      subscriberId: subscriberId,
      elementSubscriberId: elementSubscriberId,
      beneficiary: beneficiary,
      dependent: dependent,
      elementDependent: elementDependent,
      relationship: relationship,
      period: period,
      payor: payor,
      classs: classs,
      order: order,
      elementOrder: elementOrder,
      network: network,
      elementNetwork: elementNetwork,
      costToBeneficiary: costToBeneficiary,
      subrogation: subrogation,
      elementSubrogation: elementSubrogation,
      contract: contract,
    );
    newCoverage.meta.createdAt = DateTime.now();
    newCoverage.meta.lastUpdated = newCoverage.meta.createdAt;
    int saved = await fhirDb.saveResource(newCoverage);
    return newCoverage;
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
  String resourceType = 'Coverage';
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
  CodeableConcept type;
  @HiveField(15)
  Reference policyHolder;
  @HiveField(16)
  Reference subscriber;
  @HiveField(17)
  String subscriberId;
  @HiveField(18)
  Element elementSubscriberId;
  @HiveField(19)
  Reference beneficiary;
  @HiveField(20)
  String dependent;
  @HiveField(21)
  Element elementDependent;
  @HiveField(22)
  CodeableConcept relationship;
  @HiveField(23)
  Period period;
  @HiveField(24)
  List<Reference> payor;
  @HiveField(25)
  List<Coverage_Class> classs;
  @HiveField(26)
  int order;
  @HiveField(27)
  Element elementOrder;
  @HiveField(28)
  String network;
  @HiveField(29)
  Element elementNetwork;
  @HiveField(30)
  List<Coverage_CostToBeneficiary> costToBeneficiary;
  @HiveField(31)
  bool subrogation;
  @HiveField(32)
  Element elementSubrogation;
  @HiveField(33)
  List<Reference> contract;

  Coverage({
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
    this.type,
    this.policyHolder,
    this.subscriber,
    this.subscriberId,
    this.elementSubscriberId,
    @required this.beneficiary,
    this.dependent,
    this.elementDependent,
    this.relationship,
    this.period,
    @required this.payor,
    this.classs,
    this.order,
    this.elementOrder,
    this.network,
    this.elementNetwork,
    this.costToBeneficiary,
    this.subrogation,
    this.elementSubrogation,
    this.contract,
  });

  factory Coverage.fromJson(Map<String, dynamic> json) =>
      _$CoverageFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageToJson(this);
}

class Coverage_Class {
  static Future<Coverage_Class> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    String value,
    Element elementValue,
    String name,
    Element elementName,
  }) async {
    var fhirDb = new DatabaseHelper();
    Coverage_Class newCoverage_Class = new Coverage_Class(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      value: value,
      elementValue: elementValue,
      name: name,
      elementName: elementName,
    );
    return newCoverage_Class;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept type;
  @HiveField(4)
  String value;
  @HiveField(5)
  Element elementValue;
  @HiveField(6)
  String name;
  @HiveField(7)
  Element elementName;

  Coverage_Class({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.value,
    this.elementValue,
    this.name,
    this.elementName,
  });

  factory Coverage_Class.fromJson(Map<String, dynamic> json) =>
      _$Coverage_ClassFromJson(json);
  Map<String, dynamic> toJson() => _$Coverage_ClassToJson(this);
}

class Coverage_CostToBeneficiary {
  static Future<Coverage_CostToBeneficiary> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    Quantity valueQuantity,
    Money valueMoney,
    List<Coverage_Exception> exception,
  }) async {
    var fhirDb = new DatabaseHelper();
    Coverage_CostToBeneficiary newCoverage_CostToBeneficiary =
        new Coverage_CostToBeneficiary(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      valueQuantity: valueQuantity,
      valueMoney: valueMoney,
      exception: exception,
    );
    return newCoverage_CostToBeneficiary;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept type;
  @HiveField(4)
  Quantity valueQuantity;
  @HiveField(5)
  Money valueMoney;
  @HiveField(6)
  List<Coverage_Exception> exception;

  Coverage_CostToBeneficiary({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.valueQuantity,
    this.valueMoney,
    this.exception,
  });

  factory Coverage_CostToBeneficiary.fromJson(Map<String, dynamic> json) =>
      _$Coverage_CostToBeneficiaryFromJson(json);
  Map<String, dynamic> toJson() => _$Coverage_CostToBeneficiaryToJson(this);
}

class Coverage_Exception {
  static Future<Coverage_Exception> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    Period period,
  }) async {
    var fhirDb = new DatabaseHelper();
    Coverage_Exception newCoverage_Exception = new Coverage_Exception(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      period: period,
    );
    return newCoverage_Exception;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept type;
  @HiveField(4)
  Period period;

  Coverage_Exception({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.period,
  });

  factory Coverage_Exception.fromJson(Map<String, dynamic> json) =>
      _$Coverage_ExceptionFromJson(json);
  Map<String, dynamic> toJson() => _$Coverage_ExceptionToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coverage _$CoverageFromJson(Map<String, dynamic> json) {
  return Coverage(
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
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    policyHolder: json['policyHolder'] == null
        ? null
        : Reference.fromJson(json['policyHolder'] as Map<String, dynamic>),
    subscriber: json['subscriber'] == null
        ? null
        : Reference.fromJson(json['subscriber'] as Map<String, dynamic>),
    subscriberId: json['subscriberId'] as String,
    elementSubscriberId: json['elementSubscriberId'] == null
        ? null
        : Element.fromJson(json['elementSubscriberId'] as Map<String, dynamic>),
    beneficiary: json['beneficiary'] == null
        ? null
        : Reference.fromJson(json['beneficiary'] as Map<String, dynamic>),
    dependent: json['dependent'] as String,
    elementDependent: json['elementDependent'] == null
        ? null
        : Element.fromJson(json['elementDependent'] as Map<String, dynamic>),
    relationship: json['relationship'] == null
        ? null
        : CodeableConcept.fromJson(
            json['relationship'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    payor: (json['payor'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    classs: (json['classs'] as List)
        ?.map((e) => e == null
            ? null
            : Coverage_Class.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    order: json['order'] as int,
    elementOrder: json['elementOrder'] == null
        ? null
        : Element.fromJson(json['elementOrder'] as Map<String, dynamic>),
    network: json['network'] as String,
    elementNetwork: json['elementNetwork'] == null
        ? null
        : Element.fromJson(json['elementNetwork'] as Map<String, dynamic>),
    costToBeneficiary: (json['costToBeneficiary'] as List)
        ?.map((e) => e == null
            ? null
            : Coverage_CostToBeneficiary.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subrogation: json['subrogation'] as bool,
    elementSubrogation: json['elementSubrogation'] == null
        ? null
        : Element.fromJson(json['elementSubrogation'] as Map<String, dynamic>),
    contract: (json['contract'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CoverageToJson(Coverage instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('policyHolder', instance.policyHolder?.toJson());
  writeNotNull('subscriber', instance.subscriber?.toJson());
  writeNotNull('subscriberId', instance.subscriberId);
  writeNotNull('elementSubscriberId', instance.elementSubscriberId?.toJson());
  writeNotNull('beneficiary', instance.beneficiary?.toJson());
  writeNotNull('dependent', instance.dependent);
  writeNotNull('elementDependent', instance.elementDependent?.toJson());
  writeNotNull('relationship', instance.relationship?.toJson());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('payor', instance.payor?.map((e) => e?.toJson())?.toList());
  writeNotNull('classs', instance.classs?.map((e) => e?.toJson())?.toList());
  writeNotNull('order', instance.order);
  writeNotNull('elementOrder', instance.elementOrder?.toJson());
  writeNotNull('network', instance.network);
  writeNotNull('elementNetwork', instance.elementNetwork?.toJson());
  writeNotNull('costToBeneficiary',
      instance.costToBeneficiary?.map((e) => e?.toJson())?.toList());
  writeNotNull('subrogation', instance.subrogation);
  writeNotNull('elementSubrogation', instance.elementSubrogation?.toJson());
  writeNotNull(
      'contract', instance.contract?.map((e) => e?.toJson())?.toList());
  return val;
}

Coverage_Class _$Coverage_ClassFromJson(Map<String, dynamic> json) {
  return Coverage_Class(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Coverage_ClassToJson(Coverage_Class instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('value', instance.value);
  writeNotNull('elementValue', instance.elementValue?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  return val;
}

Coverage_CostToBeneficiary _$Coverage_CostToBeneficiaryFromJson(
    Map<String, dynamic> json) {
  return Coverage_CostToBeneficiary(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueMoney: json['valueMoney'] == null
        ? null
        : Money.fromJson(json['valueMoney'] as Map<String, dynamic>),
    exception: (json['exception'] as List)
        ?.map((e) => e == null
            ? null
            : Coverage_Exception.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Coverage_CostToBeneficiaryToJson(
    Coverage_CostToBeneficiary instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('valueQuantity', instance.valueQuantity?.toJson());
  writeNotNull('valueMoney', instance.valueMoney?.toJson());
  writeNotNull(
      'exception', instance.exception?.map((e) => e?.toJson())?.toList());
  return val;
}

Coverage_Exception _$Coverage_ExceptionFromJson(Map<String, dynamic> json) {
  return Coverage_Exception(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Coverage_ExceptionToJson(Coverage_Exception instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('period', instance.period?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoverageAdapter extends TypeAdapter<Coverage> {
  @override
  Coverage read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Coverage(
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
      type: fields[14] as CodeableConcept,
      policyHolder: fields[15] as Reference,
      subscriber: fields[16] as Reference,
      subscriberId: fields[17] as String,
      elementSubscriberId: fields[18] as Element,
      beneficiary: fields[19] as Reference,
      dependent: fields[20] as String,
      elementDependent: fields[21] as Element,
      relationship: fields[22] as CodeableConcept,
      period: fields[23] as Period,
      payor: (fields[24] as List)?.cast<Reference>(),
      classs: (fields[25] as List)?.cast<Coverage_Class>(),
      order: fields[26] as int,
      elementOrder: fields[27] as Element,
      network: fields[28] as String,
      elementNetwork: fields[29] as Element,
      costToBeneficiary:
          (fields[30] as List)?.cast<Coverage_CostToBeneficiary>(),
      subrogation: fields[31] as bool,
      elementSubrogation: fields[32] as Element,
      contract: (fields[33] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, Coverage obj) {
    writer
      ..writeByte(34)
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
      ..write(obj.type)
      ..writeByte(15)
      ..write(obj.policyHolder)
      ..writeByte(16)
      ..write(obj.subscriber)
      ..writeByte(17)
      ..write(obj.subscriberId)
      ..writeByte(18)
      ..write(obj.elementSubscriberId)
      ..writeByte(19)
      ..write(obj.beneficiary)
      ..writeByte(20)
      ..write(obj.dependent)
      ..writeByte(21)
      ..write(obj.elementDependent)
      ..writeByte(22)
      ..write(obj.relationship)
      ..writeByte(23)
      ..write(obj.period)
      ..writeByte(24)
      ..write(obj.payor)
      ..writeByte(25)
      ..write(obj.classs)
      ..writeByte(26)
      ..write(obj.order)
      ..writeByte(27)
      ..write(obj.elementOrder)
      ..writeByte(28)
      ..write(obj.network)
      ..writeByte(29)
      ..write(obj.elementNetwork)
      ..writeByte(30)
      ..write(obj.costToBeneficiary)
      ..writeByte(31)
      ..write(obj.subrogation)
      ..writeByte(32)
      ..write(obj.elementSubrogation)
      ..writeByte(33)
      ..write(obj.contract);
  }
}

class Coverage_ClassAdapter extends TypeAdapter<Coverage_Class> {
  @override
  Coverage_Class read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Coverage_Class(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      value: fields[4] as String,
      elementValue: fields[5] as Element,
      name: fields[6] as String,
      elementName: fields[7] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Coverage_Class obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.value)
      ..writeByte(5)
      ..write(obj.elementValue)
      ..writeByte(6)
      ..write(obj.name)
      ..writeByte(7)
      ..write(obj.elementName);
  }
}

class Coverage_CostToBeneficiaryAdapter
    extends TypeAdapter<Coverage_CostToBeneficiary> {
  @override
  Coverage_CostToBeneficiary read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Coverage_CostToBeneficiary(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      valueQuantity: fields[4] as Quantity,
      valueMoney: fields[5] as Money,
      exception: (fields[6] as List)?.cast<Coverage_Exception>(),
    );
  }

  @override
  void write(BinaryWriter writer, Coverage_CostToBeneficiary obj) {
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
      ..write(obj.valueQuantity)
      ..writeByte(5)
      ..write(obj.valueMoney)
      ..writeByte(6)
      ..write(obj.exception);
  }
}

class Coverage_ExceptionAdapter extends TypeAdapter<Coverage_Exception> {
  @override
  Coverage_Exception read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Coverage_Exception(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      period: fields[4] as Period,
    );
  }

  @override
  void write(BinaryWriter writer, Coverage_Exception obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.period);
  }
}
