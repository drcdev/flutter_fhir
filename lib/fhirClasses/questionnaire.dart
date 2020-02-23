import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
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

class Questionnaire {
  static Future<Questionnaire> newInstance({
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
    String name,
    Element elementName,
    String title,
    Element elementTitle,
    List<String> derivedFrom,
    String status,
    Element elementStatus,
    bool experimental,
    Element elementExperimental,
    List<String> subjectType,
    List<Element> elementSubjectType,
    DateTime date,
    Element elementDate,
    String publisher,
    Element elementPublisher,
    List<ContactDetail> contact,
    String description,
    Element elementDescription,
    List<UsageContext> useContext,
    List<CodeableConcept> jurisdiction,
    String purpose,
    Element elementPurpose,
    String copyright,
    Element elementCopyright,
    String approvalDate,
    Element elementApprovalDate,
    String lastReviewDate,
    Element elementLastReviewDate,
    Period effectivePeriod,
    List<Coding> code,
    List<Questionnaire_Item> item,
  }) async {
    var fhirDb = new DatabaseHelper();
    Questionnaire newQuestionnaire = new Questionnaire(
      resourceType: 'Questionnaire',
      id: id ?? await fhirDb.newResourceId('Questionnaire'),
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
      name: name,
      elementName: elementName,
      title: title,
      elementTitle: elementTitle,
      derivedFrom: derivedFrom,
      status: status,
      elementStatus: elementStatus,
      experimental: experimental,
      elementExperimental: elementExperimental,
      subjectType: subjectType,
      elementSubjectType: elementSubjectType,
      date: date,
      elementDate: elementDate,
      publisher: publisher,
      elementPublisher: elementPublisher,
      contact: contact,
      description: description,
      elementDescription: elementDescription,
      useContext: useContext,
      jurisdiction: jurisdiction,
      purpose: purpose,
      elementPurpose: elementPurpose,
      copyright: copyright,
      elementCopyright: elementCopyright,
      approvalDate: approvalDate,
      elementApprovalDate: elementApprovalDate,
      lastReviewDate: lastReviewDate,
      elementLastReviewDate: elementLastReviewDate,
      effectivePeriod: effectivePeriod,
      code: code,
      item: item,
    );
    newQuestionnaire.meta.createdAt = DateTime.now();
    newQuestionnaire.meta.lastUpdated = newQuestionnaire.meta.createdAt;
    int saved = await fhirDb.saveResource(newQuestionnaire);
    return newQuestionnaire;
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
  String resourceType = 'Questionnaire';
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
  String url;
  @HiveField(12)
  Element elementUrl;
  @HiveField(13)
  List<Identifier> identifier;
  @HiveField(14)
  String version;
  @HiveField(15)
  Element elementVersion;
  @HiveField(16)
  String name;
  @HiveField(17)
  Element elementName;
  @HiveField(18)
  String title;
  @HiveField(19)
  Element elementTitle;
  @HiveField(20)
  List<String> derivedFrom;
  @HiveField(21)
  String status;
  @HiveField(22)
  Element elementStatus;
  @HiveField(23)
  bool experimental;
  @HiveField(24)
  Element elementExperimental;
  @HiveField(25)
  List<String> subjectType;
  @HiveField(26)
  List<Element> elementSubjectType;
  @HiveField(27)
  DateTime date;
  @HiveField(28)
  Element elementDate;
  @HiveField(29)
  String publisher;
  @HiveField(30)
  Element elementPublisher;
  @HiveField(31)
  List<ContactDetail> contact;
  @HiveField(32)
  String description;
  @HiveField(33)
  Element elementDescription;
  @HiveField(34)
  List<UsageContext> useContext;
  @HiveField(35)
  List<CodeableConcept> jurisdiction;
  @HiveField(36)
  String purpose;
  @HiveField(37)
  Element elementPurpose;
  @HiveField(38)
  String copyright;
  @HiveField(39)
  Element elementCopyright;
  @HiveField(40)
  String approvalDate;
  @HiveField(41)
  Element elementApprovalDate;
  @HiveField(42)
  String lastReviewDate;
  @HiveField(43)
  Element elementLastReviewDate;
  @HiveField(44)
  Period effectivePeriod;
  @HiveField(45)
  List<Coding> code;
  @HiveField(46)
  List<Questionnaire_Item> item;

  Questionnaire({
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
    this.name,
    this.elementName,
    this.title,
    this.elementTitle,
    this.derivedFrom,
    this.status,
    this.elementStatus,
    this.experimental,
    this.elementExperimental,
    this.subjectType,
    this.elementSubjectType,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.description,
    this.elementDescription,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.elementPurpose,
    this.copyright,
    this.elementCopyright,
    this.approvalDate,
    this.elementApprovalDate,
    this.lastReviewDate,
    this.elementLastReviewDate,
    this.effectivePeriod,
    this.code,
    this.item,
  });

  factory Questionnaire.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionnaireToJson(this);
}

class Questionnaire_Item {
  static Future<Questionnaire_Item> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String linkId,
    Element elementLinkId,
    String definition,
    Element elementDefinition,
    List<Coding> code,
    String prefix,
    Element elementPrefix,
    String text,
    Element elementText,
    String type,
    Element elementType,
    List<Questionnaire_EnableWhen> enableWhen,
    String enableBehavior,
    Element elementEnableBehavior,
    bool required,
    Element elementRequired,
    bool repeats,
    Element elementRepeats,
    bool readOnly,
    Element elementReadOnly,
    int maxLength,
    Element elementMaxLength,
    String answerValueSet,
    List<Questionnaire_AnswerOption> answerOption,
    List<Questionnaire_Initial> initial,
    List<Questionnaire_Item> item,
  }) async {
    var fhirDb = new DatabaseHelper();
    Questionnaire_Item newQuestionnaire_Item = new Questionnaire_Item(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      linkId: linkId,
      elementLinkId: elementLinkId,
      definition: definition,
      elementDefinition: elementDefinition,
      code: code,
      prefix: prefix,
      elementPrefix: elementPrefix,
      text: text,
      elementText: elementText,
      type: type,
      elementType: elementType,
      enableWhen: enableWhen,
      enableBehavior: enableBehavior,
      elementEnableBehavior: elementEnableBehavior,
      required: required,
      elementRequired: elementRequired,
      repeats: repeats,
      elementRepeats: elementRepeats,
      readOnly: readOnly,
      elementReadOnly: elementReadOnly,
      maxLength: maxLength,
      elementMaxLength: elementMaxLength,
      answerValueSet: answerValueSet,
      answerOption: answerOption,
      initial: initial,
      item: item,
    );
    return newQuestionnaire_Item;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String linkId;
  @HiveField(4)
  Element elementLinkId;
  @HiveField(5)
  String definition;
  @HiveField(6)
  Element elementDefinition;
  @HiveField(7)
  List<Coding> code;
  @HiveField(8)
  String prefix;
  @HiveField(9)
  Element elementPrefix;
  @HiveField(10)
  String text;
  @HiveField(11)
  Element elementText;
  @HiveField(12)
  String type;
  @HiveField(13)
  Element elementType;
  @HiveField(14)
  List<Questionnaire_EnableWhen> enableWhen;
  @HiveField(15)
  String enableBehavior;
  @HiveField(16)
  Element elementEnableBehavior;
  @HiveField(17)
  bool required;
  @HiveField(18)
  Element elementRequired;
  @HiveField(19)
  bool repeats;
  @HiveField(20)
  Element elementRepeats;
  @HiveField(21)
  bool readOnly;
  @HiveField(22)
  Element elementReadOnly;
  @HiveField(23)
  int maxLength;
  @HiveField(24)
  Element elementMaxLength;
  @HiveField(25)
  String answerValueSet;
  @HiveField(26)
  List<Questionnaire_AnswerOption> answerOption;
  @HiveField(27)
  List<Questionnaire_Initial> initial;
  @HiveField(28)
  List<Questionnaire_Item> item;

  Questionnaire_Item({
    this.id,
    this.extension,
    this.modifierExtension,
    this.linkId,
    this.elementLinkId,
    this.definition,
    this.elementDefinition,
    this.code,
    this.prefix,
    this.elementPrefix,
    this.text,
    this.elementText,
    this.type,
    this.elementType,
    this.enableWhen,
    this.enableBehavior,
    this.elementEnableBehavior,
    this.required,
    this.elementRequired,
    this.repeats,
    this.elementRepeats,
    this.readOnly,
    this.elementReadOnly,
    this.maxLength,
    this.elementMaxLength,
    this.answerValueSet,
    this.answerOption,
    this.initial,
    this.item,
  });

  factory Questionnaire_Item.fromJson(Map<String, dynamic> json) =>
      _$Questionnaire_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_ItemToJson(this);
}

