import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 88)
class CoverageEligibilityResponse {

	static Future<CoverageEligibilityResponse> newInstance({
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
		List<String> purpose,
		List<Element> elementPurpose,
		Reference patient,
		String servicedDate,
		Element elementServicedDate,
		Period servicedPeriod,
		DateTime created,
		Element elementCreated,
		Reference requestor,
		Reference request,
		String outcome,
		Element elementOutcome,
		String disposition,
		Element elementDisposition,
		Reference insurer,
		List<CoverageEligibilityResponse_Insurance> insurance,
		String preAuthRef,
		Element elementPreAuthRef,
		CodeableConcept form,
		List<CoverageEligibilityResponse_Error> error}) async {
	 return CoverageEligibilityResponse(
			id: await newEntry('CoverageEligibilityResponse'),
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
			purpose: purpose,
			elementPurpose: elementPurpose,
			patient: patient,
			servicedDate: servicedDate,
			elementServicedDate: elementServicedDate,
			servicedPeriod: servicedPeriod,
			created: created,
			elementCreated: elementCreated,
			requestor: requestor,
			request: request,
			outcome: outcome,
			elementOutcome: elementOutcome,
			disposition: disposition,
			elementDisposition: elementDisposition,
			insurer: insurer,
			insurance: insurance,
			preAuthRef: preAuthRef,
			elementPreAuthRef: elementPreAuthRef,
			form: form,
			error: error);
	}

