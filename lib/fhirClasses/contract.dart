import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/signature.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class Contract {
  static Future<Contract> newInstance({
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
    String url,
    Element elementUrl,
    String version,
    Element elementVersion,
    String status,
    Element elementStatus,
    CodeableConcept legalState,
    Reference instantiatesCanonical,
    String instantiatesUri,
    Element elementInstantiatesUri,
    CodeableConcept contentDerivative,
    DateTime issued,
    Element elementIssued,
    Period applies,
    CodeableConcept expirationType,
    List<Reference> subject,
    List<Reference> authority,
    List<Reference> domain,
    List<Reference> site,
    String name,
    Element elementName,
    String title,
    Element elementTitle,
    String subtitle,
    Element elementSubtitle,
    List<String> alias,
    List<Element> elementAlias,
    Reference author,
    CodeableConcept scope,
    CodeableConcept topicCodeableConcept,
    Reference topicReference,
    CodeableConcept type,
    List<CodeableConcept> subType,
    Contract_ContentDefinition contentDefinition,
    List<Contract_Term> term,
    List<Reference> supportingInfo,
    List<Reference> relevantHistory,
    List<Contract_Signer> signer,
    List<Contract_Friendly> friendly,
    List<Contract_Legal> legal,
    List<Contract_Rule> rule,
    Attachment legallyBindingAttachment,
    Reference legallyBindingReference,
  }) async {
    var fhirDb = new DatabaseHelper();
    Contract newContract = new Contract(
      resourceType: 'Contract',
      id: id ?? await fhirDb.newResourceId('Contract'),
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
      url: url,
      elementUrl: elementUrl,
      version: version,
      elementVersion: elementVersion,
      status: status,
      elementStatus: elementStatus,
      legalState: legalState,
      instantiatesCanonical: instantiatesCanonical,
      instantiatesUri: instantiatesUri,
      elementInstantiatesUri: elementInstantiatesUri,
      contentDerivative: contentDerivative,
      issued: issued,
      elementIssued: elementIssued,
      applies: applies,
      expirationType: expirationType,
      subject: subject,
      authority: authority,
      domain: domain,
      site: site,
      name: name,
      elementName: elementName,
      title: title,
      elementTitle: elementTitle,
      subtitle: subtitle,
      elementSubtitle: elementSubtitle,
      alias: alias,
      elementAlias: elementAlias,
      author: author,
      scope: scope,
      topicCodeableConcept: topicCodeableConcept,
      topicReference: topicReference,
      type: type,
      subType: subType,
      contentDefinition: contentDefinition,
      term: term,
      supportingInfo: supportingInfo,
      relevantHistory: relevantHistory,
      signer: signer,
      friendly: friendly,
      legal: legal,
      rule: rule,
      legallyBindingAttachment: legallyBindingAttachment,
      legallyBindingReference: legallyBindingReference,
    );
    newContract.meta.createdAt = DateTime.now();
    newContract.meta.lastUpdated = newContract.meta.createdAt;
    int saved = await fhirDb.saveResource(newContract);
    return newContract;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'Contract';
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
  String url;
  Element elementUrl;
  String version;
  Element elementVersion;
  String status;
  Element elementStatus;
  CodeableConcept legalState;
  Reference instantiatesCanonical;
  String instantiatesUri;
  Element elementInstantiatesUri;
  CodeableConcept contentDerivative;
  DateTime issued;
  Element elementIssued;
  Period applies;
  CodeableConcept expirationType;
  List<Reference> subject;
  List<Reference> authority;
  List<Reference> domain;
  List<Reference> site;
  String name;
  Element elementName;
  String title;
  Element elementTitle;
  String subtitle;
  Element elementSubtitle;
  List<String> alias;
  List<Element> elementAlias;
  Reference author;
  CodeableConcept scope;
  CodeableConcept topicCodeableConcept;
  Reference topicReference;
  CodeableConcept type;
  List<CodeableConcept> subType;
  Contract_ContentDefinition contentDefinition;
  List<Contract_Term> term;
  List<Reference> supportingInfo;
  List<Reference> relevantHistory;
  List<Contract_Signer> signer;
  List<Contract_Friendly> friendly;
  List<Contract_Legal> legal;
  List<Contract_Rule> rule;
  Attachment legallyBindingAttachment;
  Reference legallyBindingReference;

  Contract({
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
    this.url,
    this.elementUrl,
    this.version,
    this.elementVersion,
    this.status,
    this.elementStatus,
    this.legalState,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.elementInstantiatesUri,
    this.contentDerivative,
    this.issued,
    this.elementIssued,
    this.applies,
    this.expirationType,
    this.subject,
    this.authority,
    this.domain,
    this.site,
    this.name,
    this.elementName,
    this.title,
    this.elementTitle,
    this.subtitle,
    this.elementSubtitle,
    this.alias,
    this.elementAlias,
    this.author,
    this.scope,
    this.topicCodeableConcept,
    this.topicReference,
    this.type,
    this.subType,
    this.contentDefinition,
    this.term,
    this.supportingInfo,
    this.relevantHistory,
    this.signer,
    this.friendly,
    this.legal,
    this.rule,
    this.legallyBindingAttachment,
    this.legallyBindingReference,
  });

  factory Contract.fromJson(Map<String, dynamic> json) =>
      _$ContractFromJson(json);
  Map<String, dynamic> toJson() => _$ContractToJson(this);
}

class Contract_ContentDefinition {
  static Future<Contract_ContentDefinition> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    CodeableConcept subType,
    Reference publisher,
    DateTime publicationDate,
    Element elementPublicationDate,
    String publicationStatus,
    Element elementPublicationStatus,
    String copyright,
    Element elementCopyright,
  }) async {
    var fhirDb = new DatabaseHelper();
    Contract_ContentDefinition newContract_ContentDefinition =
        new Contract_ContentDefinition(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      subType: subType,
      publisher: publisher,
      publicationDate: publicationDate,
      elementPublicationDate: elementPublicationDate,
      publicationStatus: publicationStatus,
      elementPublicationStatus: elementPublicationStatus,
      copyright: copyright,
      elementCopyright: elementCopyright,
    );
    return newContract_ContentDefinition;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  CodeableConcept subType;
  Reference publisher;
  DateTime publicationDate;
  Element elementPublicationDate;
  String publicationStatus;
  Element elementPublicationStatus;
  String copyright;
  Element elementCopyright;

  Contract_ContentDefinition({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.subType,
    this.publisher,
    this.publicationDate,
    this.elementPublicationDate,
    this.publicationStatus,
    this.elementPublicationStatus,
    this.copyright,
    this.elementCopyright,
  });

  factory Contract_ContentDefinition.fromJson(Map<String, dynamic> json) =>
      _$Contract_ContentDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_ContentDefinitionToJson(this);
}

