import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

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
@HiveType(typeId: 652)
class VerificationResult {

  //  This is a VerificationResult resource
  @HiveField(0)
  final String resourceType= 'VerificationResult';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  A resource that was validated.
  @HiveField(11)
  List<Reference> target;

  //  The fhirpath location(s) within the resource that was validated.
  @HiveField(12)
  List<String> targetLocation;

  //  Extensions for targetLocation
  @HiveField(13)
  List<Element> elementTargetLocation;

  //  The frequency with which the target must be validated (none; initial;
  // periodic).
  @HiveField(14)
  CodeableConcept need;

  //  The validation status of the target (attested; validated; in process;
  // requires revalidation; validation failed; revalidation failed).
  @HiveField(15)
  String status;

  //  Extensions for status
  @HiveField(16)
  Element elementStatus;

  //  When the validation status was updated.
  @HiveField(17)
  DateTime statusDate;

  //  Extensions for statusDate
  @HiveField(18)
  Element elementStatusDate;

  //  What the target is validated against (nothing; primary source;
  // multiple sources).
  @HiveField(19)
  CodeableConcept validationType;

  //  The primary process by which the target is validated (edit check;
  // value set; primary source; multiple sources; standalone; in context).
  @HiveField(20)
  List<CodeableConcept> validationProcess;

  //  Frequency of revalidation.
  @HiveField(21)
  Timing frequency;

  //  The date/time validation was last completed (including failed
  // validations).
  @HiveField(22)
  DateTime lastPerformed;

  //  Extensions for lastPerformed
  @HiveField(23)
  Element elementLastPerformed;

  //  The date when target is next validated, if appropriate.
  @HiveField(24)
  String nextScheduled;

  //  Extensions for nextScheduled
  @HiveField(25)
  Element elementNextScheduled;

  //  The result if validation fails (fatal; warning; record only; none).
  @HiveField(26)
  CodeableConcept failureAction;

  //  Information about the primary source(s) involved in validation.
  @HiveField(27)
  List<VerificationResult_PrimarySource> primarySource;

  //  Information about the entity attesting to information.
  @HiveField(28)
  VerificationResult_Attestation attestation;

  //  Information about the entity validating information.
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
@HiveType(typeId: 653)
class VerificationResult_PrimarySource {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Reference to the primary source.
  @HiveField(3)
  Reference who;

  //  Type of primary source (License Board; Primary Education; Continuing
  // Education; Postal Service; Relationship owner; Registration Authority;
  // legal source; issuing source; authoritative source).
  @HiveField(4)
  List<CodeableConcept> type;

  //  Method for communicating with the primary source (manual; API; Push).
  @HiveField(5)
  List<CodeableConcept> communicationMethod;

  //  Status of the validation of the target against the primary source
  // (successful; failed; unknown).
  @HiveField(6)
  CodeableConcept validationStatus;

  //  When the target was validated against the primary source.
  @HiveField(7)
  DateTime validationDate;

  //  Extensions for validationDate
  @HiveField(8)
  Element elementValidationDate;

  //  Ability of the primary source to push updates/alerts (yes; no;
  // undetermined).
  @HiveField(9)
  CodeableConcept canPushUpdates;

  //  Type of alerts/updates the primary source can send (specific requested
  // changes; any changes; as defined by source).
  @HiveField(10)
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
@HiveType(typeId: 654)
class VerificationResult_Attestation {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The individual or organization attesting to information.
  @HiveField(3)
  Reference who;

  //  When the who is asserting on behalf of another (organization or
  // individual).
  @HiveField(4)
  Reference onBehalfOf;

  //  The method by which attested information was submitted/retrieved
  // (manual; API; Push).
  @HiveField(5)
  CodeableConcept communicationMethod;

  //  The date the information was attested to.
  @HiveField(6)
  String date;

  //  Extensions for date
  @HiveField(7)
  Element elementDate;

  //  A digital identity certificate associated with the attestation source.
  @HiveField(8)
  String sourceIdentityCertificate;

  //  Extensions for sourceIdentityCertificate
  @HiveField(9)
  Element elementSourceIdentityCertificate;

  //  A digital identity certificate associated with the proxy entity
  // submitting attested information on behalf of the attestation source.
  @HiveField(10)
  String proxyIdentityCertificate;

  //  Extensions for proxyIdentityCertificate
  @HiveField(11)
  Element elementProxyIdentityCertificate;

