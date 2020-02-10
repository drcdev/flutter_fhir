import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest {
  final String resourceType= 'CoverageEligibilityRequest';
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
  List<String> purpose; // <code> enum: auth-requirements/benefits/discovery/validation> purpose;
  List<Element> elementPurpose;
  Reference patient;
  String servicedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
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

CoverageEligibilityRequest(
  this.patient,
    this.insurer,
    {this.id,
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
    this.servicedDate,
    this.elementServicedDate,
    this.servicedPeriod,
    this.created,
    this.elementCreated,
    this.enterer,
    this.provider,
    this.facility,
    this.supportingInfo,
    this.insurance,
    this.item
    });

  factory CoverageEligibilityRequest.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_SupportingInfo {
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element elementSequence;
  Reference information;
  bool appliesToAll;
  Element elementAppliesToAll;

CoverageEligibilityRequest_SupportingInfo(
  this.information,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.appliesToAll,
    this.elementAppliesToAll
    });

  factory CoverageEligibilityRequest_SupportingInfo.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_SupportingInfoFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequest_SupportingInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_Insurance {
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool focal;
  Element elementFocal;
  Reference coverage;
  String businessArrangement;
  Element elementBusinessArrangement;

CoverageEligibilityRequest_Insurance(
  this.coverage,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.focal,
    this.elementFocal,
    this.businessArrangement,
    this.elementBusinessArrangement
    });

  factory CoverageEligibilityRequest_Insurance.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequest_InsuranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_Item {
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

CoverageEligibilityRequest_Item(
  {this.id,
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
    this.detail
    });

  factory CoverageEligibilityRequest_Item.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequest_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_Diagnosis {
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept diagnosisCodeableConcept;
  Reference diagnosisReference;

CoverageEligibilityRequest_Diagnosis(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.diagnosisCodeableConcept,
    this.diagnosisReference
    });

  factory CoverageEligibilityRequest_Diagnosis.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequest_DiagnosisToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoverageEligibilityRequest _$CoverageEligibilityRequestFromJson(
    Map<String, dynamic> json) {
  return CoverageEligibilityRequest(
    json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    json['insurer'] == null
        ? null
        : Reference.fromJson(json['insurer'] as Map<String, dynamic>),
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
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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
    purpose: (json['purpose'] as List)?.map((e) => e as String)?.toList(),
    elementPurpose: (json['elementPurpose'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    json['information'] == null
        ? null
        : Reference.fromJson(json['information'] as Map<String, dynamic>),
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
    json['coverage'] == null
        ? null
        : Reference.fromJson(json['coverage'] as Map<String, dynamic>),
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