class Questionnaire_EnableWhen {
  static Future<Questionnaire_EnableWhen> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String question,
    Element elementQuestion,
    String operator,
    Element elementOperator,
    bool answerBoolean,
    Element elementAnswerBoolean,
    int answerDecimal,
    Element elementAnswerDecimal,
    int answerInteger,
    Element elementAnswerInteger,
    String answerDate,
    Element elementAnswerDate,
    String answerDateTime,
    Element elementAnswerDateTime,
    String answerTime,
    Element elementAnswerTime,
    String answerString,
    Element elementAnswerString,
    Coding answerCoding,
    Quantity answerQuantity,
    Reference answerReference,
  }) async {
    var fhirDb = new DatabaseHelper();
    Questionnaire_EnableWhen newQuestionnaire_EnableWhen =
        new Questionnaire_EnableWhen(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      question: question,
      elementQuestion: elementQuestion,
      operator: operator,
      elementOperator: elementOperator,
      answerBoolean: answerBoolean,
      elementAnswerBoolean: elementAnswerBoolean,
      answerDecimal: answerDecimal,
      elementAnswerDecimal: elementAnswerDecimal,
      answerInteger: answerInteger,
      elementAnswerInteger: elementAnswerInteger,
      answerDate: answerDate,
      elementAnswerDate: elementAnswerDate,
      answerDateTime: answerDateTime,
      elementAnswerDateTime: elementAnswerDateTime,
      answerTime: answerTime,
      elementAnswerTime: elementAnswerTime,
      answerString: answerString,
      elementAnswerString: elementAnswerString,
      answerCoding: answerCoding,
      answerQuantity: answerQuantity,
      answerReference: answerReference,
    );
    return newQuestionnaire_EnableWhen;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String question;
  @HiveField(4)
  Element elementQuestion;
  @HiveField(5)
  String operator;
  @HiveField(6)
  Element elementOperator;
  @HiveField(7)
  bool answerBoolean;
  @HiveField(8)
  Element elementAnswerBoolean;
  @HiveField(9)
  int answerDecimal;
  @HiveField(10)
  Element elementAnswerDecimal;
  @HiveField(11)
  int answerInteger;
  @HiveField(12)
  Element elementAnswerInteger;
  @HiveField(13)
  String answerDate;
  @HiveField(14)
  Element elementAnswerDate;
  @HiveField(15)
  String answerDateTime;
  @HiveField(16)
  Element elementAnswerDateTime;
  @HiveField(17)
  String answerTime;
  @HiveField(18)
  Element elementAnswerTime;
  @HiveField(19)
  String answerString;
  @HiveField(20)
  Element elementAnswerString;
  @HiveField(21)
  Coding answerCoding;
  @HiveField(22)
  Quantity answerQuantity;
  @HiveField(23)
  Reference answerReference;

  Questionnaire_EnableWhen({
    this.id,
    this.extension,
    this.modifierExtension,
    this.question,
    this.elementQuestion,
    this.operator,
    this.elementOperator,
    this.answerBoolean,
    this.elementAnswerBoolean,
    this.answerDecimal,
    this.elementAnswerDecimal,
    this.answerInteger,
    this.elementAnswerInteger,
    this.answerDate,
    this.elementAnswerDate,
    this.answerDateTime,
    this.elementAnswerDateTime,
    this.answerTime,
    this.elementAnswerTime,
    this.answerString,
    this.elementAnswerString,
    this.answerCoding,
    this.answerQuantity,
    this.answerReference,
  });

  factory Questionnaire_EnableWhen.fromJson(Map<String, dynamic> json) =>
      _$Questionnaire_EnableWhenFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_EnableWhenToJson(this);
}

