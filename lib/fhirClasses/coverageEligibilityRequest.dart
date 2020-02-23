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

class CoverageEligibilityRequest {
  static Future<CoverageEligibilityRequest> newInstance({
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
    CodeableConcept priority,
    String purpose,
    List<Element> elementPurpose,
    Reference patient,
    String servicedDate,
    Element elementServicedDate,
    Period servicedPeriod,
    DateTime created,
    Element elementCreated,
    Reference enterer,
    Reference provider,
    Reference insurer,
    Reference facility,
    List<CoverageEligibilityRequest_SupportingInfo> supportingInfo,
    List<CoverageEligibilityRequest_Insurance> insurance,
    List<CoverageEligibilityRequest_Item> item,
  }) async {
    var fhirDb = new DatabaseHelper();
    CoverageEligibilityRequest newCoverageEligibilityRequest =
        new CoverageEligibilityRequest(
      resourceType: 'CoverageEligibilityRequest',
      id: id ?? await fhirDb.newResourceId('CoverageEligibilityRequest'),
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
      priority: priority,
      purpose: purpose,
      elementPurpose: elementPurpose,
      patient: patient,
      servicedDate: servicedDate,
      elementServicedDate: elementServicedDate,
      servicedPeriod: servicedPeriod,
      created: created,
      elementCreated: elementCreated,
      enterer: enterer,
      provider: provider,
      insurer: insurer,
      facility: facility,
      supportingInfo: supportingInfo,
      insurance: insurance,
      item: item,
    );
    newCoverageEligibilityRequest.meta.createdAt = DateTime.now();
    newCoverageEligibilityRequest.meta.lastUpdated =
        newCoverageEligibilityRequest.meta.createdAt;
    int saved = await fhirDb.saveResource(newCoverageEligibilityRequest);
    return newCoverageEligibilityRequest;
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
  String resourceType = 'CoverageEligibilityRequest';
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
  CodeableConcept priority;
  @HiveField(15)
  String purpose;
  @HiveField(16)
  List<Element> elementPurpose;
  @HiveField(17)
  Reference patient;
  @HiveField(18)
  String servicedDate;
  @HiveField(19)
  Element elementServicedDate;
  @HiveField(20)
  Period servicedPeriod;
  @HiveField(21)
  DateTime created;
  @HiveField(22)
  Element elementCreated;
  @HiveField(23)
  Reference enterer;
  @HiveField(24)
  Reference provider;
  @HiveField(25)
  Reference insurer;
  @HiveField(26)
  Reference facility;
  @HiveField(27)
  List<CoverageEligibilityRequest_SupportingInfo> supportingInfo;
  @HiveField(28)
  List<CoverageEligibilityRequest_Insurance> insurance;
  @HiveField(29)
  List<CoverageEligibilityRequest_Item> item;

  CoverageEligibilityRequest({
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
    this.priority,
    this.purpose,
    this.elementPurpose,
    @required this.patient,
    this.servicedDate,
    this.elementServicedDate,
    this.servicedPeriod,
    this.created,
    this.elementCreated,
    this.enterer,
    this.provider,
    @required this.insurer,
    this.facility,
    this.supportingInfo,
    this.insurance,
    this.item,
  });

  factory CoverageEligibilityRequest.fromJson(Map<String, dynamic> json) =>
      _$CoverageEligibilityRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequestToJson(this);
}

class CoverageEligibilityRequest_SupportingInfo {
  static Future<CoverageEligibilityRequest_SupportingInfo> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    int sequence,
    Element elementSequence,
    Reference information,
    bool appliesToAll,
    Element elementAppliesToAll,
  }) async {
    var fhirDb = new DatabaseHelper();
    CoverageEligibilityRequest_SupportingInfo
        newCoverageEligibilityRequest_SupportingInfo =
        new CoverageEligibilityRequest_SupportingInfo(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      sequence: sequence,
      elementSequence: elementSequence,
      information: information,
      appliesToAll: appliesToAll,
      elementAppliesToAll: elementAppliesToAll,
    );
    return newCoverageEligibilityRequest_SupportingInfo;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  int sequence;
  @HiveField(4)
  Element elementSequence;
  @HiveField(5)
  Reference information;
  @HiveField(6)
  bool appliesToAll;
  @HiveField(7)
  Element elementAppliesToAll;

  CoverageEligibilityRequest_SupportingInfo({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    @required this.information,
    this.appliesToAll,
    this.elementAppliesToAll,
  });

  factory CoverageEligibilityRequest_SupportingInfo.fromJson(
          Map<String, dynamic> json) =>
      _$CoverageEligibilityRequest_SupportingInfoFromJson(json);
  Map<String, dynamic> toJson() =>
      _$CoverageEligibilityRequest_SupportingInfoToJson(this);
}