class Contract_Term {
  static Future<Contract_Term> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Identifier identifier,
    DateTime issued,
    Element elementIssued,
    Period applies,
    CodeableConcept topicCodeableConcept,
    Reference topicReference,
    CodeableConcept type,
    CodeableConcept subType,
    String text,
    Element elementText,
    List<Contract_SecurityLabel> securityLabel,
    Contract_Offer offer,
    List<Contract_Asset> asset,
    List<Contract_Action> action,
    List<Contract_Term> group,
  }) async {
    var fhirDb = new DatabaseHelper();
    Contract_Term newContract_Term = new Contract_Term(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      issued: issued,
      elementIssued: elementIssued,
      applies: applies,
      topicCodeableConcept: topicCodeableConcept,
      topicReference: topicReference,
      type: type,
      subType: subType,
      text: text,
      elementText: elementText,
      securityLabel: securityLabel,
      offer: offer,
      asset: asset,
      action: action,
      group: group,
    );
    return newContract_Term;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier identifier;
  DateTime issued;
  Element elementIssued;
  Period applies;
  CodeableConcept topicCodeableConcept;
  Reference topicReference;
  CodeableConcept type;
  CodeableConcept subType;
  String text;
  Element elementText;
  List<Contract_SecurityLabel> securityLabel;
  Contract_Offer offer;
  List<Contract_Asset> asset;
  List<Contract_Action> action;
  List<Contract_Term> group;

  Contract_Term({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.issued,
    this.elementIssued,
    this.applies,
    this.topicCodeableConcept,
    this.topicReference,
    this.type,
    this.subType,
    this.text,
    this.elementText,
    this.securityLabel,
    @required this.offer,
    this.asset,
    this.action,
    this.group,
  });

  factory Contract_Term.fromJson(Map<String, dynamic> json) =>
      _$Contract_TermFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_TermToJson(this);
}

class Contract_SecurityLabel {
  static Future<Contract_SecurityLabel> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<int> number,
    List<Element> elementNumber,
    Coding classification,
    List<Coding> category,
    List<Coding> control,
  }) async {
    var fhirDb = new DatabaseHelper();
    Contract_SecurityLabel newContract_SecurityLabel =
        new Contract_SecurityLabel(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      number: number,
      elementNumber: elementNumber,
      classification: classification,
      category: category,
      control: control,
    );
    return newContract_SecurityLabel;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<int> number;
  List<Element> elementNumber;
  Coding classification;
  List<Coding> category;
  List<Coding> control;

  Contract_SecurityLabel({
    this.id,
    this.extension,
    this.modifierExtension,
    this.number,
    this.elementNumber,
    @required this.classification,
    this.category,
    this.control,
  });

  factory Contract_SecurityLabel.fromJson(Map<String, dynamic> json) =>
      _$Contract_SecurityLabelFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_SecurityLabelToJson(this);
}

class Contract_Offer {
  static Future<Contract_Offer> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<Identifier> identifier,
    List<Contract_Party> party,
    Reference topic,
    CodeableConcept type,
    CodeableConcept decision,
    List<CodeableConcept> decisionMode,
    List<Contract_Answer> answer,
    String text,
    Element elementText,
    List<String> linkId,
    List<Element> elementLinkId,
    List<int> securityLabelNumber,
    List<Element> elementSecurityLabelNumber,
  }) async {
    var fhirDb = new DatabaseHelper();
    Contract_Offer newContract_Offer = new Contract_Offer(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      party: party,
      topic: topic,
      type: type,
      decision: decision,
      decisionMode: decisionMode,
      answer: answer,
      text: text,
      elementText: elementText,
      linkId: linkId,
      elementLinkId: elementLinkId,
      securityLabelNumber: securityLabelNumber,
      elementSecurityLabelNumber: elementSecurityLabelNumber,
    );
    return newContract_Offer;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  List<Contract_Party> party;
  Reference topic;
  CodeableConcept type;
  CodeableConcept decision;
  List<CodeableConcept> decisionMode;
  List<Contract_Answer> answer;
  String text;
  Element elementText;
  List<String> linkId;
  List<Element> elementLinkId;
  List<int> securityLabelNumber;
  List<Element> elementSecurityLabelNumber;

  Contract_Offer({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.party,
    this.topic,
    this.type,
    this.decision,
    this.decisionMode,
    this.answer,
    this.text,
    this.elementText,
    this.linkId,
    this.elementLinkId,
    this.securityLabelNumber,
    this.elementSecurityLabelNumber,
  });

  factory Contract_Offer.fromJson(Map<String, dynamic> json) =>
      _$Contract_OfferFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_OfferToJson(this);
}

class Contract_Party {
  static Future<Contract_Party> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<Reference> reference,
    CodeableConcept role,
  }) async {
    var fhirDb = new DatabaseHelper();
    Contract_Party newContract_Party = new Contract_Party(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      reference: reference,
      role: role,
    );
    return newContract_Party;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Reference> reference;
  CodeableConcept role;

  Contract_Party({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.reference,
    @required this.role,
  });

  factory Contract_Party.fromJson(Map<String, dynamic> json) =>
      _$Contract_PartyFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_PartyToJson(this);
}