class Questionnaire_AnswerOption {
  static Future<Questionnaire_AnswerOption> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    int valueInteger,
    Element elementValueInteger,
    String valueDate,
    Element elementValueDate,
    String valueTime,
    Element elementValueTime,
    String valueString,
    Element elementValueString,
    Coding valueCoding,
    Reference valueReference,
    bool initialSelected,
    Element elementInitialSelected,
  }) async {
    var fhirDb = new DatabaseHelper();
    Questionnaire_AnswerOption newQuestionnaire_AnswerOption =
        new Questionnaire_AnswerOption(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      valueInteger: valueInteger,
      elementValueInteger: elementValueInteger,
      valueDate: valueDate,
      elementValueDate: elementValueDate,
      valueTime: valueTime,
      elementValueTime: elementValueTime,
      valueString: valueString,
      elementValueString: elementValueString,
      valueCoding: valueCoding,
      valueReference: valueReference,
      initialSelected: initialSelected,
      elementInitialSelected: elementInitialSelected,
    );
    return newQuestionnaire_AnswerOption;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  int valueInteger;
  @HiveField(4)
  Element elementValueInteger;
  @HiveField(5)
  String valueDate;
  @HiveField(6)
  Element elementValueDate;
  @HiveField(7)
  String valueTime;
  @HiveField(8)
  Element elementValueTime;
  @HiveField(9)
  String valueString;
  @HiveField(10)
  Element elementValueString;
  @HiveField(11)
  Coding valueCoding;
  @HiveField(12)
  Reference valueReference;
  @HiveField(13)
  bool initialSelected;
  @HiveField(14)
  Element elementInitialSelected;

  Questionnaire_AnswerOption({
    this.id,
    this.extension,
    this.modifierExtension,
    this.valueInteger,
    this.elementValueInteger,
    this.valueDate,
    this.elementValueDate,
    this.valueTime,
    this.elementValueTime,
    this.valueString,
    this.elementValueString,
    this.valueCoding,
    this.valueReference,
    this.initialSelected,
    this.elementInitialSelected,
  });

  factory Questionnaire_AnswerOption.fromJson(Map<String, dynamic> json) =>
      _$Questionnaire_AnswerOptionFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_AnswerOptionToJson(this);
}

