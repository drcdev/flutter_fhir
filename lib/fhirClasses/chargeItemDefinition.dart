import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class ChargeItemDefinition {
  static Future<ChargeItemDefinition> newInstance({
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
    String url,
    Element elementUrl,
    List<Identifier> identifier,
    String version,
    Element elementVersion,
    String title,
    Element elementTitle,
    List<String> derivedFromUri,
    List<Element> elementDerivedFromUri,
    List<String> partOf,
    List<String> replaces,
    String status,
    Element elementStatus,
    bool experimental,
    Element elementExperimental,
    DateTime date,
    Element elementDate,
    String publisher,
    Element elementPublisher,
    List<ContactDetail> contact,
    String description,
    Element elementDescription,
    List<UsageContext> useContext,
    List<CodeableConcept> jurisdiction,
    String copyright,
    Element elementCopyright,
    String approvalDate,
    Element elementApprovalDate,
    String lastReviewDate,
    Element elementLastReviewDate,
    Period effectivePeriod,
    CodeableConcept code,
    List<Reference> instance,
    List<ChargeItemDefinition_Applicability> applicability,
    List<ChargeItemDefinition_PropertyGroup> propertyGroup,
  }) async {
    var fhirDb = new DatabaseHelper();
    ChargeItemDefinition newChargeItemDefinition = new ChargeItemDefinition(
      resourceType: 'ChargeItemDefinition',
      id: id ?? await fhirDb.newResourceId('ChargeItemDefinition'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      url: url,
      elementUrl: elementUrl,
      identifier: identifier,
      version: version,
      elementVersion: elementVersion,
      title: title,
      elementTitle: elementTitle,
      derivedFromUri: derivedFromUri,
      elementDerivedFromUri: elementDerivedFromUri,
      partOf: partOf,
      replaces: replaces,
      status: status,
      elementStatus: elementStatus,
      experimental: experimental,
      elementExperimental: elementExperimental,
      date: date,
      elementDate: elementDate,
      publisher: publisher,
      elementPublisher: elementPublisher,
      contact: contact,
      description: description,
      elementDescription: elementDescription,
      useContext: useContext,
      jurisdiction: jurisdiction,
      copyright: copyright,
      elementCopyright: elementCopyright,
      approvalDate: approvalDate,
      elementApprovalDate: elementApprovalDate,
      lastReviewDate: lastReviewDate,
      elementLastReviewDate: elementLastReviewDate,
      effectivePeriod: effectivePeriod,
      code: code,
      instance: instance,
      applicability: applicability,
      propertyGroup: propertyGroup,
    );
    newChargeItemDefinition.meta.createdAt = DateTime.now();
    newChargeItemDefinition.meta.lastUpdated =
        newChargeItemDefinition.meta.createdAt;
    int saved = await fhirDb.saveResource(newChargeItemDefinition);
    return newChargeItemDefinition;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'ChargeItemDefinition';
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
  String url;
  Element elementUrl;
  List<Identifier> identifier;
  String version;
  Element elementVersion;
  String title;
  Element elementTitle;
  List<String> derivedFromUri;
  List<Element> elementDerivedFromUri;
  List<String> partOf;
  List<String> replaces;
  String status;
  Element elementStatus;
  bool experimental;
  Element elementExperimental;
  DateTime date;
  Element elementDate;
  String publisher;
  Element elementPublisher;
  List<ContactDetail> contact;
  String description;
  Element elementDescription;
  List<UsageContext> useContext;
  List<CodeableConcept> jurisdiction;
  String copyright;
  Element elementCopyright;
  String approvalDate;
  Element elementApprovalDate;
  String lastReviewDate;
  Element elementLastReviewDate;
  Period effectivePeriod;
  CodeableConcept code;
  List<Reference> instance;
  List<ChargeItemDefinition_Applicability> applicability;
  List<ChargeItemDefinition_PropertyGroup> propertyGroup;

  ChargeItemDefinition({
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
    this.url,
    this.elementUrl,
    this.identifier,
    this.version,
    this.elementVersion,
    this.title,
    this.elementTitle,
    this.derivedFromUri,
    this.elementDerivedFromUri,
    this.partOf,
    this.replaces,
    this.status,
    this.elementStatus,
    this.experimental,
    this.elementExperimental,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.description,
    this.elementDescription,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    this.elementCopyright,
    this.approvalDate,
    this.elementApprovalDate,
    this.lastReviewDate,
    this.elementLastReviewDate,
    this.effectivePeriod,
    this.code,
    this.instance,
    this.applicability,
    this.propertyGroup,
  });

  factory ChargeItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$ChargeItemDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChargeItemDefinition_Applicability {
  static Future<ChargeItemDefinition_Applicability> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String description,
    Element elementDescription,
    String language,
    Element elementLanguage,
    String expression,
    Element elementExpression,
  }) async {
    var fhirDb = new DatabaseHelper();
    ChargeItemDefinition_Applicability newChargeItemDefinition_Applicability =
        new ChargeItemDefinition_Applicability(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      description: description,
      elementDescription: elementDescription,
      language: language,
      elementLanguage: elementLanguage,
      expression: expression,
      elementExpression: elementExpression,
    );
    return newChargeItemDefinition_Applicability;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element elementDescription;
  String language;
  Element elementLanguage;
  String expression;
  Element elementExpression;

  ChargeItemDefinition_Applicability({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.language,
    this.elementLanguage,
    this.expression,
    this.elementExpression,
  });

  factory ChargeItemDefinition_Applicability.fromJson(
          Map<String, dynamic> json) =>
      _$ChargeItemDefinition_ApplicabilityFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ChargeItemDefinition_ApplicabilityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChargeItemDefinition_PropertyGroup {
  static Future<ChargeItemDefinition_PropertyGroup> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<ChargeItemDefinition_Applicability> applicability,
    List<ChargeItemDefinition_PriceComponent> priceComponent,
  }) async {
    var fhirDb = new DatabaseHelper();
    ChargeItemDefinition_PropertyGroup newChargeItemDefinition_PropertyGroup =
        new ChargeItemDefinition_PropertyGroup(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      applicability: applicability,
      priceComponent: priceComponent,
    );
    return newChargeItemDefinition_PropertyGroup;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<ChargeItemDefinition_Applicability> applicability;
  List<ChargeItemDefinition_PriceComponent> priceComponent;

  ChargeItemDefinition_PropertyGroup({
    this.id,
    this.extension,
    this.modifierExtension,
    this.applicability,
    this.priceComponent,
  });

  factory ChargeItemDefinition_PropertyGroup.fromJson(
          Map<String, dynamic> json) =>
      _$ChargeItemDefinition_PropertyGroupFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ChargeItemDefinition_PropertyGroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChargeItemDefinition_PriceComponent {
  static Future<ChargeItemDefinition_PriceComponent> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String type,
    Element elementType,
    CodeableConcept code,
    double factor,
    Element elementFactor,
    Money amount,
  }) async {
    var fhirDb = new DatabaseHelper();
    ChargeItemDefinition_PriceComponent newChargeItemDefinition_PriceComponent =
        new ChargeItemDefinition_PriceComponent(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      elementType: elementType,
      code: code,
      factor: factor,
      elementFactor: elementFactor,
      amount: amount,
    );
    return newChargeItemDefinition_PriceComponent;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element elementType;
  CodeableConcept code;
  double factor;
  Element elementFactor;
  Money amount;

  ChargeItemDefinition_PriceComponent({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.code,
    this.factor,
    this.elementFactor,
    this.amount,
  });

  factory ChargeItemDefinition_PriceComponent.fromJson(
          Map<String, dynamic> json) =>
      _$ChargeItemDefinition_PriceComponentFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ChargeItemDefinition_PriceComponentToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargeItemDefinition _$ChargeItemDefinitionFromJson(Map<String, dynamic> json) {
  return ChargeItemDefinition(
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
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    derivedFromUri:
        (json['derivedFromUri'] as List)?.map((e) => e as String)?.toList(),
    elementDerivedFromUri: (json['elementDerivedFromUri'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    partOf: (json['partOf'] as List)?.map((e) => e as String)?.toList(),
    replaces: (json['replaces'] as List)?.map((e) => e as String)?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    experimental: json['experimental'] as bool,
    elementExperimental: json['elementExperimental'] == null
        ? null
        : Element.fromJson(json['elementExperimental'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    publisher: json['publisher'] as String,
    elementPublisher: json['elementPublisher'] == null
        ? null
        : Element.fromJson(json['elementPublisher'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    useContext: (json['useContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
    approvalDate: json['approvalDate'] as String,
    elementApprovalDate: json['elementApprovalDate'] == null
        ? null
        : Element.fromJson(json['elementApprovalDate'] as Map<String, dynamic>),
    lastReviewDate: json['lastReviewDate'] as String,
    elementLastReviewDate: json['elementLastReviewDate'] == null
        ? null
        : Element.fromJson(
            json['elementLastReviewDate'] as Map<String, dynamic>),
    effectivePeriod: json['effectivePeriod'] == null
        ? null
        : Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    instance: (json['instance'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    applicability: (json['applicability'] as List)
        ?.map((e) => e == null
            ? null
            : ChargeItemDefinition_Applicability.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    propertyGroup: (json['propertyGroup'] as List)
        ?.map((e) => e == null
            ? null
            : ChargeItemDefinition_PropertyGroup.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ChargeItemDefinitionToJson(
        ChargeItemDefinition instance) =>
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
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'derivedFromUri': instance.derivedFromUri,
      'elementDerivedFromUri':
          instance.elementDerivedFromUri?.map((e) => e?.toJson())?.toList(),
      'partOf': instance.partOf,
      'replaces': instance.replaces,
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'experimental': instance.experimental,
      'elementExperimental': instance.elementExperimental?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'publisher': instance.publisher,
      'elementPublisher': instance.elementPublisher?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'copyright': instance.copyright,
      'elementCopyright': instance.elementCopyright?.toJson(),
      'approvalDate': instance.approvalDate,
      'elementApprovalDate': instance.elementApprovalDate?.toJson(),
      'lastReviewDate': instance.lastReviewDate,
      'elementLastReviewDate': instance.elementLastReviewDate?.toJson(),
      'effectivePeriod': instance.effectivePeriod?.toJson(),
      'code': instance.code?.toJson(),
      'instance': instance.instance?.map((e) => e?.toJson())?.toList(),
      'applicability':
          instance.applicability?.map((e) => e?.toJson())?.toList(),
      'propertyGroup':
          instance.propertyGroup?.map((e) => e?.toJson())?.toList(),
    };

ChargeItemDefinition_Applicability _$ChargeItemDefinition_ApplicabilityFromJson(
    Map<String, dynamic> json) {
  return ChargeItemDefinition_Applicability(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ChargeItemDefinition_ApplicabilityToJson(
        ChargeItemDefinition_Applicability instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'expression': instance.expression,
      'elementExpression': instance.elementExpression?.toJson(),
    };

ChargeItemDefinition_PropertyGroup _$ChargeItemDefinition_PropertyGroupFromJson(
    Map<String, dynamic> json) {
  return ChargeItemDefinition_PropertyGroup(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    applicability: (json['applicability'] as List)
        ?.map((e) => e == null
            ? null
            : ChargeItemDefinition_Applicability.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    priceComponent: (json['priceComponent'] as List)
        ?.map((e) => e == null
            ? null
            : ChargeItemDefinition_PriceComponent.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ChargeItemDefinition_PropertyGroupToJson(
        ChargeItemDefinition_PropertyGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'applicability':
          instance.applicability?.map((e) => e?.toJson())?.toList(),
      'priceComponent':
          instance.priceComponent?.map((e) => e?.toJson())?.toList(),
    };

ChargeItemDefinition_PriceComponent
    _$ChargeItemDefinition_PriceComponentFromJson(Map<String, dynamic> json) {
  return ChargeItemDefinition_PriceComponent(
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
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    factor: (json['factor'] as num)?.toDouble(),
    elementFactor: json['elementFactor'] == null
        ? null
        : Element.fromJson(json['elementFactor'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Money.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ChargeItemDefinition_PriceComponentToJson(
        ChargeItemDefinition_PriceComponent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'code': instance.code?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'amount': instance.amount?.toJson(),
    };
