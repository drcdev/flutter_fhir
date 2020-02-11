import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/signature.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 200)
class VerificationResult {

	static Future<VerificationResult> newInstance({
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
		List<Reference> target,
		List<String> targetLocation,
		List<Element> elementTargetLocation,
		CodeableConcept need,
		String status,
		Element elementStatus,
		DateTime statusDate,
		Element elementStatusDate,
		CodeableConcept validationType,
		List<CodeableConcept> validationProcess,
		Timing frequency,
		DateTime lastPerformed,
		Element elementLastPerformed,
		String nextScheduled,
		Element elementNextScheduled,
		CodeableConcept failureAction,
		List<VerificationResult_PrimarySource> primarySource,
		VerificationResult_Attestation attestation,
		List<VerificationResult_Validator> validator}) async {
	 return VerificationResult(
			id: await newEntry('VerificationResult'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			target: target,
			targetLocation: targetLocation,
			elementTargetLocation: elementTargetLocation,
			need: need,
			status: status,
			elementStatus: elementStatus,
			statusDate: statusDate,
			elementStatusDate: elementStatusDate,
			validationType: validationType,
			validationProcess: validationProcess,
			frequency: frequency,
			lastPerformed: lastPerformed,
			elementLastPerformed: elementLastPerformed,
			nextScheduled: nextScheduled,
			elementNextScheduled: elementNextScheduled,
			failureAction: failureAction,
			primarySource: primarySource,
			attestation: attestation,
			validator: validator);
	}

  @HiveField(0)
  final String resourceType= 'VerificationResult';
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
  List<Reference> target;
  @HiveField(12)
  List<String> targetLocation;
  @HiveField(13)
  List<Element> elementTargetLocation;
  @HiveField(14)
  CodeableConcept need;
  @HiveField(15)
  String status;
  @HiveField(16)
  Element elementStatus;
  @HiveField(17)
  DateTime statusDate;
  @HiveField(18)
  Element elementStatusDate;
  @HiveField(19)
  CodeableConcept validationType;
  @HiveField(20)
  List<CodeableConcept> validationProcess;
  @HiveField(21)
  Timing frequency;
  @HiveField(22)
  DateTime lastPerformed;
  @HiveField(23)
  Element elementLastPerformed;
  @HiveField(24)
  String nextScheduled;
  @HiveField(25)
  Element elementNextScheduled;
  @HiveField(26)
  CodeableConcept failureAction;
  @HiveField(27)
  List<VerificationResult_PrimarySource> primarySource;
  @HiveField(28)
  VerificationResult_Attestation attestation;
  @HiveField(29)
  List<VerificationResult_Validator> validator;

VerificationResult(
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
    this.target,
    this.targetLocation,
    this.elementTargetLocation,
    this.need,
    this.status,
    this.elementStatus,
    this.statusDate,
    this.elementStatusDate,
    this.validationType,
    this.validationProcess,
    this.frequency,
    this.lastPerformed,
    this.elementLastPerformed,
    this.nextScheduled,
    this.elementNextScheduled,
    this.failureAction,
    this.primarySource,
    this.attestation,
    this.validator
    });