class Contract_Answer {
  static Future<Contract_Answer> newInstance({
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
    Contract_Answer newContract_Answer = new Contract_Answer(
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
    return newContract_Answer;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool valueBoolean;
  Element elementValueBoolean;
  int valueDecimal;
  Element elementValueDecimal;
  int valueInteger;
  Element elementValueInteger;
  String valueDate;
  Element elementValueDate;
  String valueDateTime;
  Element elementValueDateTime;
  String valueTime;
  Element elementValueTime;
  String valueString;
  Element elementValueString;
  String valueUri;
  Element elementValueUri;
  Attachment valueAttachment;
  Coding valueCoding;
  Quantity valueQuantity;
  Reference valueReference;

  Contract_Answer({
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

  factory Contract_Answer.fromJson(Map<String, dynamic> json) =>
      _$Contract_AnswerFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_AnswerToJson(this);
}

class Contract_Asset {
  static Future<Contract_Asset> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept scope,
    List<CodeableConcept> type,
    List<Reference> typeReference,
    List<CodeableConcept> subtype,
    Coding relationship,
    List<Contract_Context> context,
    String condition,
    Element elementCondition,
    List<CodeableConcept> periodType,
    List<Period> period,
    List<Period> usePeriod,
    String text,
    Element elementText,
    List<String> linkId,
    List<Element> elementLinkId,
    List<Contract_Answer> answer,
    List<int> securityLabelNumber,
    List<Element> elementSecurityLabelNumber,
    List<Contract_ValuedItem> valuedItem,
  }) async {
    var fhirDb = new DatabaseHelper();
    Contract_Asset newContract_Asset = new Contract_Asset(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      scope: scope,
      type: type,
      typeReference: typeReference,
      subtype: subtype,
      relationship: relationship,
      context: context,
      condition: condition,
      elementCondition: elementCondition,
      periodType: periodType,
      period: period,
      usePeriod: usePeriod,
      text: text,
      elementText: elementText,
      linkId: linkId,
      elementLinkId: elementLinkId,
      answer: answer,
      securityLabelNumber: securityLabelNumber,
      elementSecurityLabelNumber: elementSecurityLabelNumber,
      valuedItem: valuedItem,
    );
    return newContract_Asset;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept scope;
  List<CodeableConcept> type;
  List<Reference> typeReference;
  List<CodeableConcept> subtype;
  Coding relationship;
  List<Contract_Context> context;
  String condition;
  Element elementCondition;
  List<CodeableConcept> periodType;
  List<Period> period;
  List<Period> usePeriod;
  String text;
  Element elementText;
  List<String> linkId;
  List<Element> elementLinkId;
  List<Contract_Answer> answer;
  List<int> securityLabelNumber;
  List<Element> elementSecurityLabelNumber;
  List<Contract_ValuedItem> valuedItem;

  Contract_Asset({
    this.id,
    this.extension,
    this.modifierExtension,
    this.scope,
    this.type,
    this.typeReference,
    this.subtype,
    this.relationship,
    this.context,
    this.condition,
    this.elementCondition,
    this.periodType,
    this.period,
    this.usePeriod,
    this.text,
    this.elementText,
    this.linkId,
    this.elementLinkId,
    this.answer,
    this.securityLabelNumber,
    this.elementSecurityLabelNumber,
    this.valuedItem,
  });

  factory Contract_Asset.fromJson(Map<String, dynamic> json) =>
      _$Contract_AssetFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_AssetToJson(this);
}

class Contract_Context {
  static Future<Contract_Context> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Reference reference,
    List<CodeableConcept> code,
    String text,
    Element elementText,
  }) async {
    var fhirDb = new DatabaseHelper();
    Contract_Context newContract_Context = new Contract_Context(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      reference: reference,
      code: code,
      text: text,
      elementText: elementText,
    );
    return newContract_Context;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference reference;
  List<CodeableConcept> code;
  String text;
  Element elementText;

  Contract_Context({
    this.id,
    this.extension,
    this.modifierExtension,
    this.reference,
    this.code,
    this.text,
    this.elementText,
  });

  factory Contract_Context.fromJson(Map<String, dynamic> json) =>
      _$Contract_ContextFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_ContextToJson(this);
}

class Contract_ValuedItem {
  static Future<Contract_ValuedItem> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept entityCodeableConcept,
    Reference entityReference,
    Identifier identifier,
    DateTime effectiveTime,
    Element elementEffectiveTime,
    Quantity quantity,
    Money unitPrice,
    double factor,
    Element elementFactor,
    double points,
    Element elementPoints,
    Money net,
    String payment,
    Element elementPayment,
    DateTime paymentDate,
    Element elementPaymentDate,
    Reference responsible,
    Reference recipient,
    List<String> linkId,
    List<Element> elementLinkId,
    List<int> securityLabelNumber,
    List<Element> elementSecurityLabelNumber,
  }) async {
    var fhirDb = new DatabaseHelper();
    Contract_ValuedItem newContract_ValuedItem = new Contract_ValuedItem(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      entityCodeableConcept: entityCodeableConcept,
      entityReference: entityReference,
      identifier: identifier,
      effectiveTime: effectiveTime,
      elementEffectiveTime: elementEffectiveTime,
      quantity: quantity,
      unitPrice: unitPrice,
      factor: factor,
      elementFactor: elementFactor,
      points: points,
      elementPoints: elementPoints,
      net: net,
      payment: payment,
      elementPayment: elementPayment,
      paymentDate: paymentDate,
      elementPaymentDate: elementPaymentDate,
      responsible: responsible,
      recipient: recipient,
      linkId: linkId,
      elementLinkId: elementLinkId,
      securityLabelNumber: securityLabelNumber,
      elementSecurityLabelNumber: elementSecurityLabelNumber,
    );
    return newContract_ValuedItem;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept entityCodeableConcept;
  Reference entityReference;
  Identifier identifier;
  DateTime effectiveTime;
  Element elementEffectiveTime;
  Quantity quantity;
  Money unitPrice;
  double factor;
  Element elementFactor;
  double points;
  Element elementPoints;
  Money net;
  String payment;
  Element elementPayment;
  DateTime paymentDate;
  Element elementPaymentDate;
  Reference responsible;
  Reference recipient;
  List<String> linkId;
  List<Element> elementLinkId;
  List<int> securityLabelNumber;
  List<Element> elementSecurityLabelNumber;

  Contract_ValuedItem({
    this.id,
    this.extension,
    this.modifierExtension,
    this.entityCodeableConcept,
    this.entityReference,
    this.identifier,
    this.effectiveTime,
    this.elementEffectiveTime,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.elementFactor,
    this.points,
    this.elementPoints,
    this.net,
    this.payment,
    this.elementPayment,
    this.paymentDate,
    this.elementPaymentDate,
    this.responsible,
    this.recipient,
    this.linkId,
    this.elementLinkId,
    this.securityLabelNumber,
    this.elementSecurityLabelNumber,
  });

  factory Contract_ValuedItem.fromJson(Map<String, dynamic> json) =>
      _$Contract_ValuedItemFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_ValuedItemToJson(this);
}

class Contract_Action {
  static Future<Contract_Action> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    bool doNotPerform,
    Element elementDoNotPerform,
    CodeableConcept type,
    List<Contract_Subject> subject,
    CodeableConcept intent,
    List<String> linkId,
    List<Element> elementLinkId,
    CodeableConcept status,
    Reference context,
    List<String> contextLinkId,
    List<Element> elementContextLinkId,
    String occurrenceDateTime,
    Element elementOccurrenceDateTime,
    Period occurrencePeriod,
    Timing occurrenceTiming,
    List<Reference> requester,
    List<String> requesterLinkId,
    List<Element> elementRequesterLinkId,
    List<CodeableConcept> performerType,
    CodeableConcept performerRole,
    Reference performer,
    List<String> performerLinkId,
    List<Element> elementPerformerLinkId,
    List<CodeableConcept> reasonCode,
    List<Reference> reasonReference,
    List<String> reason,
    List<Element> elementReason,
    List<String> reasonLinkId,
    List<Element> elementReasonLinkId,
    List<Annotation> note,
    List<int> securityLabelNumber,
    List<Element> elementSecurityLabelNumber,
  }) async {
    var fhirDb = new DatabaseHelper();
    Contract_Action newContract_Action = new Contract_Action(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      doNotPerform: doNotPerform,
      elementDoNotPerform: elementDoNotPerform,
      type: type,
      subject: subject,
      intent: intent,
      linkId: linkId,
      elementLinkId: elementLinkId,
      status: status,
      context: context,
      contextLinkId: contextLinkId,
      elementContextLinkId: elementContextLinkId,
      occurrenceDateTime: occurrenceDateTime,
      elementOccurrenceDateTime: elementOccurrenceDateTime,
      occurrencePeriod: occurrencePeriod,
      occurrenceTiming: occurrenceTiming,
      requester: requester,
      requesterLinkId: requesterLinkId,
      elementRequesterLinkId: elementRequesterLinkId,
      performerType: performerType,
      performerRole: performerRole,
      performer: performer,
      performerLinkId: performerLinkId,
      elementPerformerLinkId: elementPerformerLinkId,
      reasonCode: reasonCode,
      reasonReference: reasonReference,
      reason: reason,
      elementReason: elementReason,
      reasonLinkId: reasonLinkId,
      elementReasonLinkId: elementReasonLinkId,
      note: note,
      securityLabelNumber: securityLabelNumber,
      elementSecurityLabelNumber: elementSecurityLabelNumber,
    );
    return newContract_Action;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool doNotPerform;
  Element elementDoNotPerform;
  CodeableConcept type;
  List<Contract_Subject> subject;
  CodeableConcept intent;
  List<String> linkId;
  List<Element> elementLinkId;
  CodeableConcept status;
  Reference context;
  List<String> contextLinkId;
  List<Element> elementContextLinkId;
  String occurrenceDateTime;
  Element elementOccurrenceDateTime;
  Period occurrencePeriod;
  Timing occurrenceTiming;
  List<Reference> requester;
  List<String> requesterLinkId;
  List<Element> elementRequesterLinkId;
  List<CodeableConcept> performerType;
  CodeableConcept performerRole;
  Reference performer;
  List<String> performerLinkId;
  List<Element> elementPerformerLinkId;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<String> reason;
  List<Element> elementReason;
  List<String> reasonLinkId;
  List<Element> elementReasonLinkId;
  List<Annotation> note;
  List<int> securityLabelNumber;
  List<Element> elementSecurityLabelNumber;

  Contract_Action({
    this.id,
    this.extension,
    this.modifierExtension,
    this.doNotPerform,
    this.elementDoNotPerform,
    @required this.type,
    this.subject,
    @required this.intent,
    this.linkId,
    this.elementLinkId,
    @required this.status,
    this.context,
    this.contextLinkId,
    this.elementContextLinkId,
    this.occurrenceDateTime,
    this.elementOccurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.requester,
    this.requesterLinkId,
    this.elementRequesterLinkId,
    this.performerType,
    this.performerRole,
    this.performer,
    this.performerLinkId,
    this.elementPerformerLinkId,
    this.reasonCode,
    this.reasonReference,
    this.reason,
    this.elementReason,
    this.reasonLinkId,
    this.elementReasonLinkId,
    this.note,
    this.securityLabelNumber,
    this.elementSecurityLabelNumber,
  });

  factory Contract_Action.fromJson(Map<String, dynamic> json) =>
      _$Contract_ActionFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_ActionToJson(this);
}

class Contract_Subject {
  static Future<Contract_Subject> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<Reference> reference,
    CodeableConcept role,
  }) async {
    var fhirDb = new DatabaseHelper();
    Contract_Subject newContract_Subject = new Contract_Subject(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      reference: reference,
      role: role,
    );
    return newContract_Subject;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Reference> reference;
  CodeableConcept role;

  Contract_Subject({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.reference,
    this.role,
  });

  factory Contract_Subject.fromJson(Map<String, dynamic> json) =>
      _$Contract_SubjectFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_SubjectToJson(this);
}

