import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class Consent {
  static Future<Consent> newInstance(
      {String resourceType,
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
      CodeableConcept scope,
      List<CodeableConcept> category,
      Reference patient,
      DateTime dateTime,
      Element elementDateTime,
      List<Reference> performer,
      List<Reference> organization,
      Attachment sourceAttachment,
      Reference sourceReference,
      List<Consent_Policy> policy,
      CodeableConcept policyRule,
      List<Consent_Verification> verification,
      Consent_Provision provision}) async {
    var fhirDb = new DatabaseHelper();
    Consent newConsent = new Consent(
      resourceType: 'Consent',
      id: await fhirDb.newResourceId('Consent'),
      meta: await Meta.newInstance(),
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
      scope: scope,
      category: category,
      patient: patient,
      dateTime: dateTime,
      elementDateTime: elementDateTime,
      performer: performer,
      organization: organization,
      sourceAttachment: sourceAttachment,
      sourceReference: sourceReference,
      policy: policy,
      policyRule: policyRule,
      verification: verification,
      provision: provision,
    );
    newConsent.meta.createdAt = DateTime.now();
    newConsent.meta.lastUpdated = newConsent.meta.createdAt;
    int saved = await fhirDb.newResource(newConsent);
    return newConsent;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'Consent';
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
  String
      status; // <code> enum: draft/proposed/active/rejected/inactive/entered-in-error;
  Element elementStatus;
  CodeableConcept scope;
  List<CodeableConcept> category;
  Reference patient;
  DateTime dateTime;
  Element elementDateTime;
  List<Reference> performer;
  List<Reference> organization;
  Attachment sourceAttachment;
  Reference sourceReference;
  List<Consent_Policy> policy;
  CodeableConcept policyRule;
  List<Consent_Verification> verification;
  Consent_Provision provision;

  Consent(
      {@required this.resourceType,
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
      @required this.scope,
      @required this.category,
      this.patient,
      this.dateTime,
      this.elementDateTime,
      this.performer,
      this.organization,
      this.sourceAttachment,
      this.sourceReference,
      this.policy,
      this.policyRule,
      this.verification,
      this.provision});

  factory Consent.fromJson(Map<String, dynamic> json) =>
      _$ConsentFromJson(json);
  Map<String, dynamic> toJson() => _$ConsentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Consent_Policy {
  static Future<Consent_Policy> newInstance(
      {String id,
      List<Extension> extension,
      List<Extension> modifierExtension,
      String authority,
      Element elementAuthority,
      String uri,
      Element elementUri}) async {
    var fhirDb = new DatabaseHelper();
    Consent_Policy newConsent_Policy = new Consent_Policy(
      id: await fhirDb.newResourceId('Consent_Policy'),
      extension: extension,
      modifierExtension: modifierExtension,
      authority: authority,
      elementAuthority: elementAuthority,
      uri: uri,
      elementUri: elementUri,
    );
    return newConsent_Policy;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String authority;
  Element elementAuthority;
  String uri;
  Element elementUri;

  Consent_Policy(
      {this.id,
      this.extension,
      this.modifierExtension,
      this.authority,
      this.elementAuthority,
      this.uri,
      this.elementUri});

  factory Consent_Policy.fromJson(Map<String, dynamic> json) =>
      _$Consent_PolicyFromJson(json);
  Map<String, dynamic> toJson() => _$Consent_PolicyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Consent_Verification {
  static Future<Consent_Verification> newInstance(
      {String id,
      List<Extension> extension,
      List<Extension> modifierExtension,
      bool verified,
      Element elementVerified,
      Reference verifiedWith,
      DateTime verificationDate,
      Element elementVerificationDate}) async {
    var fhirDb = new DatabaseHelper();
    Consent_Verification newConsent_Verification = new Consent_Verification(
      id: await fhirDb.newResourceId('Consent_Verification'),
      extension: extension,
      modifierExtension: modifierExtension,
      verified: verified,
      elementVerified: elementVerified,
      verifiedWith: verifiedWith,
      verificationDate: verificationDate,
      elementVerificationDate: elementVerificationDate,
    );
    return newConsent_Verification;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool verified;
  Element elementVerified;
  Reference verifiedWith;
  DateTime verificationDate;
  Element elementVerificationDate;

  Consent_Verification(
      {this.id,
      this.extension,
      this.modifierExtension,
      this.verified,
      this.elementVerified,
      this.verifiedWith,
      this.verificationDate,
      this.elementVerificationDate});

  factory Consent_Verification.fromJson(Map<String, dynamic> json) =>
      _$Consent_VerificationFromJson(json);
  Map<String, dynamic> toJson() => _$Consent_VerificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Consent_Provision {
  static Future<Consent_Provision> newInstance(
      {String id,
      List<Extension> extension,
      List<Extension> modifierExtension,
      String type,
      Element elementType,
      Period period,
      List<Consent_Actor> actor,
      List<CodeableConcept> action,
      List<Coding> securityLabel,
      List<Coding> purpose,
      List<Coding> classs,
      List<CodeableConcept> code,
      Period dataPeriod,
      List<Consent_Data> data,
      List<Consent_Provision> provision}) async {
    var fhirDb = new DatabaseHelper();
    Consent_Provision newConsent_Provision = new Consent_Provision(
      id: await fhirDb.newResourceId('Consent_Provision'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      elementType: elementType,
      period: period,
      actor: actor,
      action: action,
      securityLabel: securityLabel,
      purpose: purpose,
      classs: classs,
      code: code,
      dataPeriod: dataPeriod,
      data: data,
      provision: provision,
    );
    return newConsent_Provision;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type; // <code> enum: deny/permit;
  Element elementType;
  Period period;
  List<Consent_Actor> actor;
  List<CodeableConcept> action;
  List<Coding> securityLabel;
  List<Coding> purpose;
  List<Coding> classs;
  List<CodeableConcept> code;
  Period dataPeriod;
  List<Consent_Data> data;
  List<Consent_Provision> provision;

  Consent_Provision(
      {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.elementType,
      this.period,
      this.actor,
      this.action,
      this.securityLabel,
      this.purpose,
      this.classs,
      this.code,
      this.dataPeriod,
      this.data,
      this.provision});

  factory Consent_Provision.fromJson(Map<String, dynamic> json) =>
      _$Consent_ProvisionFromJson(json);
  Map<String, dynamic> toJson() => _$Consent_ProvisionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Consent_Actor {
  static Future<Consent_Actor> newInstance(
      {String id,
      List<Extension> extension,
      List<Extension> modifierExtension,
      CodeableConcept role,
      Reference reference}) async {
    var fhirDb = new DatabaseHelper();
    Consent_Actor newConsent_Actor = new Consent_Actor(
      id: await fhirDb.newResourceId('Consent_Actor'),
      extension: extension,
      modifierExtension: modifierExtension,
      role: role,
      reference: reference,
    );
    return newConsent_Actor;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept role;
  Reference reference;

  Consent_Actor(
      {this.id,
      this.extension,
      this.modifierExtension,
      @required this.role,
      @required this.reference});

  factory Consent_Actor.fromJson(Map<String, dynamic> json) =>
      _$Consent_ActorFromJson(json);
  Map<String, dynamic> toJson() => _$Consent_ActorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Consent_Data {
  static Future<Consent_Data> newInstance(
      {String id,
      List<Extension> extension,
      List<Extension> modifierExtension,
      String meaning,
      Element elementMeaning,
      Reference reference}) async {
    var fhirDb = new DatabaseHelper();
    Consent_Data newConsent_Data = new Consent_Data(
      id: await fhirDb.newResourceId('Consent_Data'),
      extension: extension,
      modifierExtension: modifierExtension,
      meaning: meaning,
      elementMeaning: elementMeaning,
      reference: reference,
    );
    return newConsent_Data;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String meaning; // <code> enum: instance/related/dependents/authoredby;
  Element elementMeaning;
  Reference reference;

  Consent_Data(
      {this.id,
      this.extension,
      this.modifierExtension,
      this.meaning,
      this.elementMeaning,
      @required this.reference});

  factory Consent_Data.fromJson(Map<String, dynamic> json) =>
      _$Consent_DataFromJson(json);
  Map<String, dynamic> toJson() => _$Consent_DataToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Consent _$ConsentFromJson(Map<String, dynamic> json) {
  return Consent(
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
    scope: json['scope'] == null
        ? null
        : CodeableConcept.fromJson(json['scope'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    dateTime: json['dateTime'] == null
        ? null
        : DateTime.parse(json['dateTime'] as String),
    elementDateTime: json['elementDateTime'] == null
        ? null
        : Element.fromJson(json['elementDateTime'] as Map<String, dynamic>),
    performer: (json['performer'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    organization: (json['organization'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sourceAttachment: json['sourceAttachment'] == null
        ? null
        : Attachment.fromJson(json['sourceAttachment'] as Map<String, dynamic>),
    sourceReference: json['sourceReference'] == null
        ? null
        : Reference.fromJson(json['sourceReference'] as Map<String, dynamic>),
    policy: (json['policy'] as List)
        ?.map((e) => e == null
            ? null
            : Consent_Policy.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    policyRule: json['policyRule'] == null
        ? null
        : CodeableConcept.fromJson(json['policyRule'] as Map<String, dynamic>),
    verification: (json['verification'] as List)
        ?.map((e) => e == null
            ? null
            : Consent_Verification.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    provision: json['provision'] == null
        ? null
        : Consent_Provision.fromJson(json['provision'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ConsentToJson(Consent instance) => <String, dynamic>{
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
      'scope': instance.scope?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'patient': instance.patient?.toJson(),
      'dateTime': instance.dateTime?.toIso8601String(),
      'elementDateTime': instance.elementDateTime?.toJson(),
      'performer': instance.performer?.map((e) => e?.toJson())?.toList(),
      'organization': instance.organization?.map((e) => e?.toJson())?.toList(),
      'sourceAttachment': instance.sourceAttachment?.toJson(),
      'sourceReference': instance.sourceReference?.toJson(),
      'policy': instance.policy?.map((e) => e?.toJson())?.toList(),
      'policyRule': instance.policyRule?.toJson(),
      'verification': instance.verification?.map((e) => e?.toJson())?.toList(),
      'provision': instance.provision?.toJson(),
    };

Consent_Policy _$Consent_PolicyFromJson(Map<String, dynamic> json) {
  return Consent_Policy(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authority: json['authority'] as String,
    elementAuthority: json['elementAuthority'] == null
        ? null
        : Element.fromJson(json['elementAuthority'] as Map<String, dynamic>),
    uri: json['uri'] as String,
    elementUri: json['elementUri'] == null
        ? null
        : Element.fromJson(json['elementUri'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Consent_PolicyToJson(Consent_Policy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'authority': instance.authority,
      'elementAuthority': instance.elementAuthority?.toJson(),
      'uri': instance.uri,
      'elementUri': instance.elementUri?.toJson(),
    };

Consent_Verification _$Consent_VerificationFromJson(Map<String, dynamic> json) {
  return Consent_Verification(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    verified: json['verified'] as bool,
    elementVerified: json['elementVerified'] == null
        ? null
        : Element.fromJson(json['elementVerified'] as Map<String, dynamic>),
    verifiedWith: json['verifiedWith'] == null
        ? null
        : Reference.fromJson(json['verifiedWith'] as Map<String, dynamic>),
    verificationDate: json['verificationDate'] == null
        ? null
        : DateTime.parse(json['verificationDate'] as String),
    elementVerificationDate: json['elementVerificationDate'] == null
        ? null
        : Element.fromJson(
            json['elementVerificationDate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Consent_VerificationToJson(
        Consent_Verification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'verified': instance.verified,
      'elementVerified': instance.elementVerified?.toJson(),
      'verifiedWith': instance.verifiedWith?.toJson(),
      'verificationDate': instance.verificationDate?.toIso8601String(),
      'elementVerificationDate': instance.elementVerificationDate?.toJson(),
    };

Consent_Provision _$Consent_ProvisionFromJson(Map<String, dynamic> json) {
  return Consent_Provision(
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
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    actor: (json['actor'] as List)
        ?.map((e) => e == null
            ? null
            : Consent_Actor.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    action: (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    securityLabel: (json['securityLabel'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    purpose: (json['purpose'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    classs: (json['classs'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: (json['code'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dataPeriod: json['dataPeriod'] == null
        ? null
        : Period.fromJson(json['dataPeriod'] as Map<String, dynamic>),
    data: (json['data'] as List)
        ?.map((e) =>
            e == null ? null : Consent_Data.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    provision: (json['provision'] as List)
        ?.map((e) => e == null
            ? null
            : Consent_Provision.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Consent_ProvisionToJson(Consent_Provision instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'period': instance.period?.toJson(),
      'actor': instance.actor?.map((e) => e?.toJson())?.toList(),
      'action': instance.action?.map((e) => e?.toJson())?.toList(),
      'securityLabel':
          instance.securityLabel?.map((e) => e?.toJson())?.toList(),
      'purpose': instance.purpose?.map((e) => e?.toJson())?.toList(),
      'classs': instance.classs?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'dataPeriod': instance.dataPeriod?.toJson(),
      'data': instance.data?.map((e) => e?.toJson())?.toList(),
      'provision': instance.provision?.map((e) => e?.toJson())?.toList(),
    };

Consent_Actor _$Consent_ActorFromJson(Map<String, dynamic> json) {
  return Consent_Actor(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    role: json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
    reference: json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Consent_ActorToJson(Consent_Actor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'role': instance.role?.toJson(),
      'reference': instance.reference?.toJson(),
    };

Consent_Data _$Consent_DataFromJson(Map<String, dynamic> json) {
  return Consent_Data(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    meaning: json['meaning'] as String,
    elementMeaning: json['elementMeaning'] == null
        ? null
        : Element.fromJson(json['elementMeaning'] as Map<String, dynamic>),
    reference: json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Consent_DataToJson(Consent_Data instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'meaning': instance.meaning,
      'elementMeaning': instance.elementMeaning?.toJson(),
      'reference': instance.reference?.toJson(),
    };