  @HiveField(0)
  final String resourceType= 'CoverageEligibilityResponse';
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
  List<String> purpose; // <code> enum: auth-requirements/benefits/discovery/validation> purpose;
  @HiveField(15)
  List<Element> elementPurpose;
  @HiveField(16)
  Reference patient;
  @HiveField(17)
  String servicedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
  @HiveField(18)
  Element elementServicedDate;
  @HiveField(19)
  Period servicedPeriod;
  @HiveField(20)
  DateTime created;
  @HiveField(21)
  Element elementCreated;
  @HiveField(22)
  Reference requestor;
  @HiveField(23)
  Reference request;
  @HiveField(24)
  String outcome; // <code> enum: queued/complete/error/partial;
  @HiveField(25)
  Element elementOutcome;
  @HiveField(26)
  String disposition;
  @HiveField(27)
  Element elementDisposition;
  @HiveField(28)
  Reference insurer;
  @HiveField(29)
  List<CoverageEligibilityResponse_Insurance> insurance;
  @HiveField(30)
  String preAuthRef;
  @HiveField(31)
  Element elementPreAuthRef;
  @HiveField(32)
  CodeableConcept form;
  @HiveField(33)
  List<CoverageEligibilityResponse_Error> error;

CoverageEligibilityResponse(
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
    this.purpose,
    this.elementPurpose,
    @required this.patient,
    this.servicedDate,
    this.elementServicedDate,
    this.servicedPeriod,
    this.created,
    this.elementCreated,
    this.requestor,
    @required this.request,
    this.outcome,
    this.elementOutcome,
    this.disposition,
    this.elementDisposition,
    @required this.insurer,
    this.insurance,
    this.preAuthRef,
    this.elementPreAuthRef,
    this.form,
    this.error
    });

  factory CoverageEligibilityResponse.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Insurance {

	static Future<CoverageEligibilityResponse_Insurance> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Reference coverage,
		bool inforce,
		Element elementInforce,
		Period benefitPeriod,
		List<CoverageEligibilityResponse_Item> item}) async {
	 return CoverageEligibilityResponse_Insurance(
			id: await newEntry('CoverageEligibilityResponse_Insurance'),
			extension: extension,
			modifierExtension: modifierExtension,
			coverage: coverage,
			inforce: inforce,
			elementInforce: elementInforce,
			benefitPeriod: benefitPeriod,
			item: item);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference coverage;
  bool inforce;
  Element elementInforce;
  Period benefitPeriod;
  List<CoverageEligibilityResponse_Item> item;

CoverageEligibilityResponse_Insurance(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.coverage,
    this.inforce,
    this.elementInforce,
    this.benefitPeriod,
    this.item
    });

  factory CoverageEligibilityResponse_Insurance.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponse_InsuranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Item {

	static Future<CoverageEligibilityResponse_Item> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept category,
		CodeableConcept productOrService,
		List<CodeableConcept> modifier,
		Reference provider,
		bool excluded,
		Element elementExcluded,
		String name,
		Element elementName,
		String description,
		Element elementDescription,
		CodeableConcept network,
		CodeableConcept unit,
		CodeableConcept term,
		List<CoverageEligibilityResponse_Benefit> benefit,
		bool authorizationRequired,
		Element elementAuthorizationRequired,
		List<CodeableConcept> authorizationSupporting,
		String authorizationUrl,
		Element elementAuthorizationUrl}) async {
	 return CoverageEligibilityResponse_Item(
			id: await newEntry('CoverageEligibilityResponse_Item'),
			extension: extension,
			modifierExtension: modifierExtension,
			category: category,
			productOrService: productOrService,
			modifier: modifier,
			provider: provider,
			excluded: excluded,
			elementExcluded: elementExcluded,
			name: name,
			elementName: elementName,
			description: description,
			elementDescription: elementDescription,
			network: network,
			unit: unit,
			term: term,
			benefit: benefit,
			authorizationRequired: authorizationRequired,
			elementAuthorizationRequired: elementAuthorizationRequired,
			authorizationSupporting: authorizationSupporting,
			authorizationUrl: authorizationUrl,
			elementAuthorizationUrl: elementAuthorizationUrl);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept category;
  CodeableConcept productOrService;
  List<CodeableConcept> modifier;
  Reference provider;
  bool excluded;
  Element elementExcluded;
  String name;
  Element elementName;
  String description;
  Element elementDescription;
  CodeableConcept network;
  CodeableConcept unit;
  CodeableConcept term;
  List<CoverageEligibilityResponse_Benefit> benefit;
  bool authorizationRequired;
  Element elementAuthorizationRequired;
  List<CodeableConcept> authorizationSupporting;
  String authorizationUrl;
  Element elementAuthorizationUrl;

CoverageEligibilityResponse_Item(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.category,
    this.productOrService,
    this.modifier,
    this.provider,
    this.excluded,
    this.elementExcluded,
    this.name,
    this.elementName,
    this.description,
    this.elementDescription,
    this.network,
    this.unit,
    this.term,
    this.benefit,
    this.authorizationRequired,
    this.elementAuthorizationRequired,
    this.authorizationSupporting,
    this.authorizationUrl,
    this.elementAuthorizationUrl
    });

  factory CoverageEligibilityResponse_Item.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponse_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Benefit {

	static Future<CoverageEligibilityResponse_Benefit> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		int allowedUnsignedInt,
		Element elementAllowedUnsignedInt,
		String allowedString,
		Element elementAllowedString,
		Money allowedMoney,
		int usedUnsignedInt,
		Element elementUsedUnsignedInt,
		String usedString,
		Element elementUsedString,
		Money usedMoney}) async {
	 return CoverageEligibilityResponse_Benefit(
			id: await newEntry('CoverageEligibilityResponse_Benefit'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			allowedUnsignedInt: allowedUnsignedInt,
			elementAllowedUnsignedInt: elementAllowedUnsignedInt,
			allowedString: allowedString,
			elementAllowedString: elementAllowedString,
			allowedMoney: allowedMoney,
			usedUnsignedInt: usedUnsignedInt,
			elementUsedUnsignedInt: elementUsedUnsignedInt,
			usedString: usedString,
			elementUsedString: elementUsedString,
			usedMoney: usedMoney);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  int allowedUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
  Element elementAllowedUnsignedInt;
  String allowedString; //  pattern: ^[ \r\n\t\S]+$
  Element elementAllowedString;
  Money allowedMoney;
  int usedUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
  Element elementUsedUnsignedInt;
  String usedString; //  pattern: ^[ \r\n\t\S]+$
  Element elementUsedString;
  Money usedMoney;

CoverageEligibilityResponse_Benefit(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.allowedUnsignedInt,
    this.elementAllowedUnsignedInt,
    this.allowedString,
    this.elementAllowedString,
    this.allowedMoney,
    this.usedUnsignedInt,
    this.elementUsedUnsignedInt,
    this.usedString,
    this.elementUsedString,
    this.usedMoney
    });

  factory CoverageEligibilityResponse_Benefit.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_BenefitFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponse_BenefitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Error {

	static Future<CoverageEligibilityResponse_Error> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept code}) async {
	 return CoverageEligibilityResponse_Error(
			id: await newEntry('CoverageEligibilityResponse_Error'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;

CoverageEligibilityResponse_Error(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.code
    });

  factory CoverageEligibilityResponse_Error.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_ErrorFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponse_ErrorToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoverageEligibilityResponseAdapter
    extends TypeAdapter<CoverageEligibilityResponse> {
  @override
  final typeId = 88;

  @override
  CoverageEligibilityResponse read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoverageEligibilityResponse(
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
      purpose: (fields[14] as List)?.cast<String>(),
      elementPurpose: (fields[15] as List)?.cast<Element>(),
      patient: fields[16] as Reference,
      servicedDate: fields[17] as String,
      elementServicedDate: fields[18] as Element,
      servicedPeriod: fields[19] as Period,
      created: fields[20] as DateTime,
      elementCreated: fields[21] as Element,
      requestor: fields[22] as Reference,
      request: fields[23] as Reference,
      outcome: fields[24] as String,
      elementOutcome: fields[25] as Element,
      disposition: fields[26] as String,
      elementDisposition: fields[27] as Element,
      insurer: fields[28] as Reference,
      insurance:
          (fields[29] as List)?.cast<CoverageEligibilityResponse_Insurance>(),
      preAuthRef: fields[30] as String,
      elementPreAuthRef: fields[31] as Element,
      form: fields[32] as CodeableConcept,
      error: (fields[33] as List)?.cast<CoverageEligibilityResponse_Error>(),
    );
  }

  @override
  void write(BinaryWriter writer, CoverageEligibilityResponse obj) {
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
      ..write(obj.purpose)
      ..writeByte(15)
      ..write(obj.elementPurpose)
      ..writeByte(16)
      ..write(obj.patient)
      ..writeByte(17)
      ..write(obj.servicedDate)
      ..writeByte(18)
      ..write(obj.elementServicedDate)
      ..writeByte(19)
      ..write(obj.servicedPeriod)
      ..writeByte(20)
      ..write(obj.created)
      ..writeByte(21)
      ..write(obj.elementCreated)
      ..writeByte(22)
      ..write(obj.requestor)
      ..writeByte(23)
      ..write(obj.request)
      ..writeByte(24)
      ..write(obj.outcome)
      ..writeByte(25)
      ..write(obj.elementOutcome)
      ..writeByte(26)
      ..write(obj.disposition)
      ..writeByte(27)
      ..write(obj.elementDisposition)
      ..writeByte(28)
      ..write(obj.insurer)
      ..writeByte(29)
      ..write(obj.insurance)
      ..writeByte(30)
      ..write(obj.preAuthRef)
      ..writeByte(31)
      ..write(obj.elementPreAuthRef)
      ..writeByte(32)
      ..write(obj.form)
      ..writeByte(33)
      ..write(obj.error);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoverageEligibilityResponse _$CoverageEligibilityResponseFromJson(
    Map<String, dynamic> json) {
  return CoverageEligibilityResponse(
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
    requestor: json['requestor'] == null
        ? null
        : Reference.fromJson(json['requestor'] as Map<String, dynamic>),
    request: json['request'] == null
        ? null
        : Reference.fromJson(json['request'] as Map<String, dynamic>),
    outcome: json['outcome'] as String,
    elementOutcome: json['elementOutcome'] == null
        ? null
        : Element.fromJson(json['elementOutcome'] as Map<String, dynamic>),
    disposition: json['disposition'] as String,
    elementDisposition: json['elementDisposition'] == null
        ? null
        : Element.fromJson(json['elementDisposition'] as Map<String, dynamic>),
    insurer: json['insurer'] == null
        ? null
        : Reference.fromJson(json['insurer'] as Map<String, dynamic>),
    insurance: (json['insurance'] as List)
        ?.map((e) => e == null
            ? null
            : CoverageEligibilityResponse_Insurance.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    preAuthRef: json['preAuthRef'] as String,
    elementPreAuthRef: json['elementPreAuthRef'] == null
        ? null
        : Element.fromJson(json['elementPreAuthRef'] as Map<String, dynamic>),
    form: json['form'] == null
        ? null
        : CodeableConcept.fromJson(json['form'] as Map<String, dynamic>),
    error: (json['error'] as List)
        ?.map((e) => e == null
            ? null
            : CoverageEligibilityResponse_Error.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CoverageEligibilityResponseToJson(
        CoverageEligibilityResponse instance) =>
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
      'purpose': instance.purpose,
      'elementPurpose':
          instance.elementPurpose?.map((e) => e?.toJson())?.toList(),
      'patient': instance.patient?.toJson(),
      'servicedDate': instance.servicedDate,
      'elementServicedDate': instance.elementServicedDate?.toJson(),
      'servicedPeriod': instance.servicedPeriod?.toJson(),
      'created': instance.created?.toIso8601String(),
      'elementCreated': instance.elementCreated?.toJson(),
      'requestor': instance.requestor?.toJson(),
      'request': instance.request?.toJson(),
      'outcome': instance.outcome,
      'elementOutcome': instance.elementOutcome?.toJson(),
      'disposition': instance.disposition,
      'elementDisposition': instance.elementDisposition?.toJson(),
      'insurer': instance.insurer?.toJson(),
      'insurance': instance.insurance?.map((e) => e?.toJson())?.toList(),
      'preAuthRef': instance.preAuthRef,
      'elementPreAuthRef': instance.elementPreAuthRef?.toJson(),
      'form': instance.form?.toJson(),
      'error': instance.error?.map((e) => e?.toJson())?.toList(),
    };

CoverageEligibilityResponse_Insurance
    _$CoverageEligibilityResponse_InsuranceFromJson(Map<String, dynamic> json) {
  return CoverageEligibilityResponse_Insurance(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    coverage: json['coverage'] == null
        ? null
        : Reference.fromJson(json['coverage'] as Map<String, dynamic>),
    inforce: json['inforce'] as bool,
    elementInforce: json['elementInforce'] == null
        ? null
        : Element.fromJson(json['elementInforce'] as Map<String, dynamic>),
    benefitPeriod: json['benefitPeriod'] == null
        ? null
        : Period.fromJson(json['benefitPeriod'] as Map<String, dynamic>),
    item: (json['item'] as List)
        ?.map((e) => e == null
            ? null
            : CoverageEligibilityResponse_Item.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CoverageEligibilityResponse_InsuranceToJson(
        CoverageEligibilityResponse_Insurance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'coverage': instance.coverage?.toJson(),
      'inforce': instance.inforce,
      'elementInforce': instance.elementInforce?.toJson(),
      'benefitPeriod': instance.benefitPeriod?.toJson(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
    };

CoverageEligibilityResponse_Item _$CoverageEligibilityResponse_ItemFromJson(
    Map<String, dynamic> json) {
  return CoverageEligibilityResponse_Item(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
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
    excluded: json['excluded'] as bool,
    elementExcluded: json['elementExcluded'] == null
        ? null
        : Element.fromJson(json['elementExcluded'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    network: json['network'] == null
        ? null
        : CodeableConcept.fromJson(json['network'] as Map<String, dynamic>),
    unit: json['unit'] == null
        ? null
        : CodeableConcept.fromJson(json['unit'] as Map<String, dynamic>),
    term: json['term'] == null
        ? null
        : CodeableConcept.fromJson(json['term'] as Map<String, dynamic>),
    benefit: (json['benefit'] as List)
        ?.map((e) => e == null
            ? null
            : CoverageEligibilityResponse_Benefit.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    authorizationRequired: json['authorizationRequired'] as bool,
    elementAuthorizationRequired: json['elementAuthorizationRequired'] == null
        ? null
        : Element.fromJson(
            json['elementAuthorizationRequired'] as Map<String, dynamic>),
    authorizationSupporting: (json['authorizationSupporting'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authorizationUrl: json['authorizationUrl'] as String,
    elementAuthorizationUrl: json['elementAuthorizationUrl'] == null
        ? null
        : Element.fromJson(
            json['elementAuthorizationUrl'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CoverageEligibilityResponse_ItemToJson(
        CoverageEligibilityResponse_Item instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
      'productOrService': instance.productOrService?.toJson(),
      'modifier': instance.modifier?.map((e) => e?.toJson())?.toList(),
      'provider': instance.provider?.toJson(),
      'excluded': instance.excluded,
      'elementExcluded': instance.elementExcluded?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'network': instance.network?.toJson(),
      'unit': instance.unit?.toJson(),
      'term': instance.term?.toJson(),
      'benefit': instance.benefit?.map((e) => e?.toJson())?.toList(),
      'authorizationRequired': instance.authorizationRequired,
      'elementAuthorizationRequired':
          instance.elementAuthorizationRequired?.toJson(),
      'authorizationSupporting':
          instance.authorizationSupporting?.map((e) => e?.toJson())?.toList(),
      'authorizationUrl': instance.authorizationUrl,
      'elementAuthorizationUrl': instance.elementAuthorizationUrl?.toJson(),
    };

CoverageEligibilityResponse_Benefit
    _$CoverageEligibilityResponse_BenefitFromJson(Map<String, dynamic> json) {
  return CoverageEligibilityResponse_Benefit(
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
    allowedUnsignedInt: json['allowedUnsignedInt'] as int,
    elementAllowedUnsignedInt: json['elementAllowedUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementAllowedUnsignedInt'] as Map<String, dynamic>),
    allowedString: json['allowedString'] as String,
    elementAllowedString: json['elementAllowedString'] == null
        ? null
        : Element.fromJson(
            json['elementAllowedString'] as Map<String, dynamic>),
    allowedMoney: json['allowedMoney'] == null
        ? null
        : Money.fromJson(json['allowedMoney'] as Map<String, dynamic>),
    usedUnsignedInt: json['usedUnsignedInt'] as int,
    elementUsedUnsignedInt: json['elementUsedUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementUsedUnsignedInt'] as Map<String, dynamic>),
    usedString: json['usedString'] as String,
    elementUsedString: json['elementUsedString'] == null
        ? null
        : Element.fromJson(json['elementUsedString'] as Map<String, dynamic>),
    usedMoney: json['usedMoney'] == null
        ? null
        : Money.fromJson(json['usedMoney'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CoverageEligibilityResponse_BenefitToJson(
        CoverageEligibilityResponse_Benefit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'allowedUnsignedInt': instance.allowedUnsignedInt,
      'elementAllowedUnsignedInt': instance.elementAllowedUnsignedInt?.toJson(),
      'allowedString': instance.allowedString,
      'elementAllowedString': instance.elementAllowedString?.toJson(),
      'allowedMoney': instance.allowedMoney?.toJson(),
      'usedUnsignedInt': instance.usedUnsignedInt,
      'elementUsedUnsignedInt': instance.elementUsedUnsignedInt?.toJson(),
      'usedString': instance.usedString,
      'elementUsedString': instance.elementUsedString?.toJson(),
      'usedMoney': instance.usedMoney?.toJson(),
    };

CoverageEligibilityResponse_Error _$CoverageEligibilityResponse_ErrorFromJson(
    Map<String, dynamic> json) {
  return CoverageEligibilityResponse_Error(
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
  );
}

Map<String, dynamic> _$CoverageEligibilityResponse_ErrorToJson(
        CoverageEligibilityResponse_Error instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
    };