  factory VerificationResult.fromJson(Map<String, dynamic> json) => _$VerificationResultFromJson(json);
  Map<String, dynamic> toJson() => _$VerificationResultToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VerificationResult_PrimarySource {

	static Future<VerificationResult_PrimarySource> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Reference who,
		List<CodeableConcept> type,
		List<CodeableConcept> communicationMethod,
		CodeableConcept validationStatus,
		DateTime validationDate,
		Element elementValidationDate,
		CodeableConcept canPushUpdates,
		List<CodeableConcept> pushTypeAvailable}) async {
	 return VerificationResult_PrimarySource(
			id: await newEntry('VerificationResult_PrimarySource'),
			extension: extension,
			modifierExtension: modifierExtension,
			who: who,
			type: type,
			communicationMethod: communicationMethod,
			validationStatus: validationStatus,
			validationDate: validationDate,
			elementValidationDate: elementValidationDate,
			canPushUpdates: canPushUpdates,
			pushTypeAvailable: pushTypeAvailable);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference who;
  List<CodeableConcept> type;
  List<CodeableConcept> communicationMethod;
  CodeableConcept validationStatus;
  DateTime validationDate;
  Element elementValidationDate;
  CodeableConcept canPushUpdates;
  List<CodeableConcept> pushTypeAvailable;

VerificationResult_PrimarySource(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.who,
    this.type,
    this.communicationMethod,
    this.validationStatus,
    this.validationDate,
    this.elementValidationDate,
    this.canPushUpdates,
    this.pushTypeAvailable
    });

  factory VerificationResult_PrimarySource.fromJson(Map<String, dynamic> json) => _$VerificationResult_PrimarySourceFromJson(json);
  Map<String, dynamic> toJson() => _$VerificationResult_PrimarySourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VerificationResult_Attestation {

	static Future<VerificationResult_Attestation> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Reference who,
		Reference onBehalfOf,
		CodeableConcept communicationMethod,
		String date,
		Element elementDate,
		String sourceIdentityCertificate,
		Element elementSourceIdentityCertificate,
		String proxyIdentityCertificate,
		Element elementProxyIdentityCertificate,
		Signature proxySignature,
		Signature sourceSignature}) async {
	 return VerificationResult_Attestation(
			id: await newEntry('VerificationResult_Attestation'),
			extension: extension,
			modifierExtension: modifierExtension,
			who: who,
			onBehalfOf: onBehalfOf,
			communicationMethod: communicationMethod,
			date: date,
			elementDate: elementDate,
			sourceIdentityCertificate: sourceIdentityCertificate,
			elementSourceIdentityCertificate: elementSourceIdentityCertificate,
			proxyIdentityCertificate: proxyIdentityCertificate,
			elementProxyIdentityCertificate: elementProxyIdentityCertificate,
			proxySignature: proxySignature,
			sourceSignature: sourceSignature);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference who;
  Reference onBehalfOf;
  CodeableConcept communicationMethod;
  String date;
  Element elementDate;
  String sourceIdentityCertificate;
  Element elementSourceIdentityCertificate;
  String proxyIdentityCertificate;
  Element elementProxyIdentityCertificate;
  Signature proxySignature;
  Signature sourceSignature;

VerificationResult_Attestation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.who,
    this.onBehalfOf,
    this.communicationMethod,
    this.date,
    this.elementDate,
    this.sourceIdentityCertificate,
    this.elementSourceIdentityCertificate,
    this.proxyIdentityCertificate,
    this.elementProxyIdentityCertificate,
    this.proxySignature,
    this.sourceSignature
    });

  factory VerificationResult_Attestation.fromJson(Map<String, dynamic> json) => _$VerificationResult_AttestationFromJson(json);
  Map<String, dynamic> toJson() => _$VerificationResult_AttestationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VerificationResult_Validator {

	static Future<VerificationResult_Validator> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Reference organization,
		String identityCertificate,
		Element elementIdentityCertificate,
		Signature attestationSignature}) async {
	 return VerificationResult_Validator(
			id: await newEntry('VerificationResult_Validator'),
			extension: extension,
			modifierExtension: modifierExtension,
			organization: organization,
			identityCertificate: identityCertificate,
			elementIdentityCertificate: elementIdentityCertificate,
			attestationSignature: attestationSignature);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference organization;
  String identityCertificate;
  Element elementIdentityCertificate;
  Signature attestationSignature;

VerificationResult_Validator(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.organization,
    this.identityCertificate,
    this.elementIdentityCertificate,
    this.attestationSignature
    });

  factory VerificationResult_Validator.fromJson(Map<String, dynamic> json) => _$VerificationResult_ValidatorFromJson(json);
  Map<String, dynamic> toJson() => _$VerificationResult_ValidatorToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VerificationResultAdapter extends TypeAdapter<VerificationResult> {
  @override
  final typeId = 200;

  @override
  VerificationResult read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VerificationResult(
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
      target: (fields[11] as List)?.cast<Reference>(),
      targetLocation: (fields[12] as List)?.cast<String>(),
      elementTargetLocation: (fields[13] as List)?.cast<Element>(),
      need: fields[14] as CodeableConcept,
      status: fields[15] as String,
      elementStatus: fields[16] as Element,
      statusDate: fields[17] as DateTime,
      elementStatusDate: fields[18] as Element,
      validationType: fields[19] as CodeableConcept,
      validationProcess: (fields[20] as List)?.cast<CodeableConcept>(),
      frequency: fields[21] as Timing,
      lastPerformed: fields[22] as DateTime,
      elementLastPerformed: fields[23] as Element,
      nextScheduled: fields[24] as String,
      elementNextScheduled: fields[25] as Element,
      failureAction: fields[26] as CodeableConcept,
      primarySource:
          (fields[27] as List)?.cast<VerificationResult_PrimarySource>(),
      attestation: fields[28] as VerificationResult_Attestation,
      validator: (fields[29] as List)?.cast<VerificationResult_Validator>(),
    );
  }

  @override
  void write(BinaryWriter writer, VerificationResult obj) {
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
      ..write(obj.target)
      ..writeByte(12)
      ..write(obj.targetLocation)
      ..writeByte(13)
      ..write(obj.elementTargetLocation)
      ..writeByte(14)
      ..write(obj.need)
      ..writeByte(15)
      ..write(obj.status)
      ..writeByte(16)
      ..write(obj.elementStatus)
      ..writeByte(17)
      ..write(obj.statusDate)
      ..writeByte(18)
      ..write(obj.elementStatusDate)
      ..writeByte(19)
      ..write(obj.validationType)
      ..writeByte(20)
      ..write(obj.validationProcess)
      ..writeByte(21)
      ..write(obj.frequency)
      ..writeByte(22)
      ..write(obj.lastPerformed)
      ..writeByte(23)
      ..write(obj.elementLastPerformed)
      ..writeByte(24)
      ..write(obj.nextScheduled)
      ..writeByte(25)
      ..write(obj.elementNextScheduled)
      ..writeByte(26)
      ..write(obj.failureAction)
      ..writeByte(27)
      ..write(obj.primarySource)
      ..writeByte(28)
      ..write(obj.attestation)
      ..writeByte(29)
      ..write(obj.validator);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerificationResult _$VerificationResultFromJson(Map<String, dynamic> json) {
  return VerificationResult(
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
    target: (json['target'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    targetLocation:
        (json['targetLocation'] as List)?.map((e) => e as String)?.toList(),
    elementTargetLocation: (json['elementTargetLocation'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    need: json['need'] == null
        ? null
        : CodeableConcept.fromJson(json['need'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    statusDate: json['statusDate'] == null
        ? null
        : DateTime.parse(json['statusDate'] as String),
    elementStatusDate: json['elementStatusDate'] == null
        ? null
        : Element.fromJson(json['elementStatusDate'] as Map<String, dynamic>),
    validationType: json['validationType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['validationType'] as Map<String, dynamic>),
    validationProcess: (json['validationProcess'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    frequency: json['frequency'] == null
        ? null
        : Timing.fromJson(json['frequency'] as Map<String, dynamic>),
    lastPerformed: json['lastPerformed'] == null
        ? null
        : DateTime.parse(json['lastPerformed'] as String),
    elementLastPerformed: json['elementLastPerformed'] == null
        ? null
        : Element.fromJson(
            json['elementLastPerformed'] as Map<String, dynamic>),
    nextScheduled: json['nextScheduled'] as String,
    elementNextScheduled: json['elementNextScheduled'] == null
        ? null
        : Element.fromJson(
            json['elementNextScheduled'] as Map<String, dynamic>),
    failureAction: json['failureAction'] == null
        ? null
        : CodeableConcept.fromJson(
            json['failureAction'] as Map<String, dynamic>),
    primarySource: (json['primarySource'] as List)
        ?.map((e) => e == null
            ? null
            : VerificationResult_PrimarySource.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    attestation: json['attestation'] == null
        ? null
        : VerificationResult_Attestation.fromJson(
            json['attestation'] as Map<String, dynamic>),
    validator: (json['validator'] as List)
        ?.map((e) => e == null
            ? null
            : VerificationResult_Validator.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$VerificationResultToJson(VerificationResult instance) =>
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
      'target': instance.target?.map((e) => e?.toJson())?.toList(),
      'targetLocation': instance.targetLocation,
      'elementTargetLocation':
          instance.elementTargetLocation?.map((e) => e?.toJson())?.toList(),
      'need': instance.need?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'statusDate': instance.statusDate?.toIso8601String(),
      'elementStatusDate': instance.elementStatusDate?.toJson(),
      'validationType': instance.validationType?.toJson(),
      'validationProcess':
          instance.validationProcess?.map((e) => e?.toJson())?.toList(),
      'frequency': instance.frequency?.toJson(),
      'lastPerformed': instance.lastPerformed?.toIso8601String(),
      'elementLastPerformed': instance.elementLastPerformed?.toJson(),
      'nextScheduled': instance.nextScheduled,
      'elementNextScheduled': instance.elementNextScheduled?.toJson(),
      'failureAction': instance.failureAction?.toJson(),
      'primarySource':
          instance.primarySource?.map((e) => e?.toJson())?.toList(),
      'attestation': instance.attestation?.toJson(),
      'validator': instance.validator?.map((e) => e?.toJson())?.toList(),
    };

VerificationResult_PrimarySource _$VerificationResult_PrimarySourceFromJson(
    Map<String, dynamic> json) {
  return VerificationResult_PrimarySource(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    who: json['who'] == null
        ? null
        : Reference.fromJson(json['who'] as Map<String, dynamic>),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    communicationMethod: (json['communicationMethod'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    validationStatus: json['validationStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['validationStatus'] as Map<String, dynamic>),
    validationDate: json['validationDate'] == null
        ? null
        : DateTime.parse(json['validationDate'] as String),
    elementValidationDate: json['elementValidationDate'] == null
        ? null
        : Element.fromJson(
            json['elementValidationDate'] as Map<String, dynamic>),
    canPushUpdates: json['canPushUpdates'] == null
        ? null
        : CodeableConcept.fromJson(
            json['canPushUpdates'] as Map<String, dynamic>),
    pushTypeAvailable: (json['pushTypeAvailable'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$VerificationResult_PrimarySourceToJson(
        VerificationResult_PrimarySource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'who': instance.who?.toJson(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'communicationMethod':
          instance.communicationMethod?.map((e) => e?.toJson())?.toList(),
      'validationStatus': instance.validationStatus?.toJson(),
      'validationDate': instance.validationDate?.toIso8601String(),
      'elementValidationDate': instance.elementValidationDate?.toJson(),
      'canPushUpdates': instance.canPushUpdates?.toJson(),
      'pushTypeAvailable':
          instance.pushTypeAvailable?.map((e) => e?.toJson())?.toList(),
    };

VerificationResult_Attestation _$VerificationResult_AttestationFromJson(
    Map<String, dynamic> json) {
  return VerificationResult_Attestation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    who: json['who'] == null
        ? null
        : Reference.fromJson(json['who'] as Map<String, dynamic>),
    onBehalfOf: json['onBehalfOf'] == null
        ? null
        : Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>),
    communicationMethod: json['communicationMethod'] == null
        ? null
        : CodeableConcept.fromJson(
            json['communicationMethod'] as Map<String, dynamic>),
    date: json['date'] as String,
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    sourceIdentityCertificate: json['sourceIdentityCertificate'] as String,
    elementSourceIdentityCertificate:
        json['elementSourceIdentityCertificate'] == null
            ? null
            : Element.fromJson(json['elementSourceIdentityCertificate']
                as Map<String, dynamic>),
    proxyIdentityCertificate: json['proxyIdentityCertificate'] as String,
    elementProxyIdentityCertificate: json['elementProxyIdentityCertificate'] ==
            null
        ? null
        : Element.fromJson(
            json['elementProxyIdentityCertificate'] as Map<String, dynamic>),
    proxySignature: json['proxySignature'] == null
        ? null
        : Signature.fromJson(json['proxySignature'] as Map<String, dynamic>),
    sourceSignature: json['sourceSignature'] == null
        ? null
        : Signature.fromJson(json['sourceSignature'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VerificationResult_AttestationToJson(
        VerificationResult_Attestation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'who': instance.who?.toJson(),
      'onBehalfOf': instance.onBehalfOf?.toJson(),
      'communicationMethod': instance.communicationMethod?.toJson(),
      'date': instance.date,
      'elementDate': instance.elementDate?.toJson(),
      'sourceIdentityCertificate': instance.sourceIdentityCertificate,
      'elementSourceIdentityCertificate':
          instance.elementSourceIdentityCertificate?.toJson(),
      'proxyIdentityCertificate': instance.proxyIdentityCertificate,
      'elementProxyIdentityCertificate':
          instance.elementProxyIdentityCertificate?.toJson(),
      'proxySignature': instance.proxySignature?.toJson(),
      'sourceSignature': instance.sourceSignature?.toJson(),
    };

VerificationResult_Validator _$VerificationResult_ValidatorFromJson(
    Map<String, dynamic> json) {
  return VerificationResult_Validator(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    organization: json['organization'] == null
        ? null
        : Reference.fromJson(json['organization'] as Map<String, dynamic>),
    identityCertificate: json['identityCertificate'] as String,
    elementIdentityCertificate: json['elementIdentityCertificate'] == null
        ? null
        : Element.fromJson(
            json['elementIdentityCertificate'] as Map<String, dynamic>),
    attestationSignature: json['attestationSignature'] == null
        ? null
        : Signature.fromJson(
            json['attestationSignature'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VerificationResult_ValidatorToJson(
        VerificationResult_Validator instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'organization': instance.organization?.toJson(),
      'identityCertificate': instance.identityCertificate,
      'elementIdentityCertificate':
          instance.elementIdentityCertificate?.toJson(),
      'attestationSignature': instance.attestationSignature?.toJson(),
    };