class Questionnaire_Initial {
  static Future<Questionnaire_Initial> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    bool valueBoolean,
    Element elementValueBoolean,
    int valueDecimal,
    Element elementValueDecimal,
    int valueInteger,
    Element elementValueInteger,
    String valueDate,
    Element elementValueDate,
    String valueDateTime,
    Element elementValueDateTime,
    String valueTime,
    Element elementValueTime,
    String valueString,
    Element elementValueString,
    String valueUri,
    Element elementValueUri,
    Attachment valueAttachment,
    Coding valueCoding,
    Quantity valueQuantity,
    Reference valueReference,
  }) async {
    var fhirDb = new DatabaseHelper();
    Questionnaire_Initial newQuestionnaire_Initial = new Questionnaire_Initial(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      valueBoolean: valueBoolean,
      elementValueBoolean: elementValueBoolean,
      valueDecimal: valueDecimal,
      elementValueDecimal: elementValueDecimal,
      valueInteger: valueInteger,
      elementValueInteger: elementValueInteger,
      valueDate: valueDate,
      elementValueDate: elementValueDate,
      valueDateTime: valueDateTime,
      elementValueDateTime: elementValueDateTime,
      valueTime: valueTime,
      elementValueTime: elementValueTime,
      valueString: valueString,
      elementValueString: elementValueString,
      valueUri: valueUri,
      elementValueUri: elementValueUri,
      valueAttachment: valueAttachment,
      valueCoding: valueCoding,
      valueQuantity: valueQuantity,
      valueReference: valueReference,
    );
    return newQuestionnaire_Initial;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  bool valueBoolean;
  @HiveField(4)
  Element elementValueBoolean;
  @HiveField(5)
  int valueDecimal;
  @HiveField(6)
  Element elementValueDecimal;
  @HiveField(7)
  int valueInteger;
  @HiveField(8)
  Element elementValueInteger;
  @HiveField(9)
  String valueDate;
  @HiveField(10)
  Element elementValueDate;
  @HiveField(11)
  String valueDateTime;
  @HiveField(12)
  Element elementValueDateTime;
  @HiveField(13)
  String valueTime;
  @HiveField(14)
  Element elementValueTime;
  @HiveField(15)
  String valueString;
  @HiveField(16)
  Element elementValueString;
  @HiveField(17)
  String valueUri;
  @HiveField(18)
  Element elementValueUri;
  @HiveField(19)
  Attachment valueAttachment;
  @HiveField(20)
  Coding valueCoding;
  @HiveField(21)
  Quantity valueQuantity;
  @HiveField(22)
  Reference valueReference;

  Questionnaire_Initial({
    this.id,
    this.extension,
    this.modifierExtension,
    this.valueBoolean,
    this.elementValueBoolean,
    this.valueDecimal,
    this.elementValueDecimal,
    this.valueInteger,
    this.elementValueInteger,
    this.valueDate,
    this.elementValueDate,
    this.valueDateTime,
    this.elementValueDateTime,
    this.valueTime,
    this.elementValueTime,
    this.valueString,
    this.elementValueString,
    this.valueUri,
    this.elementValueUri,
    this.valueAttachment,
    this.valueCoding,
    this.valueQuantity,
    this.valueReference,
  });

  factory Questionnaire_Initial.fromJson(Map<String, dynamic> json) =>
      _$Questionnaire_InitialFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_InitialToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Questionnaire _$QuestionnaireFromJson(Map<String, dynamic> json) {
  return Questionnaire(
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
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    derivedFrom:
        (json['derivedFrom'] as List)?.map((e) => e as String)?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    experimental: json['experimental'] as bool,
    elementExperimental: json['elementExperimental'] == null
        ? null
        : Element.fromJson(json['elementExperimental'] as Map<String, dynamic>),
    subjectType:
        (json['subjectType'] as List)?.map((e) => e as String)?.toList(),
    elementSubjectType: (json['elementSubjectType'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    purpose: json['purpose'] as String,
    elementPurpose: json['elementPurpose'] == null
        ? null
        : Element.fromJson(json['elementPurpose'] as Map<String, dynamic>),
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
    code: (json['code'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    item: (json['item'] as List)
        ?.map((e) => e == null
            ? null
            : Questionnaire_Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$QuestionnaireToJson(Questionnaire instance) {
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
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('version', instance.version);
  writeNotNull('elementVersion', instance.elementVersion?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull('derivedFrom', instance.derivedFrom);
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('experimental', instance.experimental);
  writeNotNull('elementExperimental', instance.elementExperimental?.toJson());
  writeNotNull('subjectType', instance.subjectType);
  writeNotNull('elementSubjectType',
      instance.elementSubjectType?.map((e) => e?.toJson())?.toList());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('publisher', instance.publisher);
  writeNotNull('elementPublisher', instance.elementPublisher?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull(
      'useContext', instance.useContext?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e?.toJson())?.toList());
  writeNotNull('purpose', instance.purpose);
  writeNotNull('elementPurpose', instance.elementPurpose?.toJson());
  writeNotNull('copyright', instance.copyright);
  writeNotNull('elementCopyright', instance.elementCopyright?.toJson());
  writeNotNull('approvalDate', instance.approvalDate);
  writeNotNull('elementApprovalDate', instance.elementApprovalDate?.toJson());
  writeNotNull('lastReviewDate', instance.lastReviewDate);
  writeNotNull(
      'elementLastReviewDate', instance.elementLastReviewDate?.toJson());
  writeNotNull('effectivePeriod', instance.effectivePeriod?.toJson());
  writeNotNull('code', instance.code?.map((e) => e?.toJson())?.toList());
  writeNotNull('item', instance.item?.map((e) => e?.toJson())?.toList());
  return val;
}

Questionnaire_Item _$Questionnaire_ItemFromJson(Map<String, dynamic> json) {
  return Questionnaire_Item(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    linkId: json['linkId'] as String,
    elementLinkId: json['elementLinkId'] == null
        ? null
        : Element.fromJson(json['elementLinkId'] as Map<String, dynamic>),
    definition: json['definition'] as String,
    elementDefinition: json['elementDefinition'] == null
        ? null
        : Element.fromJson(json['elementDefinition'] as Map<String, dynamic>),
    code: (json['code'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    prefix: json['prefix'] as String,
    elementPrefix: json['elementPrefix'] == null
        ? null
        : Element.fromJson(json['elementPrefix'] as Map<String, dynamic>),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    enableWhen: (json['enableWhen'] as List)
        ?.map((e) => e == null
            ? null
            : Questionnaire_EnableWhen.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    enableBehavior: json['enableBehavior'] as String,
    elementEnableBehavior: json['elementEnableBehavior'] == null
        ? null
        : Element.fromJson(
            json['elementEnableBehavior'] as Map<String, dynamic>),
    required: json['required'] as bool,
    elementRequired: json['elementRequired'] == null
        ? null
        : Element.fromJson(json['elementRequired'] as Map<String, dynamic>),
    repeats: json['repeats'] as bool,
    elementRepeats: json['elementRepeats'] == null
        ? null
        : Element.fromJson(json['elementRepeats'] as Map<String, dynamic>),
    readOnly: json['readOnly'] as bool,
    elementReadOnly: json['elementReadOnly'] == null
        ? null
        : Element.fromJson(json['elementReadOnly'] as Map<String, dynamic>),
    maxLength: json['maxLength'] as int,
    elementMaxLength: json['elementMaxLength'] == null
        ? null
        : Element.fromJson(json['elementMaxLength'] as Map<String, dynamic>),
    answerValueSet: json['answerValueSet'] as String,
    answerOption: (json['answerOption'] as List)
        ?.map((e) => e == null
            ? null
            : Questionnaire_AnswerOption.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    initial: (json['initial'] as List)
        ?.map((e) => e == null
            ? null
            : Questionnaire_Initial.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    item: (json['item'] as List)
        ?.map((e) => e == null
            ? null
            : Questionnaire_Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Questionnaire_ItemToJson(Questionnaire_Item instance) {
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
  writeNotNull('linkId', instance.linkId);
  writeNotNull('elementLinkId', instance.elementLinkId?.toJson());
  writeNotNull('definition', instance.definition);
  writeNotNull('elementDefinition', instance.elementDefinition?.toJson());
  writeNotNull('code', instance.code?.map((e) => e?.toJson())?.toList());
  writeNotNull('prefix', instance.prefix);
  writeNotNull('elementPrefix', instance.elementPrefix?.toJson());
  writeNotNull('text', instance.text);
  writeNotNull('elementText', instance.elementText?.toJson());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull(
      'enableWhen', instance.enableWhen?.map((e) => e?.toJson())?.toList());
  writeNotNull('enableBehavior', instance.enableBehavior);
  writeNotNull(
      'elementEnableBehavior', instance.elementEnableBehavior?.toJson());
  writeNotNull('required', instance.required);
  writeNotNull('elementRequired', instance.elementRequired?.toJson());
  writeNotNull('repeats', instance.repeats);
  writeNotNull('elementRepeats', instance.elementRepeats?.toJson());
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('elementReadOnly', instance.elementReadOnly?.toJson());
  writeNotNull('maxLength', instance.maxLength);
  writeNotNull('elementMaxLength', instance.elementMaxLength?.toJson());
  writeNotNull('answerValueSet', instance.answerValueSet);
  writeNotNull(
      'answerOption', instance.answerOption?.map((e) => e?.toJson())?.toList());
  writeNotNull('initial', instance.initial?.map((e) => e?.toJson())?.toList());
  writeNotNull('item', instance.item?.map((e) => e?.toJson())?.toList());
  return val;
}

Questionnaire_EnableWhen _$Questionnaire_EnableWhenFromJson(
    Map<String, dynamic> json) {
  return Questionnaire_EnableWhen(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    question: json['question'] as String,
    elementQuestion: json['elementQuestion'] == null
        ? null
        : Element.fromJson(json['elementQuestion'] as Map<String, dynamic>),
    operator: json['operator'] as String,
    elementOperator: json['elementOperator'] == null
        ? null
        : Element.fromJson(json['elementOperator'] as Map<String, dynamic>),
    answerBoolean: json['answerBoolean'] as bool,
    elementAnswerBoolean: json['elementAnswerBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementAnswerBoolean'] as Map<String, dynamic>),
    answerDecimal: json['answerDecimal'] as int,
    elementAnswerDecimal: json['elementAnswerDecimal'] == null
        ? null
        : Element.fromJson(
            json['elementAnswerDecimal'] as Map<String, dynamic>),
    answerInteger: json['answerInteger'] as int,
    elementAnswerInteger: json['elementAnswerInteger'] == null
        ? null
        : Element.fromJson(
            json['elementAnswerInteger'] as Map<String, dynamic>),
    answerDate: json['answerDate'] as String,
    elementAnswerDate: json['elementAnswerDate'] == null
        ? null
        : Element.fromJson(json['elementAnswerDate'] as Map<String, dynamic>),
    answerDateTime: json['answerDateTime'] as String,
    elementAnswerDateTime: json['elementAnswerDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementAnswerDateTime'] as Map<String, dynamic>),
    answerTime: json['answerTime'] as String,
    elementAnswerTime: json['elementAnswerTime'] == null
        ? null
        : Element.fromJson(json['elementAnswerTime'] as Map<String, dynamic>),
    answerString: json['answerString'] as String,
    elementAnswerString: json['elementAnswerString'] == null
        ? null
        : Element.fromJson(json['elementAnswerString'] as Map<String, dynamic>),
    answerCoding: json['answerCoding'] == null
        ? null
        : Coding.fromJson(json['answerCoding'] as Map<String, dynamic>),
    answerQuantity: json['answerQuantity'] == null
        ? null
        : Quantity.fromJson(json['answerQuantity'] as Map<String, dynamic>),
    answerReference: json['answerReference'] == null
        ? null
        : Reference.fromJson(json['answerReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Questionnaire_EnableWhenToJson(
    Questionnaire_EnableWhen instance) {
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
  writeNotNull('question', instance.question);
  writeNotNull('elementQuestion', instance.elementQuestion?.toJson());
  writeNotNull('operator', instance.operator);
  writeNotNull('elementOperator', instance.elementOperator?.toJson());
  writeNotNull('answerBoolean', instance.answerBoolean);
  writeNotNull('elementAnswerBoolean', instance.elementAnswerBoolean?.toJson());
  writeNotNull('answerDecimal', instance.answerDecimal);
  writeNotNull('elementAnswerDecimal', instance.elementAnswerDecimal?.toJson());
  writeNotNull('answerInteger', instance.answerInteger);
  writeNotNull('elementAnswerInteger', instance.elementAnswerInteger?.toJson());
  writeNotNull('answerDate', instance.answerDate);
  writeNotNull('elementAnswerDate', instance.elementAnswerDate?.toJson());
  writeNotNull('answerDateTime', instance.answerDateTime);
  writeNotNull(
      'elementAnswerDateTime', instance.elementAnswerDateTime?.toJson());
  writeNotNull('answerTime', instance.answerTime);
  writeNotNull('elementAnswerTime', instance.elementAnswerTime?.toJson());
  writeNotNull('answerString', instance.answerString);
  writeNotNull('elementAnswerString', instance.elementAnswerString?.toJson());
  writeNotNull('answerCoding', instance.answerCoding?.toJson());
  writeNotNull('answerQuantity', instance.answerQuantity?.toJson());
  writeNotNull('answerReference', instance.answerReference?.toJson());
  return val;
}

Questionnaire_AnswerOption _$Questionnaire_AnswerOptionFromJson(
    Map<String, dynamic> json) {
  return Questionnaire_AnswerOption(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valueInteger: json['valueInteger'] as int,
    elementValueInteger: json['elementValueInteger'] == null
        ? null
        : Element.fromJson(json['elementValueInteger'] as Map<String, dynamic>),
    valueDate: json['valueDate'] as String,
    elementValueDate: json['elementValueDate'] == null
        ? null
        : Element.fromJson(json['elementValueDate'] as Map<String, dynamic>),
    valueTime: json['valueTime'] as String,
    elementValueTime: json['elementValueTime'] == null
        ? null
        : Element.fromJson(json['elementValueTime'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueCoding: json['valueCoding'] == null
        ? null
        : Coding.fromJson(json['valueCoding'] as Map<String, dynamic>),
    valueReference: json['valueReference'] == null
        ? null
        : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
    initialSelected: json['initialSelected'] as bool,
    elementInitialSelected: json['elementInitialSelected'] == null
        ? null
        : Element.fromJson(
            json['elementInitialSelected'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Questionnaire_AnswerOptionToJson(
    Questionnaire_AnswerOption instance) {
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
  writeNotNull('valueInteger', instance.valueInteger);
  writeNotNull('elementValueInteger', instance.elementValueInteger?.toJson());
  writeNotNull('valueDate', instance.valueDate);
  writeNotNull('elementValueDate', instance.elementValueDate?.toJson());
  writeNotNull('valueTime', instance.valueTime);
  writeNotNull('elementValueTime', instance.elementValueTime?.toJson());
  writeNotNull('valueString', instance.valueString);
  writeNotNull('elementValueString', instance.elementValueString?.toJson());
  writeNotNull('valueCoding', instance.valueCoding?.toJson());
  writeNotNull('valueReference', instance.valueReference?.toJson());
  writeNotNull('initialSelected', instance.initialSelected);
  writeNotNull(
      'elementInitialSelected', instance.elementInitialSelected?.toJson());
  return val;
}

Questionnaire_Initial _$Questionnaire_InitialFromJson(
    Map<String, dynamic> json) {
  return Questionnaire_Initial(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueDecimal: json['valueDecimal'] as int,
    elementValueDecimal: json['elementValueDecimal'] == null
        ? null
        : Element.fromJson(json['elementValueDecimal'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    elementValueInteger: json['elementValueInteger'] == null
        ? null
        : Element.fromJson(json['elementValueInteger'] as Map<String, dynamic>),
    valueDate: json['valueDate'] as String,
    elementValueDate: json['elementValueDate'] == null
        ? null
        : Element.fromJson(json['elementValueDate'] as Map<String, dynamic>),
    valueDateTime: json['valueDateTime'] as String,
    elementValueDateTime: json['elementValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementValueDateTime'] as Map<String, dynamic>),
    valueTime: json['valueTime'] as String,
    elementValueTime: json['elementValueTime'] == null
        ? null
        : Element.fromJson(json['elementValueTime'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueUri: json['valueUri'] as String,
    elementValueUri: json['elementValueUri'] == null
        ? null
        : Element.fromJson(json['elementValueUri'] as Map<String, dynamic>),
    valueAttachment: json['valueAttachment'] == null
        ? null
        : Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>),
    valueCoding: json['valueCoding'] == null
        ? null
        : Coding.fromJson(json['valueCoding'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueReference: json['valueReference'] == null
        ? null
        : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Questionnaire_InitialToJson(
    Questionnaire_Initial instance) {
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
  writeNotNull('valueBoolean', instance.valueBoolean);
  writeNotNull('elementValueBoolean', instance.elementValueBoolean?.toJson());
  writeNotNull('valueDecimal', instance.valueDecimal);
  writeNotNull('elementValueDecimal', instance.elementValueDecimal?.toJson());
  writeNotNull('valueInteger', instance.valueInteger);
  writeNotNull('elementValueInteger', instance.elementValueInteger?.toJson());
  writeNotNull('valueDate', instance.valueDate);
  writeNotNull('elementValueDate', instance.elementValueDate?.toJson());
  writeNotNull('valueDateTime', instance.valueDateTime);
  writeNotNull('elementValueDateTime', instance.elementValueDateTime?.toJson());
  writeNotNull('valueTime', instance.valueTime);
  writeNotNull('elementValueTime', instance.elementValueTime?.toJson());
  writeNotNull('valueString', instance.valueString);
  writeNotNull('elementValueString', instance.elementValueString?.toJson());
  writeNotNull('valueUri', instance.valueUri);
  writeNotNull('elementValueUri', instance.elementValueUri?.toJson());
  writeNotNull('valueAttachment', instance.valueAttachment?.toJson());
  writeNotNull('valueCoding', instance.valueCoding?.toJson());
  writeNotNull('valueQuantity', instance.valueQuantity?.toJson());
  writeNotNull('valueReference', instance.valueReference?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionnaireAdapter extends TypeAdapter<Questionnaire> {
  @override
  Questionnaire read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Questionnaire(
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
      url: fields[11] as String,
      elementUrl: fields[12] as Element,
      identifier: (fields[13] as List)?.cast<Identifier>(),
      version: fields[14] as String,
      elementVersion: fields[15] as Element,
      name: fields[16] as String,
      elementName: fields[17] as Element,
      title: fields[18] as String,
      elementTitle: fields[19] as Element,
      derivedFrom: (fields[20] as List)?.cast<String>(),
      status: fields[21] as String,
      elementStatus: fields[22] as Element,
      experimental: fields[23] as bool,
      elementExperimental: fields[24] as Element,
      subjectType: (fields[25] as List)?.cast<String>(),
      elementSubjectType: (fields[26] as List)?.cast<Element>(),
      date: fields[27] as DateTime,
      elementDate: fields[28] as Element,
      publisher: fields[29] as String,
      elementPublisher: fields[30] as Element,
      contact: (fields[31] as List)?.cast<ContactDetail>(),
      description: fields[32] as String,
      elementDescription: fields[33] as Element,
      useContext: (fields[34] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[35] as List)?.cast<CodeableConcept>(),
      purpose: fields[36] as String,
      elementPurpose: fields[37] as Element,
      copyright: fields[38] as String,
      elementCopyright: fields[39] as Element,
      approvalDate: fields[40] as String,
      elementApprovalDate: fields[41] as Element,
      lastReviewDate: fields[42] as String,
      elementLastReviewDate: fields[43] as Element,
      effectivePeriod: fields[44] as Period,
      code: (fields[45] as List)?.cast<Coding>(),
      item: (fields[46] as List)?.cast<Questionnaire_Item>(),
    );
  }

  @override
  void write(BinaryWriter writer, Questionnaire obj) {
    writer
      ..writeByte(47)
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
      ..write(obj.url)
      ..writeByte(12)
      ..write(obj.elementUrl)
      ..writeByte(13)
      ..write(obj.identifier)
      ..writeByte(14)
      ..write(obj.version)
      ..writeByte(15)
      ..write(obj.elementVersion)
      ..writeByte(16)
      ..write(obj.name)
      ..writeByte(17)
      ..write(obj.elementName)
      ..writeByte(18)
      ..write(obj.title)
      ..writeByte(19)
      ..write(obj.elementTitle)
      ..writeByte(20)
      ..write(obj.derivedFrom)
      ..writeByte(21)
      ..write(obj.status)
      ..writeByte(22)
      ..write(obj.elementStatus)
      ..writeByte(23)
      ..write(obj.experimental)
      ..writeByte(24)
      ..write(obj.elementExperimental)
      ..writeByte(25)
      ..write(obj.subjectType)
      ..writeByte(26)
      ..write(obj.elementSubjectType)
      ..writeByte(27)
      ..write(obj.date)
      ..writeByte(28)
      ..write(obj.elementDate)
      ..writeByte(29)
      ..write(obj.publisher)
      ..writeByte(30)
      ..write(obj.elementPublisher)
      ..writeByte(31)
      ..write(obj.contact)
      ..writeByte(32)
      ..write(obj.description)
      ..writeByte(33)
      ..write(obj.elementDescription)
      ..writeByte(34)
      ..write(obj.useContext)
      ..writeByte(35)
      ..write(obj.jurisdiction)
      ..writeByte(36)
      ..write(obj.purpose)
      ..writeByte(37)
      ..write(obj.elementPurpose)
      ..writeByte(38)
      ..write(obj.copyright)
      ..writeByte(39)
      ..write(obj.elementCopyright)
      ..writeByte(40)
      ..write(obj.approvalDate)
      ..writeByte(41)
      ..write(obj.elementApprovalDate)
      ..writeByte(42)
      ..write(obj.lastReviewDate)
      ..writeByte(43)
      ..write(obj.elementLastReviewDate)
      ..writeByte(44)
      ..write(obj.effectivePeriod)
      ..writeByte(45)
      ..write(obj.code)
      ..writeByte(46)
      ..write(obj.item);
  }
}

class Questionnaire_ItemAdapter extends TypeAdapter<Questionnaire_Item> {
  @override
  Questionnaire_Item read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Questionnaire_Item(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      linkId: fields[3] as String,
      elementLinkId: fields[4] as Element,
      definition: fields[5] as String,
      elementDefinition: fields[6] as Element,
      code: (fields[7] as List)?.cast<Coding>(),
      prefix: fields[8] as String,
      elementPrefix: fields[9] as Element,
      text: fields[10] as String,
      elementText: fields[11] as Element,
      type: fields[12] as String,
      elementType: fields[13] as Element,
      enableWhen: (fields[14] as List)?.cast<Questionnaire_EnableWhen>(),
      enableBehavior: fields[15] as String,
      elementEnableBehavior: fields[16] as Element,
      required: fields[17] as bool,
      elementRequired: fields[18] as Element,
      repeats: fields[19] as bool,
      elementRepeats: fields[20] as Element,
      readOnly: fields[21] as bool,
      elementReadOnly: fields[22] as Element,
      maxLength: fields[23] as int,
      elementMaxLength: fields[24] as Element,
      answerValueSet: fields[25] as String,
      answerOption: (fields[26] as List)?.cast<Questionnaire_AnswerOption>(),
      initial: (fields[27] as List)?.cast<Questionnaire_Initial>(),
      item: (fields[28] as List)?.cast<Questionnaire_Item>(),
    );
  }

  @override
  void write(BinaryWriter writer, Questionnaire_Item obj) {
    writer
      ..writeByte(29)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.linkId)
      ..writeByte(4)
      ..write(obj.elementLinkId)
      ..writeByte(5)
      ..write(obj.definition)
      ..writeByte(6)
      ..write(obj.elementDefinition)
      ..writeByte(7)
      ..write(obj.code)
      ..writeByte(8)
      ..write(obj.prefix)
      ..writeByte(9)
      ..write(obj.elementPrefix)
      ..writeByte(10)
      ..write(obj.text)
      ..writeByte(11)
      ..write(obj.elementText)
      ..writeByte(12)
      ..write(obj.type)
      ..writeByte(13)
      ..write(obj.elementType)
      ..writeByte(14)
      ..write(obj.enableWhen)
      ..writeByte(15)
      ..write(obj.enableBehavior)
      ..writeByte(16)
      ..write(obj.elementEnableBehavior)
      ..writeByte(17)
      ..write(obj.required)
      ..writeByte(18)
      ..write(obj.elementRequired)
      ..writeByte(19)
      ..write(obj.repeats)
      ..writeByte(20)
      ..write(obj.elementRepeats)
      ..writeByte(21)
      ..write(obj.readOnly)
      ..writeByte(22)
      ..write(obj.elementReadOnly)
      ..writeByte(23)
      ..write(obj.maxLength)
      ..writeByte(24)
      ..write(obj.elementMaxLength)
      ..writeByte(25)
      ..write(obj.answerValueSet)
      ..writeByte(26)
      ..write(obj.answerOption)
      ..writeByte(27)
      ..write(obj.initial)
      ..writeByte(28)
      ..write(obj.item);
  }
}

class Questionnaire_EnableWhenAdapter
    extends TypeAdapter<Questionnaire_EnableWhen> {
  @override
  Questionnaire_EnableWhen read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Questionnaire_EnableWhen(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      question: fields[3] as String,
      elementQuestion: fields[4] as Element,
      operator: fields[5] as String,
      elementOperator: fields[6] as Element,
      answerBoolean: fields[7] as bool,
      elementAnswerBoolean: fields[8] as Element,
      answerDecimal: fields[9] as int,
      elementAnswerDecimal: fields[10] as Element,
      answerInteger: fields[11] as int,
      elementAnswerInteger: fields[12] as Element,
      answerDate: fields[13] as String,
      elementAnswerDate: fields[14] as Element,
      answerDateTime: fields[15] as String,
      elementAnswerDateTime: fields[16] as Element,
      answerTime: fields[17] as String,
      elementAnswerTime: fields[18] as Element,
      answerString: fields[19] as String,
      elementAnswerString: fields[20] as Element,
      answerCoding: fields[21] as Coding,
      answerQuantity: fields[22] as Quantity,
      answerReference: fields[23] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Questionnaire_EnableWhen obj) {
    writer
      ..writeByte(24)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.question)
      ..writeByte(4)
      ..write(obj.elementQuestion)
      ..writeByte(5)
      ..write(obj.operator)
      ..writeByte(6)
      ..write(obj.elementOperator)
      ..writeByte(7)
      ..write(obj.answerBoolean)
      ..writeByte(8)
      ..write(obj.elementAnswerBoolean)
      ..writeByte(9)
      ..write(obj.answerDecimal)
      ..writeByte(10)
      ..write(obj.elementAnswerDecimal)
      ..writeByte(11)
      ..write(obj.answerInteger)
      ..writeByte(12)
      ..write(obj.elementAnswerInteger)
      ..writeByte(13)
      ..write(obj.answerDate)
      ..writeByte(14)
      ..write(obj.elementAnswerDate)
      ..writeByte(15)
      ..write(obj.answerDateTime)
      ..writeByte(16)
      ..write(obj.elementAnswerDateTime)
      ..writeByte(17)
      ..write(obj.answerTime)
      ..writeByte(18)
      ..write(obj.elementAnswerTime)
      ..writeByte(19)
      ..write(obj.answerString)
      ..writeByte(20)
      ..write(obj.elementAnswerString)
      ..writeByte(21)
      ..write(obj.answerCoding)
      ..writeByte(22)
      ..write(obj.answerQuantity)
      ..writeByte(23)
      ..write(obj.answerReference);
  }
}

class Questionnaire_AnswerOptionAdapter
    extends TypeAdapter<Questionnaire_AnswerOption> {
  @override
  Questionnaire_AnswerOption read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Questionnaire_AnswerOption(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      valueInteger: fields[3] as int,
      elementValueInteger: fields[4] as Element,
      valueDate: fields[5] as String,
      elementValueDate: fields[6] as Element,
      valueTime: fields[7] as String,
      elementValueTime: fields[8] as Element,
      valueString: fields[9] as String,
      elementValueString: fields[10] as Element,
      valueCoding: fields[11] as Coding,
      valueReference: fields[12] as Reference,
      initialSelected: fields[13] as bool,
      elementInitialSelected: fields[14] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Questionnaire_AnswerOption obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.valueInteger)
      ..writeByte(4)
      ..write(obj.elementValueInteger)
      ..writeByte(5)
      ..write(obj.valueDate)
      ..writeByte(6)
      ..write(obj.elementValueDate)
      ..writeByte(7)
      ..write(obj.valueTime)
      ..writeByte(8)
      ..write(obj.elementValueTime)
      ..writeByte(9)
      ..write(obj.valueString)
      ..writeByte(10)
      ..write(obj.elementValueString)
      ..writeByte(11)
      ..write(obj.valueCoding)
      ..writeByte(12)
      ..write(obj.valueReference)
      ..writeByte(13)
      ..write(obj.initialSelected)
      ..writeByte(14)
      ..write(obj.elementInitialSelected);
  }
}

class Questionnaire_InitialAdapter extends TypeAdapter<Questionnaire_Initial> {
  @override
  Questionnaire_Initial read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Questionnaire_Initial(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      valueBoolean: fields[3] as bool,
      elementValueBoolean: fields[4] as Element,
      valueDecimal: fields[5] as int,
      elementValueDecimal: fields[6] as Element,
      valueInteger: fields[7] as int,
      elementValueInteger: fields[8] as Element,
      valueDate: fields[9] as String,
      elementValueDate: fields[10] as Element,
      valueDateTime: fields[11] as String,
      elementValueDateTime: fields[12] as Element,
      valueTime: fields[13] as String,
      elementValueTime: fields[14] as Element,
      valueString: fields[15] as String,
      elementValueString: fields[16] as Element,
      valueUri: fields[17] as String,
      elementValueUri: fields[18] as Element,
      valueAttachment: fields[19] as Attachment,
      valueCoding: fields[20] as Coding,
      valueQuantity: fields[21] as Quantity,
      valueReference: fields[22] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Questionnaire_Initial obj) {
    writer
      ..writeByte(23)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.valueBoolean)
      ..writeByte(4)
      ..write(obj.elementValueBoolean)
      ..writeByte(5)
      ..write(obj.valueDecimal)
      ..writeByte(6)
      ..write(obj.elementValueDecimal)
      ..writeByte(7)
      ..write(obj.valueInteger)
      ..writeByte(8)
      ..write(obj.elementValueInteger)
      ..writeByte(9)
      ..write(obj.valueDate)
      ..writeByte(10)
      ..write(obj.elementValueDate)
      ..writeByte(11)
      ..write(obj.valueDateTime)
      ..writeByte(12)
      ..write(obj.elementValueDateTime)
      ..writeByte(13)
      ..write(obj.valueTime)
      ..writeByte(14)
      ..write(obj.elementValueTime)
      ..writeByte(15)
      ..write(obj.valueString)
      ..writeByte(16)
      ..write(obj.elementValueString)
      ..writeByte(17)
      ..write(obj.valueUri)
      ..writeByte(18)
      ..write(obj.elementValueUri)
      ..writeByte(19)
      ..write(obj.valueAttachment)
      ..writeByte(20)
      ..write(obj.valueCoding)
      ..writeByte(21)
      ..write(obj.valueQuantity)
      ..writeByte(22)
      ..write(obj.valueReference);
  }
}
