import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
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

@JsonSerializable(explicitToJson: true)
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
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'CoverageEligibilityRequest';
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
  CodeableConcept priority;
  String purpose;
  List<Element> elementPurpose;
  Reference patient;
  String servicedDate;
  Element elementServicedDate;
  Period servicedPeriod;
  DateTime created;
  Element elementCreated;
  Reference enterer;
  Reference provider;
  Reference insurer;
  Reference facility;
  List<CoverageEligibilityRequest_SupportingInfo> supportingInfo;
  List<CoverageEligibilityRequest_Insurance> insurance;
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

@JsonSerializable(explicitToJson: true)
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element elementSequence;
  Reference information;
  bool appliesToAll;
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

@JsonSerializable(explicitToJson: true)
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool focal;
  Element elementFocal;
  Reference coverage;
  String businessArrangement;
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

@JsonSerializable(explicitToJson: true)
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<int> supportingInfoSequence;
  List<Element> elementSupportingInfoSequence;
  CodeableConcept category;
  CodeableConcept productOrService;
  List<CodeableConcept> modifier;
  Reference provider;
  Quantity quantity;
  Money unitPrice;
  Reference facility;
  List<CoverageEligibilityRequest_Diagnosis> diagnosis;
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

@JsonSerializable(explicitToJson: true)
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept diagnosisCodeableConcept;
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
        CoverageEligibilityRequest instance) =>
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
      'priority': instance.priority?.toJson(),
      'purpose': instance.purpose,
      'elementPurpose':
          instance.elementPurpose?.map((e) => e?.toJson())?.toList(),
      'patient': instance.patient?.toJson(),
      'servicedDate': instance.servicedDate,
      'elementServicedDate': instance.elementServicedDate?.toJson(),
      'servicedPeriod': instance.servicedPeriod?.toJson(),
      'created': instance.created?.toIso8601String(),
      'elementCreated': instance.elementCreated?.toJson(),
      'enterer': instance.enterer?.toJson(),
      'provider': instance.provider?.toJson(),
      'insurer': instance.insurer?.toJson(),
      'facility': instance.facility?.toJson(),
      'supportingInfo':
          instance.supportingInfo?.map((e) => e?.toJson())?.toList(),
      'insurance': instance.insurance?.map((e) => e?.toJson())?.toList(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
    };

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
        CoverageEligibilityRequest_SupportingInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'information': instance.information?.toJson(),
      'appliesToAll': instance.appliesToAll,
      'elementAppliesToAll': instance.elementAppliesToAll?.toJson(),
    };

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
        CoverageEligibilityRequest_Insurance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'focal': instance.focal,
      'elementFocal': instance.elementFocal?.toJson(),
      'coverage': instance.coverage?.toJson(),
      'businessArrangement': instance.businessArrangement,
      'elementBusinessArrangement':
          instance.elementBusinessArrangement?.toJson(),
    };

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
        CoverageEligibilityRequest_Item instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'supportingInfoSequence': instance.supportingInfoSequence,
      'elementSupportingInfoSequence': instance.elementSupportingInfoSequence
          ?.map((e) => e?.toJson())
          ?.toList(),
      'category': instance.category?.toJson(),
      'productOrService': instance.productOrService?.toJson(),
      'modifier': instance.modifier?.map((e) => e?.toJson())?.toList(),
      'provider': instance.provider?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'unitPrice': instance.unitPrice?.toJson(),
      'facility': instance.facility?.toJson(),
      'diagnosis': instance.diagnosis?.map((e) => e?.toJson())?.toList(),
      'detail': instance.detail?.map((e) => e?.toJson())?.toList(),
    };

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
        CoverageEligibilityRequest_Diagnosis instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'diagnosisCodeableConcept': instance.diagnosisCodeableConcept?.toJson(),
      'diagnosisReference': instance.diagnosisReference?.toJson(),
    };
