import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
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

class Consent {
  static Future<Consent> newInstance({
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
    Consent_Provision provision,
  }) async {
    var fhirDb = new DatabaseHelper();
    Consent newConsent = new Consent(
      resourceType: 'Consent',
      id: id ?? await fhirDb.newResourceId('Consent'),
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
    int saved = await fhirDb.saveResource(newConsent);
    return newConsent;
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
  String resourceType = 'Consent';
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
  CodeableConcept scope;
  @HiveField(15)
  List<CodeableConcept> category;
  @HiveField(16)
  Reference patient;
  @HiveField(17)
  DateTime dateTime;
  @HiveField(18)
  Element elementDateTime;
  @HiveField(19)
  List<Reference> performer;
  @HiveField(20)
  List<Reference> organization;
  @HiveField(21)
  Attachment sourceAttachment;
  @HiveField(22)
  Reference sourceReference;
  @HiveField(23)
  List<Consent_Policy> policy;
  @HiveField(24)
  CodeableConcept policyRule;
  @HiveField(25)
  List<Consent_Verification> verification;
  @HiveField(26)
  Consent_Provision provision;

  Consent({
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
    this.provision,
  });

  factory Consent.fromJson(Map<String, dynamic> json) =>
      _$ConsentFromJson(json);
  Map<String, dynamic> toJson() => _$ConsentToJson(this);
}

class Consent_Policy {
  static Future<Consent_Policy> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String authority,
    Element elementAuthority,
    String uri,
    Element elementUri,
  }) async {
    var fhirDb = new DatabaseHelper();
    Consent_Policy newConsent_Policy = new Consent_Policy(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      authority: authority,
      elementAuthority: elementAuthority,
      uri: uri,
      elementUri: elementUri,
    );
    return newConsent_Policy;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String authority;
  @HiveField(4)
  Element elementAuthority;
  @HiveField(5)
  String uri;
  @HiveField(6)
  Element elementUri;

  Consent_Policy({
    this.id,
    this.extension,
    this.modifierExtension,
    this.authority,
    this.elementAuthority,
    this.uri,
    this.elementUri,
  });

  factory Consent_Policy.fromJson(Map<String, dynamic> json) =>
      _$Consent_PolicyFromJson(json);
  Map<String, dynamic> toJson() => _$Consent_PolicyToJson(this);
}

class Consent_Verification {
  static Future<Consent_Verification> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    bool verified,
    Element elementVerified,
    Reference verifiedWith,
    DateTime verificationDate,
    Element elementVerificationDate,
  }) async {
    var fhirDb = new DatabaseHelper();
    Consent_Verification newConsent_Verification = new Consent_Verification(
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  bool verified;
  @HiveField(4)
  Element elementVerified;
  @HiveField(5)
  Reference verifiedWith;
  @HiveField(6)
  DateTime verificationDate;
  @HiveField(7)
  Element elementVerificationDate;

  Consent_Verification({
    this.id,
    this.extension,
    this.modifierExtension,
    this.verified,
    this.elementVerified,
    this.verifiedWith,
    this.verificationDate,
    this.elementVerificationDate,
  });

  factory Consent_Verification.fromJson(Map<String, dynamic> json) =>
      _$Consent_VerificationFromJson(json);
  Map<String, dynamic> toJson() => _$Consent_VerificationToJson(this);
}

class Consent_Provision {
  static Future<Consent_Provision> newInstance({
    String id,
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
    List<Consent_Provision> provision,
  }) async {
    var fhirDb = new DatabaseHelper();
    Consent_Provision newConsent_Provision = new Consent_Provision(
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String type;
  @HiveField(4)
  Element elementType;
  @HiveField(5)
  Period period;
  @HiveField(6)
  List<Consent_Actor> actor;
  @HiveField(7)
  List<CodeableConcept> action;
  @HiveField(8)
  List<Coding> securityLabel;
  @HiveField(9)
  List<Coding> purpose;
  @HiveField(10)
  List<Coding> classs;
  @HiveField(11)
  List<CodeableConcept> code;
  @HiveField(12)
  Period dataPeriod;
  @HiveField(13)
  List<Consent_Data> data;
  @HiveField(14)
  List<Consent_Provision> provision;

  Consent_Provision({
    this.id,
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
    this.provision,
  });

  factory Consent_Provision.fromJson(Map<String, dynamic> json) =>
      _$Consent_ProvisionFromJson(json);
  Map<String, dynamic> toJson() => _$Consent_ProvisionToJson(this);
}

class Consent_Actor {
  static Future<Consent_Actor> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept role,
    Reference reference,
  }) async {
    var fhirDb = new DatabaseHelper();
    Consent_Actor newConsent_Actor = new Consent_Actor(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      role: role,
      reference: reference,
    );
    return newConsent_Actor;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept role;
  @HiveField(4)
  Reference reference;

  Consent_Actor({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.role,
    @required this.reference,
  });

  factory Consent_Actor.fromJson(Map<String, dynamic> json) =>
      _$Consent_ActorFromJson(json);
  Map<String, dynamic> toJson() => _$Consent_ActorToJson(this);
}

class Consent_Data {
  static Future<Consent_Data> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String meaning,
    Element elementMeaning,
    Reference reference,
  }) async {
    var fhirDb = new DatabaseHelper();
    Consent_Data newConsent_Data = new Consent_Data(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      meaning: meaning,
      elementMeaning: elementMeaning,
      reference: reference,
    );
    return newConsent_Data;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String meaning;
  @HiveField(4)
  Element elementMeaning;
  @HiveField(5)
  Reference reference;

  Consent_Data({
    this.id,
    this.extension,
    this.modifierExtension,
    this.meaning,
    this.elementMeaning,
    @required this.reference,
  });

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

Map<String, dynamic> _$ConsentToJson(Consent instance) {
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
  writeNotNull('scope', instance.scope?.toJson());
  writeNotNull(
      'category', instance.category?.map((e) => e?.toJson())?.toList());
  writeNotNull('patient', instance.patient?.toJson());
  writeNotNull('dateTime', instance.dateTime?.toIso8601String());
  writeNotNull('elementDateTime', instance.elementDateTime?.toJson());
  writeNotNull(
      'performer', instance.performer?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'organization', instance.organization?.map((e) => e?.toJson())?.toList());
  writeNotNull('sourceAttachment', instance.sourceAttachment?.toJson());
  writeNotNull('sourceReference', instance.sourceReference?.toJson());
  writeNotNull('policy', instance.policy?.map((e) => e?.toJson())?.toList());
  writeNotNull('policyRule', instance.policyRule?.toJson());
  writeNotNull(
      'verification', instance.verification?.map((e) => e?.toJson())?.toList());
  writeNotNull('provision', instance.provision?.toJson());
  return val;
}

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

Map<String, dynamic> _$Consent_PolicyToJson(Consent_Policy instance) {
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
  writeNotNull('authority', instance.authority);
  writeNotNull('elementAuthority', instance.elementAuthority?.toJson());
  writeNotNull('uri', instance.uri);
  writeNotNull('elementUri', instance.elementUri?.toJson());
  return val;
}

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
    Consent_Verification instance) {
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
  writeNotNull('verified', instance.verified);
  writeNotNull('elementVerified', instance.elementVerified?.toJson());
  writeNotNull('verifiedWith', instance.verifiedWith?.toJson());
  writeNotNull(
      'verificationDate', instance.verificationDate?.toIso8601String());
  writeNotNull(
      'elementVerificationDate', instance.elementVerificationDate?.toJson());
  return val;
}

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

Map<String, dynamic> _$Consent_ProvisionToJson(Consent_Provision instance) {
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
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('actor', instance.actor?.map((e) => e?.toJson())?.toList());
  writeNotNull('action', instance.action?.map((e) => e?.toJson())?.toList());
  writeNotNull('securityLabel',
      instance.securityLabel?.map((e) => e?.toJson())?.toList());
  writeNotNull('purpose', instance.purpose?.map((e) => e?.toJson())?.toList());
  writeNotNull('classs', instance.classs?.map((e) => e?.toJson())?.toList());
  writeNotNull('code', instance.code?.map((e) => e?.toJson())?.toList());
  writeNotNull('dataPeriod', instance.dataPeriod?.toJson());
  writeNotNull('data', instance.data?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'provision', instance.provision?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$Consent_ActorToJson(Consent_Actor instance) {
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
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('reference', instance.reference?.toJson());
  return val;
}

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

Map<String, dynamic> _$Consent_DataToJson(Consent_Data instance) {
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
  writeNotNull('meaning', instance.meaning);
  writeNotNull('elementMeaning', instance.elementMeaning?.toJson());
  writeNotNull('reference', instance.reference?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ConsentAdapter extends TypeAdapter<Consent> {
  @override
  Consent read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Consent(
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
      scope: fields[14] as CodeableConcept,
      category: (fields[15] as List)?.cast<CodeableConcept>(),
      patient: fields[16] as Reference,
      dateTime: fields[17] as DateTime,
      elementDateTime: fields[18] as Element,
      performer: (fields[19] as List)?.cast<Reference>(),
      organization: (fields[20] as List)?.cast<Reference>(),
      sourceAttachment: fields[21] as Attachment,
      sourceReference: fields[22] as Reference,
      policy: (fields[23] as List)?.cast<Consent_Policy>(),
      policyRule: fields[24] as CodeableConcept,
      verification: (fields[25] as List)?.cast<Consent_Verification>(),
      provision: fields[26] as Consent_Provision,
    );
  }

  @override
  void write(BinaryWriter writer, Consent obj) {
    writer
      ..writeByte(27)
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
      ..write(obj.scope)
      ..writeByte(15)
      ..write(obj.category)
      ..writeByte(16)
      ..write(obj.patient)
      ..writeByte(17)
      ..write(obj.dateTime)
      ..writeByte(18)
      ..write(obj.elementDateTime)
      ..writeByte(19)
      ..write(obj.performer)
      ..writeByte(20)
      ..write(obj.organization)
      ..writeByte(21)
      ..write(obj.sourceAttachment)
      ..writeByte(22)
      ..write(obj.sourceReference)
      ..writeByte(23)
      ..write(obj.policy)
      ..writeByte(24)
      ..write(obj.policyRule)
      ..writeByte(25)
      ..write(obj.verification)
      ..writeByte(26)
      ..write(obj.provision);
  }
}

class Consent_PolicyAdapter extends TypeAdapter<Consent_Policy> {
  @override
  Consent_Policy read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Consent_Policy(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      authority: fields[3] as String,
      elementAuthority: fields[4] as Element,
      uri: fields[5] as String,
      elementUri: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Consent_Policy obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.authority)
      ..writeByte(4)
      ..write(obj.elementAuthority)
      ..writeByte(5)
      ..write(obj.uri)
      ..writeByte(6)
      ..write(obj.elementUri);
  }
}

class Consent_VerificationAdapter extends TypeAdapter<Consent_Verification> {
  @override
  Consent_Verification read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Consent_Verification(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      verified: fields[3] as bool,
      elementVerified: fields[4] as Element,
      verifiedWith: fields[5] as Reference,
      verificationDate: fields[6] as DateTime,
      elementVerificationDate: fields[7] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Consent_Verification obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.verified)
      ..writeByte(4)
      ..write(obj.elementVerified)
      ..writeByte(5)
      ..write(obj.verifiedWith)
      ..writeByte(6)
      ..write(obj.verificationDate)
      ..writeByte(7)
      ..write(obj.elementVerificationDate);
  }
}

class Consent_ProvisionAdapter extends TypeAdapter<Consent_Provision> {
  @override
  Consent_Provision read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Consent_Provision(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as String,
      elementType: fields[4] as Element,
      period: fields[5] as Period,
      actor: (fields[6] as List)?.cast<Consent_Actor>(),
      action: (fields[7] as List)?.cast<CodeableConcept>(),
      securityLabel: (fields[8] as List)?.cast<Coding>(),
      purpose: (fields[9] as List)?.cast<Coding>(),
      classs: (fields[10] as List)?.cast<Coding>(),
      code: (fields[11] as List)?.cast<CodeableConcept>(),
      dataPeriod: fields[12] as Period,
      data: (fields[13] as List)?.cast<Consent_Data>(),
      provision: (fields[14] as List)?.cast<Consent_Provision>(),
    );
  }

  @override
  void write(BinaryWriter writer, Consent_Provision obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.elementType)
      ..writeByte(5)
      ..write(obj.period)
      ..writeByte(6)
      ..write(obj.actor)
      ..writeByte(7)
      ..write(obj.action)
      ..writeByte(8)
      ..write(obj.securityLabel)
      ..writeByte(9)
      ..write(obj.purpose)
      ..writeByte(10)
      ..write(obj.classs)
      ..writeByte(11)
      ..write(obj.code)
      ..writeByte(12)
      ..write(obj.dataPeriod)
      ..writeByte(13)
      ..write(obj.data)
      ..writeByte(14)
      ..write(obj.provision);
  }
}

class Consent_ActorAdapter extends TypeAdapter<Consent_Actor> {
  @override
  Consent_Actor read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Consent_Actor(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      role: fields[3] as CodeableConcept,
      reference: fields[4] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Consent_Actor obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.role)
      ..writeByte(4)
      ..write(obj.reference);
  }
}

class Consent_DataAdapter extends TypeAdapter<Consent_Data> {
  @override
  Consent_Data read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Consent_Data(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      meaning: fields[3] as String,
      elementMeaning: fields[4] as Element,
      reference: fields[5] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Consent_Data obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.meaning)
      ..writeByte(4)
      ..write(obj.elementMeaning)
      ..writeByte(5)
      ..write(obj.reference);
  }
}