class CoverageEligibilityRequest_Insurance {
  static Future<CoverageEligibilityRequest_Insurance> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    bool focal,
    Element elementFocal,
    Reference coverage,
    String businessArrangement,
    Element elementBusinessArrangement,
  }) async {
    var fhirDb = new DatabaseHelper();
    CoverageEligibilityRequest_Insurance
        newCoverageEligibilityRequest_Insurance =
        new CoverageEligibilityRequest_Insurance(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      focal: focal,
      elementFocal: elementFocal,
      coverage: coverage,
      businessArrangement: businessArrangement,
      elementBusinessArrangement: elementBusinessArrangement,
    );
    return newCoverageEligibilityRequest_Insurance;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  bool focal;
  @HiveField(4)
  Element elementFocal;
  @HiveField(5)
  Reference coverage;
  @HiveField(6)
  String businessArrangement;
  @HiveField(7)
  Element elementBusinessArrangement;

  CoverageEligibilityRequest_Insurance({
    this.id,
    this.extension,
    this.modifierExtension,
    this.focal,
    this.elementFocal,
    @required this.coverage,
    this.businessArrangement,
    this.elementBusinessArrangement,
  });

  factory CoverageEligibilityRequest_Insurance.fromJson(
          Map<String, dynamic> json) =>
      _$CoverageEligibilityRequest_InsuranceFromJson(json);
  Map<String, dynamic> toJson() =>
      _$CoverageEligibilityRequest_InsuranceToJson(this);
}

class CoverageEligibilityRequest_Item {
  static Future<CoverageEligibilityRequest_Item> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<int> supportingInfoSequence,
    List<Element> elementSupportingInfoSequence,
    CodeableConcept category,
    CodeableConcept productOrService,
    List<CodeableConcept> modifier,
    Reference provider,
    Quantity quantity,
    Money unitPrice,
    Reference facility,
    List<CoverageEligibilityRequest_Diagnosis> diagnosis,
    List<Reference> detail,
  }) async {
    var fhirDb = new DatabaseHelper();
    CoverageEligibilityRequest_Item newCoverageEligibilityRequest_Item =
        new CoverageEligibilityRequest_Item(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      supportingInfoSequence: supportingInfoSequence,
      elementSupportingInfoSequence: elementSupportingInfoSequence,
      category: category,
      productOrService: productOrService,
      modifier: modifier,
      provider: provider,
      quantity: quantity,
      unitPrice: unitPrice,
      facility: facility,
      diagnosis: diagnosis,
      detail: detail,
    );
    return newCoverageEligibilityRequest_Item;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<int> supportingInfoSequence;
  @HiveField(4)
  List<Element> elementSupportingInfoSequence;
  @HiveField(5)
  CodeableConcept category;
  @HiveField(6)
  CodeableConcept productOrService;
  @HiveField(7)
  List<CodeableConcept> modifier;
  @HiveField(8)
  Reference provider;
  @HiveField(9)
  Quantity quantity;
  @HiveField(10)
  Money unitPrice;
  @HiveField(11)
  Reference facility;
  @HiveField(12)
  List<CoverageEligibilityRequest_Diagnosis> diagnosis;
  @HiveField(13)
  List<Reference> detail;

  CoverageEligibilityRequest_Item({
    this.id,
    this.extension,
    this.modifierExtension,
    this.supportingInfoSequence,
    this.elementSupportingInfoSequence,
    this.category,
    this.productOrService,
    this.modifier,
    this.provider,
    this.quantity,
    this.unitPrice,
    this.facility,
    this.diagnosis,
    this.detail,
  });

  factory CoverageEligibilityRequest_Item.fromJson(Map<String, dynamic> json) =>
      _$CoverageEligibilityRequest_ItemFromJson(json);
  Map<String, dynamic> toJson() =>
      _$CoverageEligibilityRequest_ItemToJson(this);
}