class Contract_Signer {
  static Future<Contract_Signer> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Coding type,
    Reference party,
    List<Signature> signature,
  }) async {
    var fhirDb = new DatabaseHelper();
    Contract_Signer newContract_Signer = new Contract_Signer(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      party: party,
      signature: signature,
    );
    return newContract_Signer;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Coding type;
  Reference party;
  List<Signature> signature;

  Contract_Signer({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    @required this.party,
    @required this.signature,
  });

  factory Contract_Signer.fromJson(Map<String, dynamic> json) =>
      _$Contract_SignerFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_SignerToJson(this);
}

class Contract_Friendly {
  static Future<Contract_Friendly> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Attachment contentAttachment,
    Reference contentReference,
  }) async {
    var fhirDb = new DatabaseHelper();
    Contract_Friendly newContract_Friendly = new Contract_Friendly(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      contentAttachment: contentAttachment,
      contentReference: contentReference,
    );
    return newContract_Friendly;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Attachment contentAttachment;
  Reference contentReference;

  Contract_Friendly({
    this.id,
    this.extension,
    this.modifierExtension,
    this.contentAttachment,
    this.contentReference,
  });

  factory Contract_Friendly.fromJson(Map<String, dynamic> json) =>
      _$Contract_FriendlyFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_FriendlyToJson(this);
}

class Contract_Legal {
  static Future<Contract_Legal> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Attachment contentAttachment,
    Reference contentReference,
  }) async {
    var fhirDb = new DatabaseHelper();
    Contract_Legal newContract_Legal = new Contract_Legal(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      contentAttachment: contentAttachment,
      contentReference: contentReference,
    );
    return newContract_Legal;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Attachment contentAttachment;
  Reference contentReference;

  Contract_Legal({
    this.id,
    this.extension,
    this.modifierExtension,
    this.contentAttachment,
    this.contentReference,
  });

  factory Contract_Legal.fromJson(Map<String, dynamic> json) =>
      _$Contract_LegalFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_LegalToJson(this);
}

