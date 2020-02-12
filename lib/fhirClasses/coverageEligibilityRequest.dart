import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

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
@HiveType(typeId: 87)
class CoverageEligibilityRequest {

	static Future<CoverageEligibilityRequest> newInstance({
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
		List<String> purpose,
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
		List<CoverageEligibilityRequest_Item> item}) async {
	CoverageEligibilityRequest newCoverageEligibilityRequest = new CoverageEligibilityRequest(
			id: await newId('CoverageEligibilityRequest'),
			meta: meta,
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
			item: item);
	var coverageEligibilityRequestBox = await Hive.openBox<CoverageEligibilityRequest>('CoverageEligibilityRequestBox');
	coverageEligibilityRequestBox.put(newCoverageEligibilityRequest.id, newCoverageEligibilityRequest);
	return newCoverageEligibilityRequest;
}
  @HiveField(0)
  final String resourceType= 'CoverageEligibilityRequest';
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
  List<String> purpose; // <code> enum: auth-requirements/benefits/discovery/validation> purpose;
  @HiveField(16)
  List<Element> elementPurpose;
  @HiveField(17)
  Reference patient;
  @HiveField(18)
  String servicedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
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

CoverageEligibilityRequest(
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
    this.item
    });

  factory CoverageEligibilityRequest.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequestFromJson(json);
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
		Element elementAppliesToAll}) async {
	CoverageEligibilityRequest_SupportingInfo newCoverageEligibilityRequest_SupportingInfo = new CoverageEligibilityRequest_SupportingInfo(
			id: await newId('CoverageEligibilityRequest_SupportingInfo'),
			extension: extension,
			modifierExtension: modifierExtension,
			sequence: sequence,
			elementSequence: elementSequence,
			information: information,
			appliesToAll: appliesToAll,
			elementAppliesToAll: elementAppliesToAll);
	var coverageEligibilityRequest_SupportingInfoBox = await Hive.openBox<CoverageEligibilityRequest_SupportingInfo>('CoverageEligibilityRequest_SupportingInfoBox');
	coverageEligibilityRequest_SupportingInfoBox.put(newCoverageEligibilityRequest_SupportingInfo.id, newCoverageEligibilityRequest_SupportingInfo);
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

CoverageEligibilityRequest_SupportingInfo(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    @required this.information,
    this.appliesToAll,
    this.elementAppliesToAll
    });

  factory CoverageEligibilityRequest_SupportingInfo.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_SupportingInfoFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequest_SupportingInfoToJson(this);
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
		Element elementBusinessArrangement}) async {
	CoverageEligibilityRequest_Insurance newCoverageEligibilityRequest_Insurance = new CoverageEligibilityRequest_Insurance(
			id: await newId('CoverageEligibilityRequest_Insurance'),
			extension: extension,
			modifierExtension: modifierExtension,
			focal: focal,
			elementFocal: elementFocal,
			coverage: coverage,
			businessArrangement: businessArrangement,
			elementBusinessArrangement: elementBusinessArrangement);
	var coverageEligibilityRequest_InsuranceBox = await Hive.openBox<CoverageEligibilityRequest_Insurance>('CoverageEligibilityRequest_InsuranceBox');
	coverageEligibilityRequest_InsuranceBox.put(newCoverageEligibilityRequest_Insurance.id, newCoverageEligibilityRequest_Insurance);
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

CoverageEligibilityRequest_Insurance(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.focal,
    this.elementFocal,
    @required this.coverage,
    this.businessArrangement,
    this.elementBusinessArrangement
    });

  factory CoverageEligibilityRequest_Insurance.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequest_InsuranceToJson(this);
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
		List<Reference> detail}) async {
	CoverageEligibilityRequest_Item newCoverageEligibilityRequest_Item = new CoverageEligibilityRequest_Item(
			id: await newId('CoverageEligibilityRequest_Item'),
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
			detail: detail);
	var coverageEligibilityRequest_ItemBox = await Hive.openBox<CoverageEligibilityRequest_Item>('CoverageEligibilityRequest_ItemBox');
	coverageEligibilityRequest_ItemBox.put(newCoverageEligibilityRequest_Item.id, newCoverageEligibilityRequest_Item);
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

	static Future<CoverageEligibilityRequest_Diagnosis> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept diagnosisCodeableConcept,
		Reference diagnosisReference}) async {
	CoverageEligibilityRequest_Diagnosis newCoverageEligibilityRequest_Diagnosis = new CoverageEligibilityRequest_Diagnosis(
			id: await newId('CoverageEligibilityRequest_Diagnosis'),
			extension: extension,
			modifierExtension: modifierExtension,
			diagnosisCodeableConcept: diagnosisCodeableConcept,
			diagnosisReference: diagnosisReference);
	var coverageEligibilityRequest_DiagnosisBox = await Hive.openBox<CoverageEligibilityRequest_Diagnosis>('CoverageEligibilityRequest_DiagnosisBox');
	coverageEligibilityRequest_DiagnosisBox.put(newCoverageEligibilityRequest_Diagnosis.id, newCoverageEligibilityRequest_Diagnosis);
	return newCoverageEligibilityRequest_Diagnosis;
}
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
// TypeAdapterGenerator
// **************************************************************************

class CoverageEligibilityRequestAdapter
    extends TypeAdapter<CoverageEligibilityRequest> {
  @override
  final typeId = 87;

  @override
  CoverageEligibilityRequest read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoverageEligibilityRequest(
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
      purpose: (fields[15] as List)?.cast<String>(),
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoverageEligibilityRequest _$CoverageEligibilityRequestFromJson(
    Map<String, dynamic> json) {
  return CoverageEligibilityRequest(
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