class CoverageEligibilityRequest_Diagnosis {
  static Future<CoverageEligibilityRequest_Diagnosis> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept diagnosisCodeableConcept,
    Reference diagnosisReference,
  }) async {
    var fhirDb = new DatabaseHelper();
    CoverageEligibilityRequest_Diagnosis
        newCoverageEligibilityRequest_Diagnosis =
        new CoverageEligibilityRequest_Diagnosis(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      diagnosisCodeableConcept: diagnosisCodeableConcept,
      diagnosisReference: diagnosisReference,
    );
    return newCoverageEligibilityRequest_Diagnosis;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept diagnosisCodeableConcept;
  @HiveField(4)
  Reference diagnosisReference;

  CoverageEligibilityRequest_Diagnosis({
    this.id,
    this.extension,
    this.modifierExtension,
    this.diagnosisCodeableConcept,
    this.diagnosisReference,
  });

  factory CoverageEligibilityRequest_Diagnosis.fromJson(
          Map<String, dynamic> json) =>
      _$CoverageEligibilityRequest_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() =>
      _$CoverageEligibilityRequest_DiagnosisToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoverageEligibilityRequest _$CoverageEligibilityRequestFromJson(
    Map<String, dynamic> json) {
  return CoverageEligibilityRequest(
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
    priority: json['priority'] == null
        ? null
        : CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>),
    purpose: json['purpose'] as String,
    elementPurpose: (json['elementPurpose'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    servicedDate: json['servicedDate'] as String,
    elementServicedDate: json['elementServicedDate'] == null
        ? null
        : Element.fromJson(json['elementServicedDate'] as Map<String, dynamic>),
    servicedPeriod: json['servicedPeriod'] == null
        ? null
        : Period.fromJson(json['servicedPeriod'] as Map<String, dynamic>),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    elementCreated: json['elementCreated'] == null
        ? null
        : Element.fromJson(json['elementCreated'] as Map<String, dynamic>),
    enterer: json['enterer'] == null
        ? null
        : Reference.fromJson(json['enterer'] as Map<String, dynamic>),
    provider: json['provider'] == null
        ? null
        : Reference.fromJson(json['provider'] as Map<String, dynamic>),
    insurer: json['insurer'] == null
        ? null
        : Reference.fromJson(json['insurer'] as Map<String, dynamic>),
    facility: json['facility'] == null
        ? null
        : Reference.fromJson(json['facility'] as Map<String, dynamic>),
    supportingInfo: (json['supportingInfo'] as List)
        ?.map((e) => e == null
            ? null
            : CoverageEligibilityRequest_SupportingInfo.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    insurance: (json['insurance'] as List)
        ?.map((e) => e == null
            ? null
            : CoverageEligibilityRequest_Insurance.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    item: (json['item'] as List)
        ?.map((e) => e == null
            ? null
            : CoverageEligibilityRequest_Item.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CoverageEligibilityRequestToJson(
    CoverageEligibilityRequest instance) {
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
  writeNotNull('priority', instance.priority?.toJson());
  writeNotNull('purpose', instance.purpose);
  writeNotNull('elementPurpose',
      instance.elementPurpose?.map((e) => e?.toJson())?.toList());
  writeNotNull('patient', instance.patient?.toJson());
  writeNotNull('servicedDate', instance.servicedDate);
  writeNotNull('elementServicedDate', instance.elementServicedDate?.toJson());
  writeNotNull('servicedPeriod', instance.servicedPeriod?.toJson());
  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('elementCreated', instance.elementCreated?.toJson());
  writeNotNull('enterer', instance.enterer?.toJson());
  writeNotNull('provider', instance.provider?.toJson());
  writeNotNull('insurer', instance.insurer?.toJson());
  writeNotNull('facility', instance.facility?.toJson());
  writeNotNull('supportingInfo',
      instance.supportingInfo?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'insurance', instance.insurance?.map((e) => e?.toJson())?.toList());
  writeNotNull('item', instance.item?.map((e) => e?.toJson())?.toList());
  return val;
}

CoverageEligibilityRequest_SupportingInfo
    _$CoverageEligibilityRequest_SupportingInfoFromJson(
        Map<String, dynamic> json) {
  return CoverageEligibilityRequest_SupportingInfo(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sequence: json['sequence'] as int,
    elementSequence: json['elementSequence'] == null
        ? null
        : Element.fromJson(json['elementSequence'] as Map<String, dynamic>),
    information: json['information'] == null
        ? null
        : Reference.fromJson(json['information'] as Map<String, dynamic>),
    appliesToAll: json['appliesToAll'] as bool,
    elementAppliesToAll: json['elementAppliesToAll'] == null
        ? null
        : Element.fromJson(json['elementAppliesToAll'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CoverageEligibilityRequest_SupportingInfoToJson(
    CoverageEligibilityRequest_SupportingInfo instance) {
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
  writeNotNull('sequence', instance.sequence);
  writeNotNull('elementSequence', instance.elementSequence?.toJson());
  writeNotNull('information', instance.information?.toJson());
  writeNotNull('appliesToAll', instance.appliesToAll);
  writeNotNull('elementAppliesToAll', instance.elementAppliesToAll?.toJson());
  return val;
}

CoverageEligibilityRequest_Insurance
    _$CoverageEligibilityRequest_InsuranceFromJson(Map<String, dynamic> json) {
  return CoverageEligibilityRequest_Insurance(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    focal: json['focal'] as bool,
    elementFocal: json['elementFocal'] == null
        ? null
        : Element.fromJson(json['elementFocal'] as Map<String, dynamic>),
    coverage: json['coverage'] == null
        ? null
        : Reference.fromJson(json['coverage'] as Map<String, dynamic>),
    businessArrangement: json['businessArrangement'] as String,
    elementBusinessArrangement: json['elementBusinessArrangement'] == null
        ? null
        : Element.fromJson(
            json['elementBusinessArrangement'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CoverageEligibilityRequest_InsuranceToJson(
    CoverageEligibilityRequest_Insurance instance) {
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
  writeNotNull('focal', instance.focal);
  writeNotNull('elementFocal', instance.elementFocal?.toJson());
  writeNotNull('coverage', instance.coverage?.toJson());
  writeNotNull('businessArrangement', instance.businessArrangement);
  writeNotNull('elementBusinessArrangement',
      instance.elementBusinessArrangement?.toJson());
  return val;
}

CoverageEligibilityRequest_Item _$CoverageEligibilityRequest_ItemFromJson(
    Map<String, dynamic> json) {
  return CoverageEligibilityRequest_Item(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInfoSequence: (json['supportingInfoSequence'] as List)
        ?.map((e) => e as int)
        ?.toList(),
    elementSupportingInfoSequence:
        (json['elementSupportingInfoSequence'] as List)
            ?.map((e) =>
                e == null ? null : Element.fromJson(e as Map<String, dynamic>))
            ?.toList(),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    productOrService: json['productOrService'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productOrService'] as Map<String, dynamic>),
    modifier: (json['modifier'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    provider: json['provider'] == null
        ? null
        : Reference.fromJson(json['provider'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    unitPrice: json['unitPrice'] == null
        ? null
        : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
    facility: json['facility'] == null
        ? null
        : Reference.fromJson(json['facility'] as Map<String, dynamic>),
    diagnosis: (json['diagnosis'] as List)
        ?.map((e) => e == null
            ? null
            : CoverageEligibilityRequest_Diagnosis.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    detail: (json['detail'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CoverageEligibilityRequest_ItemToJson(
    CoverageEligibilityRequest_Item instance) {
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
  writeNotNull('supportingInfoSequence', instance.supportingInfoSequence);
  writeNotNull(
      'elementSupportingInfoSequence',
      instance.elementSupportingInfoSequence
          ?.map((e) => e?.toJson())
          ?.toList());
  writeNotNull('category', instance.category?.toJson());
  writeNotNull('productOrService', instance.productOrService?.toJson());
  writeNotNull(
      'modifier', instance.modifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('provider', instance.provider?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('facility', instance.facility?.toJson());
  writeNotNull(
      'diagnosis', instance.diagnosis?.map((e) => e?.toJson())?.toList());
  writeNotNull('detail', instance.detail?.map((e) => e?.toJson())?.toList());
  return val;
}

CoverageEligibilityRequest_Diagnosis
    _$CoverageEligibilityRequest_DiagnosisFromJson(Map<String, dynamic> json) {
  return CoverageEligibilityRequest_Diagnosis(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    diagnosisCodeableConcept: json['diagnosisCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['diagnosisCodeableConcept'] as Map<String, dynamic>),
    diagnosisReference: json['diagnosisReference'] == null
        ? null
        : Reference.fromJson(
            json['diagnosisReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CoverageEligibilityRequest_DiagnosisToJson(
    CoverageEligibilityRequest_Diagnosis instance) {
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
  writeNotNull(
      'diagnosisCodeableConcept', instance.diagnosisCodeableConcept?.toJson());
  writeNotNull('diagnosisReference', instance.diagnosisReference?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoverageEligibilityRequestAdapter
    extends TypeAdapter<CoverageEligibilityRequest> {
  @override
  CoverageEligibilityRequest read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoverageEligibilityRequest(
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
      priority: fields[14] as CodeableConcept,
      purpose: fields[15] as String,
      elementPurpose: (fields[16] as List)?.cast<Element>(),
      patient: fields[17] as Reference,
      servicedDate: fields[18] as String,
      elementServicedDate: fields[19] as Element,
      servicedPeriod: fields[20] as Period,
      created: fields[21] as DateTime,
      elementCreated: fields[22] as Element,
      enterer: fields[23] as Reference,
      provider: fields[24] as Reference,
      insurer: fields[25] as Reference,
      facility: fields[26] as Reference,
      supportingInfo: (fields[27] as List)
          ?.cast<CoverageEligibilityRequest_SupportingInfo>(),
      insurance:
          (fields[28] as List)?.cast<CoverageEligibilityRequest_Insurance>(),
      item: (fields[29] as List)?.cast<CoverageEligibilityRequest_Item>(),
    );
  }

  @override
  void write(BinaryWriter writer, CoverageEligibilityRequest obj) {
    writer
      ..writeByte(30)
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
      ..write(obj.priority)
      ..writeByte(15)
      ..write(obj.purpose)
      ..writeByte(16)
      ..write(obj.elementPurpose)
      ..writeByte(17)
      ..write(obj.patient)
      ..writeByte(18)
      ..write(obj.servicedDate)
      ..writeByte(19)
      ..write(obj.elementServicedDate)
      ..writeByte(20)
      ..write(obj.servicedPeriod)
      ..writeByte(21)
      ..write(obj.created)
      ..writeByte(22)
      ..write(obj.elementCreated)
      ..writeByte(23)
      ..write(obj.enterer)
      ..writeByte(24)
      ..write(obj.provider)
      ..writeByte(25)
      ..write(obj.insurer)
      ..writeByte(26)
      ..write(obj.facility)
      ..writeByte(27)
      ..write(obj.supportingInfo)
      ..writeByte(28)
      ..write(obj.insurance)
      ..writeByte(29)
      ..write(obj.item);
  }
}

class CoverageEligibilityRequest_SupportingInfoAdapter
    extends TypeAdapter<CoverageEligibilityRequest_SupportingInfo> {
  @override
  CoverageEligibilityRequest_SupportingInfo read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoverageEligibilityRequest_SupportingInfo(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      sequence: fields[3] as int,
      elementSequence: fields[4] as Element,
      information: fields[5] as Reference,
      appliesToAll: fields[6] as bool,
      elementAppliesToAll: fields[7] as Element,
    );
  }

  @override
  void write(
      BinaryWriter writer, CoverageEligibilityRequest_SupportingInfo obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.sequence)
      ..writeByte(4)
      ..write(obj.elementSequence)
      ..writeByte(5)
      ..write(obj.information)
      ..writeByte(6)
      ..write(obj.appliesToAll)
      ..writeByte(7)
      ..write(obj.elementAppliesToAll);
  }
}

class CoverageEligibilityRequest_InsuranceAdapter
    extends TypeAdapter<CoverageEligibilityRequest_Insurance> {
  @override
  CoverageEligibilityRequest_Insurance read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoverageEligibilityRequest_Insurance(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      focal: fields[3] as bool,
      elementFocal: fields[4] as Element,
      coverage: fields[5] as Reference,
      businessArrangement: fields[6] as String,
      elementBusinessArrangement: fields[7] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, CoverageEligibilityRequest_Insurance obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.focal)
      ..writeByte(4)
      ..write(obj.elementFocal)
      ..writeByte(5)
      ..write(obj.coverage)
      ..writeByte(6)
      ..write(obj.businessArrangement)
      ..writeByte(7)
      ..write(obj.elementBusinessArrangement);
  }
}

class CoverageEligibilityRequest_ItemAdapter
    extends TypeAdapter<CoverageEligibilityRequest_Item> {
  @override
  CoverageEligibilityRequest_Item read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoverageEligibilityRequest_Item(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      supportingInfoSequence: (fields[3] as List)?.cast<int>(),
      elementSupportingInfoSequence: (fields[4] as List)?.cast<Element>(),
      category: fields[5] as CodeableConcept,
      productOrService: fields[6] as CodeableConcept,
      modifier: (fields[7] as List)?.cast<CodeableConcept>(),
      provider: fields[8] as Reference,
      quantity: fields[9] as Quantity,
      unitPrice: fields[10] as Money,
      facility: fields[11] as Reference,
      diagnosis:
          (fields[12] as List)?.cast<CoverageEligibilityRequest_Diagnosis>(),
      detail: (fields[13] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, CoverageEligibilityRequest_Item obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.supportingInfoSequence)
      ..writeByte(4)
      ..write(obj.elementSupportingInfoSequence)
      ..writeByte(5)
      ..write(obj.category)
      ..writeByte(6)
      ..write(obj.productOrService)
      ..writeByte(7)
      ..write(obj.modifier)
      ..writeByte(8)
      ..write(obj.provider)
      ..writeByte(9)
      ..write(obj.quantity)
      ..writeByte(10)
      ..write(obj.unitPrice)
      ..writeByte(11)
      ..write(obj.facility)
      ..writeByte(12)
      ..write(obj.diagnosis)
      ..writeByte(13)
      ..write(obj.detail);
  }
}

class CoverageEligibilityRequest_DiagnosisAdapter
    extends TypeAdapter<CoverageEligibilityRequest_Diagnosis> {
  @override
  CoverageEligibilityRequest_Diagnosis read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoverageEligibilityRequest_Diagnosis(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      diagnosisCodeableConcept: fields[3] as CodeableConcept,
      diagnosisReference: fields[4] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, CoverageEligibilityRequest_Diagnosis obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.diagnosisCodeableConcept)
      ..writeByte(4)
      ..write(obj.diagnosisReference);
  }
}