  //  Signed assertion by the proxy entity indicating that they have the
  // right to submit attested information on behalf of the attestation
  // source.
  @HiveField(12)
  Signature proxySignature;

  //  Signed assertion by the attestation source that they have attested to
  // the information.
  @HiveField(13)
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
@HiveType(typeId: 655)
class VerificationResult_Validator {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Reference to the organization validating information.
  @HiveField(3)
  Reference organization;

  //  A digital identity certificate associated with the validator.
  @HiveField(4)
  String identityCertificate;

  //  Extensions for identityCertificate
  @HiveField(5)
  Element elementIdentityCertificate;

  //  Signed assertion by the validator that they have validated the
  // information.
  @HiveField(6)
  Signature attestationSignature;

VerificationResult_Validator(
  this.organization,
    {this.id,
    this.extension,
    this.modifierExtension,
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
  final typeId = 652;

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

class VerificationResult_PrimarySourceAdapter
    extends TypeAdapter<VerificationResult_PrimarySource> {
  @override
  final typeId = 653;

  @override
  VerificationResult_PrimarySource read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VerificationResult_PrimarySource(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      who: fields[3] as Reference,
      type: (fields[4] as List)?.cast<CodeableConcept>(),
      communicationMethod: (fields[5] as List)?.cast<CodeableConcept>(),
      validationStatus: fields[6] as CodeableConcept,
      validationDate: fields[7] as DateTime,
      elementValidationDate: fields[8] as Element,
      canPushUpdates: fields[9] as CodeableConcept,
      pushTypeAvailable: (fields[10] as List)?.cast<CodeableConcept>(),
    );
  }

  @override
  void write(BinaryWriter writer, VerificationResult_PrimarySource obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.who)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.communicationMethod)
      ..writeByte(6)
      ..write(obj.validationStatus)
      ..writeByte(7)
      ..write(obj.validationDate)
      ..writeByte(8)
      ..write(obj.elementValidationDate)
      ..writeByte(9)
      ..write(obj.canPushUpdates)
      ..writeByte(10)
      ..write(obj.pushTypeAvailable);
  }
}

class VerificationResult_AttestationAdapter
    extends TypeAdapter<VerificationResult_Attestation> {
  @override
  final typeId = 654;

  @override
  VerificationResult_Attestation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VerificationResult_Attestation(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      who: fields[3] as Reference,
      onBehalfOf: fields[4] as Reference,
      communicationMethod: fields[5] as CodeableConcept,
      date: fields[6] as String,
      elementDate: fields[7] as Element,
      sourceIdentityCertificate: fields[8] as String,
      elementSourceIdentityCertificate: fields[9] as Element,
      proxyIdentityCertificate: fields[10] as String,
      elementProxyIdentityCertificate: fields[11] as Element,
      proxySignature: fields[12] as Signature,
      sourceSignature: fields[13] as Signature,
    );
  }

  @override
  void write(BinaryWriter writer, VerificationResult_Attestation obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.who)
      ..writeByte(4)
      ..write(obj.onBehalfOf)
      ..writeByte(5)
      ..write(obj.communicationMethod)
      ..writeByte(6)
      ..write(obj.date)
      ..writeByte(7)
      ..write(obj.elementDate)
      ..writeByte(8)
      ..write(obj.sourceIdentityCertificate)
      ..writeByte(9)
      ..write(obj.elementSourceIdentityCertificate)
      ..writeByte(10)
      ..write(obj.proxyIdentityCertificate)
      ..writeByte(11)
      ..write(obj.elementProxyIdentityCertificate)
      ..writeByte(12)
      ..write(obj.proxySignature)
      ..writeByte(13)
      ..write(obj.sourceSignature);
  }
}

class VerificationResult_ValidatorAdapter
    extends TypeAdapter<VerificationResult_Validator> {
  @override
  final typeId = 655;

  @override
  VerificationResult_Validator read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VerificationResult_Validator(
      fields[3] as Reference,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      identityCertificate: fields[4] as String,
      elementIdentityCertificate: fields[5] as Element,
      attestationSignature: fields[6] as Signature,
    );
  }

  @override
  void write(BinaryWriter writer, VerificationResult_Validator obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.organization)
      ..writeByte(4)
      ..write(obj.identityCertificate)
      ..writeByte(5)
      ..write(obj.elementIdentityCertificate)
      ..writeByte(6)
      ..write(obj.attestationSignature);
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
    json['organization'] == null
        ? null
        : Reference.fromJson(json['organization'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
