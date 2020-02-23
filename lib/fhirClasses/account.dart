import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class Account {
  static Future<Account> newInstance({
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
    String name,
    Element elementName,
    List<Reference> subject,
    Period servicePeriod,
    List<Account_Coverage> coverage,
    Reference owner,
    String description,
    Element elementDescription,
    List<Account_Guarantor> guarantor,
    Reference partOf,
  }) async {
    var fhirDb = new DatabaseHelper();
    Account newAccount = new Account(
      resourceType: 'Account',
      id: id ?? await fhirDb.newResourceId('Account'),
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
      name: name,
      elementName: elementName,
      subject: subject,
      servicePeriod: servicePeriod,
      coverage: coverage,
      owner: owner,
      description: description,
      elementDescription: elementDescription,
      guarantor: guarantor,
      partOf: partOf,
    );
    newAccount.meta.createdAt = DateTime.now();
    newAccount.meta.lastUpdated = newAccount.meta.createdAt;
    int saved = await fhirDb.saveResource(newAccount);
    return newAccount;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'Account';
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
  CodeableConcept type;
  String name;
  Element elementName;
  List<Reference> subject;
  Period servicePeriod;
  List<Account_Coverage> coverage;
  Reference owner;
  String description;
  Element elementDescription;
  List<Account_Guarantor> guarantor;
  Reference partOf;

  Account({
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
    this.name,
    this.elementName,
    this.subject,
    this.servicePeriod,
    this.coverage,
    this.owner,
    this.description,
    this.elementDescription,
    this.guarantor,
    this.partOf,
  });

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}

class Account_Coverage {
  static Future<Account_Coverage> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Reference coverage,
    int priority,
    Element elementPriority,
  }) async {
    var fhirDb = new DatabaseHelper();
    Account_Coverage newAccount_Coverage = new Account_Coverage(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      coverage: coverage,
      priority: priority,
      elementPriority: elementPriority,
    );
    return newAccount_Coverage;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference coverage;
  int priority;
  Element elementPriority;

  Account_Coverage({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.coverage,
    this.priority,
    this.elementPriority,
  });

  factory Account_Coverage.fromJson(Map<String, dynamic> json) =>
      _$Account_CoverageFromJson(json);
  Map<String, dynamic> toJson() => _$Account_CoverageToJson(this);
}

class Account_Guarantor {
  static Future<Account_Guarantor> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Reference party,
    bool onHold,
    Element elementOnHold,
    Period period,
  }) async {
    var fhirDb = new DatabaseHelper();
    Account_Guarantor newAccount_Guarantor = new Account_Guarantor(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      party: party,
      onHold: onHold,
      elementOnHold: elementOnHold,
      period: period,
    );
    return newAccount_Guarantor;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference party;
  bool onHold;
  Element elementOnHold;
  Period period;

  Account_Guarantor({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.party,
    this.onHold,
    this.elementOnHold,
    this.period,
  });

  factory Account_Guarantor.fromJson(Map<String, dynamic> json) =>
      _$Account_GuarantorFromJson(json);
  Map<String, dynamic> toJson() => _$Account_GuarantorToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) {
  return Account(
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
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    subject: (json['subject'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    servicePeriod: json['servicePeriod'] == null
        ? null
        : Period.fromJson(json['servicePeriod'] as Map<String, dynamic>),
    coverage: (json['coverage'] as List)
        ?.map((e) => e == null
            ? null
            : Account_Coverage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    owner: json['owner'] == null
        ? null
        : Reference.fromJson(json['owner'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    guarantor: (json['guarantor'] as List)
        ?.map((e) => e == null
            ? null
            : Account_Guarantor.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    partOf: json['partOf'] == null
        ? null
        : Reference.fromJson(json['partOf'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AccountToJson(Account instance) {
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
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('subject', instance.subject?.map((e) => e?.toJson())?.toList());
  writeNotNull('servicePeriod', instance.servicePeriod?.toJson());
  writeNotNull(
      'coverage', instance.coverage?.map((e) => e?.toJson())?.toList());
  writeNotNull('owner', instance.owner?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull(
      'guarantor', instance.guarantor?.map((e) => e?.toJson())?.toList());
  writeNotNull('partOf', instance.partOf?.toJson());
  return val;
}

Account_Coverage _$Account_CoverageFromJson(Map<String, dynamic> json) {
  return Account_Coverage(
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
    priority: json['priority'] as int,
    elementPriority: json['elementPriority'] == null
        ? null
        : Element.fromJson(json['elementPriority'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Account_CoverageToJson(Account_Coverage instance) {
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
  writeNotNull('coverage', instance.coverage?.toJson());
  writeNotNull('priority', instance.priority);
  writeNotNull('elementPriority', instance.elementPriority?.toJson());
  return val;
}

Account_Guarantor _$Account_GuarantorFromJson(Map<String, dynamic> json) {
  return Account_Guarantor(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    party: json['party'] == null
        ? null
        : Reference.fromJson(json['party'] as Map<String, dynamic>),
    onHold: json['onHold'] as bool,
    elementOnHold: json['elementOnHold'] == null
        ? null
        : Element.fromJson(json['elementOnHold'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Account_GuarantorToJson(Account_Guarantor instance) {
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
  writeNotNull('party', instance.party?.toJson());
  writeNotNull('onHold', instance.onHold);
  writeNotNull('elementOnHold', instance.elementOnHold?.toJson());
  writeNotNull('period', instance.period?.toJson());
  return val;
}