class Contract_Rule {
  static Future<Contract_Rule> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Attachment contentAttachment,
    Reference contentReference,
  }) async {
    var fhirDb = new DatabaseHelper();
    Contract_Rule newContract_Rule = new Contract_Rule(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      contentAttachment: contentAttachment,
      contentReference: contentReference,
    );
    return newContract_Rule;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Attachment contentAttachment;
  Reference contentReference;

  Contract_Rule({
    this.id,
    this.extension,
    this.modifierExtension,
    this.contentAttachment,
    this.contentReference,
  });

  factory Contract_Rule.fromJson(Map<String, dynamic> json) =>
      _$Contract_RuleFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_RuleToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contract _$ContractFromJson(Map<String, dynamic> json) {
  return Contract(
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
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    legalState: json['legalState'] == null
        ? null
        : CodeableConcept.fromJson(json['legalState'] as Map<String, dynamic>),
    instantiatesCanonical: json['instantiatesCanonical'] == null
        ? null
        : Reference.fromJson(
            json['instantiatesCanonical'] as Map<String, dynamic>),
    instantiatesUri: json['instantiatesUri'] as String,
    elementInstantiatesUri: json['elementInstantiatesUri'] == null
        ? null
        : Element.fromJson(
            json['elementInstantiatesUri'] as Map<String, dynamic>),
    contentDerivative: json['contentDerivative'] == null
        ? null
        : CodeableConcept.fromJson(
            json['contentDerivative'] as Map<String, dynamic>),
    issued: json['issued'] == null
        ? null
        : DateTime.parse(json['issued'] as String),
    elementIssued: json['elementIssued'] == null
        ? null
        : Element.fromJson(json['elementIssued'] as Map<String, dynamic>),
    applies: json['applies'] == null
        ? null
        : Period.fromJson(json['applies'] as Map<String, dynamic>),
    expirationType: json['expirationType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['expirationType'] as Map<String, dynamic>),
    subject: (json['subject'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authority: (json['authority'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    domain: (json['domain'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    site: (json['site'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    subtitle: json['subtitle'] as String,
    elementSubtitle: json['elementSubtitle'] == null
        ? null
        : Element.fromJson(json['elementSubtitle'] as Map<String, dynamic>),
    alias: (json['alias'] as List)?.map((e) => e as String)?.toList(),
    elementAlias: (json['elementAlias'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    author: json['author'] == null
        ? null
        : Reference.fromJson(json['author'] as Map<String, dynamic>),
    scope: json['scope'] == null
        ? null
        : CodeableConcept.fromJson(json['scope'] as Map<String, dynamic>),
    topicCodeableConcept: json['topicCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['topicCodeableConcept'] as Map<String, dynamic>),
    topicReference: json['topicReference'] == null
        ? null
        : Reference.fromJson(json['topicReference'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    subType: (json['subType'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contentDefinition: json['contentDefinition'] == null
        ? null
        : Contract_ContentDefinition.fromJson(
            json['contentDefinition'] as Map<String, dynamic>),
    term: (json['term'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Term.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInfo: (json['supportingInfo'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relevantHistory: (json['relevantHistory'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    signer: (json['signer'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Signer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    friendly: (json['friendly'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Friendly.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    legal: (json['legal'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Legal.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rule: (json['rule'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Rule.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    legallyBindingAttachment: json['legallyBindingAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['legallyBindingAttachment'] as Map<String, dynamic>),
    legallyBindingReference: json['legallyBindingReference'] == null
        ? null
        : Reference.fromJson(
            json['legallyBindingReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ContractToJson(Contract instance) {
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
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  writeNotNull('version', instance.version);
  writeNotNull('elementVersion', instance.elementVersion?.toJson());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('legalState', instance.legalState?.toJson());
  writeNotNull(
      'instantiatesCanonical', instance.instantiatesCanonical?.toJson());
  writeNotNull('instantiatesUri', instance.instantiatesUri);
  writeNotNull(
      'elementInstantiatesUri', instance.elementInstantiatesUri?.toJson());
  writeNotNull('contentDerivative', instance.contentDerivative?.toJson());
  writeNotNull('issued', instance.issued?.toIso8601String());
  writeNotNull('elementIssued', instance.elementIssued?.toJson());
  writeNotNull('applies', instance.applies?.toJson());
  writeNotNull('expirationType', instance.expirationType?.toJson());
  writeNotNull('subject', instance.subject?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'authority', instance.authority?.map((e) => e?.toJson())?.toList());
  writeNotNull('domain', instance.domain?.map((e) => e?.toJson())?.toList());
  writeNotNull('site', instance.site?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull('subtitle', instance.subtitle);
  writeNotNull('elementSubtitle', instance.elementSubtitle?.toJson());
  writeNotNull('alias', instance.alias);
  writeNotNull(
      'elementAlias', instance.elementAlias?.map((e) => e?.toJson())?.toList());
  writeNotNull('author', instance.author?.toJson());
  writeNotNull('scope', instance.scope?.toJson());
  writeNotNull('topicCodeableConcept', instance.topicCodeableConcept?.toJson());
  writeNotNull('topicReference', instance.topicReference?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('subType', instance.subType?.map((e) => e?.toJson())?.toList());
  writeNotNull('contentDefinition', instance.contentDefinition?.toJson());
  writeNotNull('term', instance.term?.map((e) => e?.toJson())?.toList());
  writeNotNull('supportingInfo',
      instance.supportingInfo?.map((e) => e?.toJson())?.toList());
  writeNotNull('relevantHistory',
      instance.relevantHistory?.map((e) => e?.toJson())?.toList());
  writeNotNull('signer', instance.signer?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'friendly', instance.friendly?.map((e) => e?.toJson())?.toList());
  writeNotNull('legal', instance.legal?.map((e) => e?.toJson())?.toList());
  writeNotNull('rule', instance.rule?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'legallyBindingAttachment', instance.legallyBindingAttachment?.toJson());
  writeNotNull(
      'legallyBindingReference', instance.legallyBindingReference?.toJson());
  return val;
}

Contract_ContentDefinition _$Contract_ContentDefinitionFromJson(
    Map<String, dynamic> json) {
  return Contract_ContentDefinition(
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
    subType: json['subType'] == null
        ? null
        : CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>),
    publisher: json['publisher'] == null
        ? null
        : Reference.fromJson(json['publisher'] as Map<String, dynamic>),
    publicationDate: json['publicationDate'] == null
        ? null
        : DateTime.parse(json['publicationDate'] as String),
    elementPublicationDate: json['elementPublicationDate'] == null
        ? null
        : Element.fromJson(
            json['elementPublicationDate'] as Map<String, dynamic>),
    publicationStatus: json['publicationStatus'] as String,
    elementPublicationStatus: json['elementPublicationStatus'] == null
        ? null
        : Element.fromJson(
            json['elementPublicationStatus'] as Map<String, dynamic>),
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_ContentDefinitionToJson(
    Contract_ContentDefinition instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('subType', instance.subType?.toJson());
  writeNotNull('publisher', instance.publisher?.toJson());
  writeNotNull('publicationDate', instance.publicationDate?.toIso8601String());
  writeNotNull(
      'elementPublicationDate', instance.elementPublicationDate?.toJson());
  writeNotNull('publicationStatus', instance.publicationStatus);
  writeNotNull(
      'elementPublicationStatus', instance.elementPublicationStatus?.toJson());
  writeNotNull('copyright', instance.copyright);
  writeNotNull('elementCopyright', instance.elementCopyright?.toJson());
  return val;
}

Contract_Term _$Contract_TermFromJson(Map<String, dynamic> json) {
  return Contract_Term(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    issued: json['issued'] == null
        ? null
        : DateTime.parse(json['issued'] as String),
    elementIssued: json['elementIssued'] == null
        ? null
        : Element.fromJson(json['elementIssued'] as Map<String, dynamic>),
    applies: json['applies'] == null
        ? null
        : Period.fromJson(json['applies'] as Map<String, dynamic>),
    topicCodeableConcept: json['topicCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['topicCodeableConcept'] as Map<String, dynamic>),
    topicReference: json['topicReference'] == null
        ? null
        : Reference.fromJson(json['topicReference'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    subType: json['subType'] == null
        ? null
        : CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    securityLabel: (json['securityLabel'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_SecurityLabel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    offer: json['offer'] == null
        ? null
        : Contract_Offer.fromJson(json['offer'] as Map<String, dynamic>),
    asset: (json['asset'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Asset.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    action: (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Action.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    group: (json['group'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Term.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_TermToJson(Contract_Term instance) {
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
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('issued', instance.issued?.toIso8601String());
  writeNotNull('elementIssued', instance.elementIssued?.toJson());
  writeNotNull('applies', instance.applies?.toJson());
  writeNotNull('topicCodeableConcept', instance.topicCodeableConcept?.toJson());
  writeNotNull('topicReference', instance.topicReference?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('subType', instance.subType?.toJson());
  writeNotNull('text', instance.text);
  writeNotNull('elementText', instance.elementText?.toJson());
  writeNotNull('securityLabel',
      instance.securityLabel?.map((e) => e?.toJson())?.toList());
  writeNotNull('offer', instance.offer?.toJson());
  writeNotNull('asset', instance.asset?.map((e) => e?.toJson())?.toList());
  writeNotNull('action', instance.action?.map((e) => e?.toJson())?.toList());
  writeNotNull('group', instance.group?.map((e) => e?.toJson())?.toList());
  return val;
}

Contract_SecurityLabel _$Contract_SecurityLabelFromJson(
    Map<String, dynamic> json) {
  return Contract_SecurityLabel(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    number: (json['number'] as List)?.map((e) => e as int)?.toList(),
    elementNumber: (json['elementNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    classification: json['classification'] == null
        ? null
        : Coding.fromJson(json['classification'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    control: (json['control'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_SecurityLabelToJson(
    Contract_SecurityLabel instance) {
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
  writeNotNull('number', instance.number);
  writeNotNull('elementNumber',
      instance.elementNumber?.map((e) => e?.toJson())?.toList());
  writeNotNull('classification', instance.classification?.toJson());
  writeNotNull(
      'category', instance.category?.map((e) => e?.toJson())?.toList());
  writeNotNull('control', instance.control?.map((e) => e?.toJson())?.toList());
  return val;
}

Contract_Offer _$Contract_OfferFromJson(Map<String, dynamic> json) {
  return Contract_Offer(
    id: json['id'] as String,
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
    party: (json['party'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Party.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    topic: json['topic'] == null
        ? null
        : Reference.fromJson(json['topic'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    decision: json['decision'] == null
        ? null
        : CodeableConcept.fromJson(json['decision'] as Map<String, dynamic>),
    decisionMode: (json['decisionMode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    answer: (json['answer'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Answer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    linkId: (json['linkId'] as List)?.map((e) => e as String)?.toList(),
    elementLinkId: (json['elementLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    securityLabelNumber:
        (json['securityLabelNumber'] as List)?.map((e) => e as int)?.toList(),
    elementSecurityLabelNumber: (json['elementSecurityLabelNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_OfferToJson(Contract_Offer instance) {
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
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('party', instance.party?.map((e) => e?.toJson())?.toList());
  writeNotNull('topic', instance.topic?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('decision', instance.decision?.toJson());
  writeNotNull(
      'decisionMode', instance.decisionMode?.map((e) => e?.toJson())?.toList());
  writeNotNull('answer', instance.answer?.map((e) => e?.toJson())?.toList());
  writeNotNull('text', instance.text);
  writeNotNull('elementText', instance.elementText?.toJson());
  writeNotNull('linkId', instance.linkId);
  writeNotNull('elementLinkId',
      instance.elementLinkId?.map((e) => e?.toJson())?.toList());
  writeNotNull('securityLabelNumber', instance.securityLabelNumber);
  writeNotNull('elementSecurityLabelNumber',
      instance.elementSecurityLabelNumber?.map((e) => e?.toJson())?.toList());
  return val;
}

Contract_Party _$Contract_PartyFromJson(Map<String, dynamic> json) {
  return Contract_Party(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reference: (json['reference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    role: json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_PartyToJson(Contract_Party instance) {
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
  writeNotNull(
      'reference', instance.reference?.map((e) => e?.toJson())?.toList());
  writeNotNull('role', instance.role?.toJson());
  return val;
}

Contract_Answer _$Contract_AnswerFromJson(Map<String, dynamic> json) {
  return Contract_Answer(
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

Map<String, dynamic> _$Contract_AnswerToJson(Contract_Answer instance) {
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

Contract_Asset _$Contract_AssetFromJson(Map<String, dynamic> json) {
  return Contract_Asset(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    scope: json['scope'] == null
        ? null
        : CodeableConcept.fromJson(json['scope'] as Map<String, dynamic>),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    typeReference: (json['typeReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subtype: (json['subtype'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relationship: json['relationship'] == null
        ? null
        : Coding.fromJson(json['relationship'] as Map<String, dynamic>),
    context: (json['context'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Context.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    condition: json['condition'] as String,
    elementCondition: json['elementCondition'] == null
        ? null
        : Element.fromJson(json['elementCondition'] as Map<String, dynamic>),
    periodType: (json['periodType'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: (json['period'] as List)
        ?.map((e) =>
            e == null ? null : Period.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    usePeriod: (json['usePeriod'] as List)
        ?.map((e) =>
            e == null ? null : Period.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    linkId: (json['linkId'] as List)?.map((e) => e as String)?.toList(),
    elementLinkId: (json['elementLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    answer: (json['answer'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Answer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    securityLabelNumber:
        (json['securityLabelNumber'] as List)?.map((e) => e as int)?.toList(),
    elementSecurityLabelNumber: (json['elementSecurityLabelNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valuedItem: (json['valuedItem'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_ValuedItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_AssetToJson(Contract_Asset instance) {
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
  writeNotNull('scope', instance.scope?.toJson());
  writeNotNull('type', instance.type?.map((e) => e?.toJson())?.toList());
  writeNotNull('typeReference',
      instance.typeReference?.map((e) => e?.toJson())?.toList());
  writeNotNull('subtype', instance.subtype?.map((e) => e?.toJson())?.toList());
  writeNotNull('relationship', instance.relationship?.toJson());
  writeNotNull('context', instance.context?.map((e) => e?.toJson())?.toList());
  writeNotNull('condition', instance.condition);
  writeNotNull('elementCondition', instance.elementCondition?.toJson());
  writeNotNull(
      'periodType', instance.periodType?.map((e) => e?.toJson())?.toList());
  writeNotNull('period', instance.period?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'usePeriod', instance.usePeriod?.map((e) => e?.toJson())?.toList());
  writeNotNull('text', instance.text);
  writeNotNull('elementText', instance.elementText?.toJson());
  writeNotNull('linkId', instance.linkId);
  writeNotNull('elementLinkId',
      instance.elementLinkId?.map((e) => e?.toJson())?.toList());
  writeNotNull('answer', instance.answer?.map((e) => e?.toJson())?.toList());
  writeNotNull('securityLabelNumber', instance.securityLabelNumber);
  writeNotNull('elementSecurityLabelNumber',
      instance.elementSecurityLabelNumber?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'valuedItem', instance.valuedItem?.map((e) => e?.toJson())?.toList());
  return val;
}

Contract_Context _$Contract_ContextFromJson(Map<String, dynamic> json) {
  return Contract_Context(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reference: json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>),
    code: (json['code'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_ContextToJson(Contract_Context instance) {
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
  writeNotNull('reference', instance.reference?.toJson());
  writeNotNull('code', instance.code?.map((e) => e?.toJson())?.toList());
  writeNotNull('text', instance.text);
  writeNotNull('elementText', instance.elementText?.toJson());
  return val;
}

Contract_ValuedItem _$Contract_ValuedItemFromJson(Map<String, dynamic> json) {
  return Contract_ValuedItem(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    entityCodeableConcept: json['entityCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['entityCodeableConcept'] as Map<String, dynamic>),
    entityReference: json['entityReference'] == null
        ? null
        : Reference.fromJson(json['entityReference'] as Map<String, dynamic>),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    effectiveTime: json['effectiveTime'] == null
        ? null
        : DateTime.parse(json['effectiveTime'] as String),
    elementEffectiveTime: json['elementEffectiveTime'] == null
        ? null
        : Element.fromJson(
            json['elementEffectiveTime'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    unitPrice: json['unitPrice'] == null
        ? null
        : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
    factor: (json['factor'] as num)?.toDouble(),
    elementFactor: json['elementFactor'] == null
        ? null
        : Element.fromJson(json['elementFactor'] as Map<String, dynamic>),
    points: (json['points'] as num)?.toDouble(),
    elementPoints: json['elementPoints'] == null
        ? null
        : Element.fromJson(json['elementPoints'] as Map<String, dynamic>),
    net: json['net'] == null
        ? null
        : Money.fromJson(json['net'] as Map<String, dynamic>),
    payment: json['payment'] as String,
    elementPayment: json['elementPayment'] == null
        ? null
        : Element.fromJson(json['elementPayment'] as Map<String, dynamic>),
    paymentDate: json['paymentDate'] == null
        ? null
        : DateTime.parse(json['paymentDate'] as String),
    elementPaymentDate: json['elementPaymentDate'] == null
        ? null
        : Element.fromJson(json['elementPaymentDate'] as Map<String, dynamic>),
    responsible: json['responsible'] == null
        ? null
        : Reference.fromJson(json['responsible'] as Map<String, dynamic>),
    recipient: json['recipient'] == null
        ? null
        : Reference.fromJson(json['recipient'] as Map<String, dynamic>),
    linkId: (json['linkId'] as List)?.map((e) => e as String)?.toList(),
    elementLinkId: (json['elementLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    securityLabelNumber:
        (json['securityLabelNumber'] as List)?.map((e) => e as int)?.toList(),
    elementSecurityLabelNumber: (json['elementSecurityLabelNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_ValuedItemToJson(Contract_ValuedItem instance) {
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
  writeNotNull(
      'entityCodeableConcept', instance.entityCodeableConcept?.toJson());
  writeNotNull('entityReference', instance.entityReference?.toJson());
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('effectiveTime', instance.effectiveTime?.toIso8601String());
  writeNotNull('elementEffectiveTime', instance.elementEffectiveTime?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor);
  writeNotNull('elementFactor', instance.elementFactor?.toJson());
  writeNotNull('points', instance.points);
  writeNotNull('elementPoints', instance.elementPoints?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull('payment', instance.payment);
  writeNotNull('elementPayment', instance.elementPayment?.toJson());
  writeNotNull('paymentDate', instance.paymentDate?.toIso8601String());
  writeNotNull('elementPaymentDate', instance.elementPaymentDate?.toJson());
  writeNotNull('responsible', instance.responsible?.toJson());
  writeNotNull('recipient', instance.recipient?.toJson());
  writeNotNull('linkId', instance.linkId);
  writeNotNull('elementLinkId',
      instance.elementLinkId?.map((e) => e?.toJson())?.toList());
  writeNotNull('securityLabelNumber', instance.securityLabelNumber);
  writeNotNull('elementSecurityLabelNumber',
      instance.elementSecurityLabelNumber?.map((e) => e?.toJson())?.toList());
  return val;
}

Contract_Action _$Contract_ActionFromJson(Map<String, dynamic> json) {
  return Contract_Action(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    doNotPerform: json['doNotPerform'] as bool,
    elementDoNotPerform: json['elementDoNotPerform'] == null
        ? null
        : Element.fromJson(json['elementDoNotPerform'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    subject: (json['subject'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Subject.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    intent: json['intent'] == null
        ? null
        : CodeableConcept.fromJson(json['intent'] as Map<String, dynamic>),
    linkId: (json['linkId'] as List)?.map((e) => e as String)?.toList(),
    elementLinkId: (json['elementLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
    context: json['context'] == null
        ? null
        : Reference.fromJson(json['context'] as Map<String, dynamic>),
    contextLinkId:
        (json['contextLinkId'] as List)?.map((e) => e as String)?.toList(),
    elementContextLinkId: (json['elementContextLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    occurrenceDateTime: json['occurrenceDateTime'] as String,
    elementOccurrenceDateTime: json['elementOccurrenceDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementOccurrenceDateTime'] as Map<String, dynamic>),
    occurrencePeriod: json['occurrencePeriod'] == null
        ? null
        : Period.fromJson(json['occurrencePeriod'] as Map<String, dynamic>),
    occurrenceTiming: json['occurrenceTiming'] == null
        ? null
        : Timing.fromJson(json['occurrenceTiming'] as Map<String, dynamic>),
    requester: (json['requester'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    requesterLinkId:
        (json['requesterLinkId'] as List)?.map((e) => e as String)?.toList(),
    elementRequesterLinkId: (json['elementRequesterLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    performerType: (json['performerType'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    performerRole: json['performerRole'] == null
        ? null
        : CodeableConcept.fromJson(
            json['performerRole'] as Map<String, dynamic>),
    performer: json['performer'] == null
        ? null
        : Reference.fromJson(json['performer'] as Map<String, dynamic>),
    performerLinkId:
        (json['performerLinkId'] as List)?.map((e) => e as String)?.toList(),
    elementPerformerLinkId: (json['elementPerformerLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reason: (json['reason'] as List)?.map((e) => e as String)?.toList(),
    elementReason: (json['elementReason'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonLinkId:
        (json['reasonLinkId'] as List)?.map((e) => e as String)?.toList(),
    elementReasonLinkId: (json['elementReasonLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    securityLabelNumber:
        (json['securityLabelNumber'] as List)?.map((e) => e as int)?.toList(),
    elementSecurityLabelNumber: (json['elementSecurityLabelNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_ActionToJson(Contract_Action instance) {
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
  writeNotNull('doNotPerform', instance.doNotPerform);
  writeNotNull('elementDoNotPerform', instance.elementDoNotPerform?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('subject', instance.subject?.map((e) => e?.toJson())?.toList());
  writeNotNull('intent', instance.intent?.toJson());
  writeNotNull('linkId', instance.linkId);
  writeNotNull('elementLinkId',
      instance.elementLinkId?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('context', instance.context?.toJson());
  writeNotNull('contextLinkId', instance.contextLinkId);
  writeNotNull('elementContextLinkId',
      instance.elementContextLinkId?.map((e) => e?.toJson())?.toList());
  writeNotNull('occurrenceDateTime', instance.occurrenceDateTime);
  writeNotNull('elementOccurrenceDateTime',
      instance.elementOccurrenceDateTime?.toJson());
  writeNotNull('occurrencePeriod', instance.occurrencePeriod?.toJson());
  writeNotNull('occurrenceTiming', instance.occurrenceTiming?.toJson());
  writeNotNull(
      'requester', instance.requester?.map((e) => e?.toJson())?.toList());
  writeNotNull('requesterLinkId', instance.requesterLinkId);
  writeNotNull('elementRequesterLinkId',
      instance.elementRequesterLinkId?.map((e) => e?.toJson())?.toList());
  writeNotNull('performerType',
      instance.performerType?.map((e) => e?.toJson())?.toList());
  writeNotNull('performerRole', instance.performerRole?.toJson());
  writeNotNull('performer', instance.performer?.toJson());
  writeNotNull('performerLinkId', instance.performerLinkId);
  writeNotNull('elementPerformerLinkId',
      instance.elementPerformerLinkId?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'reasonCode', instance.reasonCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('reasonReference',
      instance.reasonReference?.map((e) => e?.toJson())?.toList());
  writeNotNull('reason', instance.reason);
  writeNotNull('elementReason',
      instance.elementReason?.map((e) => e?.toJson())?.toList());
  writeNotNull('reasonLinkId', instance.reasonLinkId);
  writeNotNull('elementReasonLinkId',
      instance.elementReasonLinkId?.map((e) => e?.toJson())?.toList());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  writeNotNull('securityLabelNumber', instance.securityLabelNumber);
  writeNotNull('elementSecurityLabelNumber',
      instance.elementSecurityLabelNumber?.map((e) => e?.toJson())?.toList());
  return val;
}

Contract_Subject _$Contract_SubjectFromJson(Map<String, dynamic> json) {
  return Contract_Subject(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reference: (json['reference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    role: json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_SubjectToJson(Contract_Subject instance) {
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
  writeNotNull(
      'reference', instance.reference?.map((e) => e?.toJson())?.toList());
  writeNotNull('role', instance.role?.toJson());
  return val;
}

Contract_Signer _$Contract_SignerFromJson(Map<String, dynamic> json) {
  return Contract_Signer(
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
        : Coding.fromJson(json['type'] as Map<String, dynamic>),
    party: json['party'] == null
        ? null
        : Reference.fromJson(json['party'] as Map<String, dynamic>),
    signature: (json['signature'] as List)
        ?.map((e) =>
            e == null ? null : Signature.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_SignerToJson(Contract_Signer instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('party', instance.party?.toJson());
  writeNotNull(
      'signature', instance.signature?.map((e) => e?.toJson())?.toList());
  return val;
}

Contract_Friendly _$Contract_FriendlyFromJson(Map<String, dynamic> json) {
  return Contract_Friendly(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contentAttachment: json['contentAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['contentAttachment'] as Map<String, dynamic>),
    contentReference: json['contentReference'] == null
        ? null
        : Reference.fromJson(json['contentReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_FriendlyToJson(Contract_Friendly instance) {
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
  writeNotNull('contentAttachment', instance.contentAttachment?.toJson());
  writeNotNull('contentReference', instance.contentReference?.toJson());
  return val;
}

Contract_Legal _$Contract_LegalFromJson(Map<String, dynamic> json) {
  return Contract_Legal(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contentAttachment: json['contentAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['contentAttachment'] as Map<String, dynamic>),
    contentReference: json['contentReference'] == null
        ? null
        : Reference.fromJson(json['contentReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_LegalToJson(Contract_Legal instance) {
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
  writeNotNull('contentAttachment', instance.contentAttachment?.toJson());
  writeNotNull('contentReference', instance.contentReference?.toJson());
  return val;
}

Contract_Rule _$Contract_RuleFromJson(Map<String, dynamic> json) {
  return Contract_Rule(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contentAttachment: json['contentAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['contentAttachment'] as Map<String, dynamic>),
    contentReference: json['contentReference'] == null
        ? null
        : Reference.fromJson(json['contentReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_RuleToJson(Contract_Rule instance) {
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
  writeNotNull('contentAttachment', instance.contentAttachment?.toJson());
  writeNotNull('contentReference', instance.contentReference?.toJson());
  return val;
}
