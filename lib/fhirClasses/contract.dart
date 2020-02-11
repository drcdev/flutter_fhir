import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

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
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 85)
class Contract {

	static Future<Contract> newInstance({
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
		Reference legallyBindingReference}) async {
	 return Contract(
			id: await newEntry('Contract'),
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
			legallyBindingReference: legallyBindingReference);
	}

  @HiveField(0)
  final String resourceType= 'Contract';
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
  String url;
  @HiveField(13)
  Element elementUrl;
  @HiveField(14)
  String version;
  @HiveField(15)
  Element elementVersion;
  @HiveField(16)
  String status;
  @HiveField(17)
  Element elementStatus;
  @HiveField(18)
  CodeableConcept legalState;
  @HiveField(19)
  Reference instantiatesCanonical;
  @HiveField(20)
  String instantiatesUri;
  @HiveField(21)
  Element elementInstantiatesUri;
  @HiveField(22)
  CodeableConcept contentDerivative;
  @HiveField(23)
  DateTime issued;
  @HiveField(24)
  Element elementIssued;
  @HiveField(25)
  Period applies;
  @HiveField(26)
  CodeableConcept expirationType;
  @HiveField(27)
  List<Reference> subject;
  @HiveField(28)
  List<Reference> authority;
  @HiveField(29)
  List<Reference> domain;
  @HiveField(30)
  List<Reference> site;
  @HiveField(31)
  String name;
  @HiveField(32)
  Element elementName;
  @HiveField(33)
  String title;
  @HiveField(34)
  Element elementTitle;
  @HiveField(35)
  String subtitle;
  @HiveField(36)
  Element elementSubtitle;
  @HiveField(37)
  List<String> alias;
  @HiveField(38)
  List<Element> elementAlias;
  @HiveField(39)
  Reference author;
  @HiveField(40)
  CodeableConcept scope;
  @HiveField(41)
  CodeableConcept topicCodeableConcept;
  @HiveField(42)
  Reference topicReference;
  @HiveField(43)
  CodeableConcept type;
  @HiveField(44)
  List<CodeableConcept> subType;
  @HiveField(45)
  Contract_ContentDefinition contentDefinition;
  @HiveField(46)
  List<Contract_Term> term;
  @HiveField(47)
  List<Reference> supportingInfo;
  @HiveField(48)
  List<Reference> relevantHistory;
  @HiveField(49)
  List<Contract_Signer> signer;
  @HiveField(50)
  List<Contract_Friendly> friendly;
  @HiveField(51)
  List<Contract_Legal> legal;
  @HiveField(52)
  List<Contract_Rule> rule;
  @HiveField(53)
  Attachment legallyBindingAttachment;
  @HiveField(54)
  Reference legallyBindingReference;

Contract(
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
    this.legallyBindingReference
    });

  factory Contract.fromJson(Map<String, dynamic> json) => _$ContractFromJson(json);
  Map<String, dynamic> toJson() => _$ContractToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		Element elementCopyright}) async {
	 return Contract_ContentDefinition(
			id: await newEntry('Contract_ContentDefinition'),
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
			elementCopyright: elementCopyright);
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

Contract_ContentDefinition(
  {this.id,
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
    this.elementCopyright
    });

  factory Contract_ContentDefinition.fromJson(Map<String, dynamic> json) => _$Contract_ContentDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_ContentDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		List<Contract_Term> group}) async {
	 return Contract_Term(
			id: await newEntry('Contract_Term'),
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
			group: group);
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

Contract_Term(
  {this.id,
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
    this.group
    });

  factory Contract_Term.fromJson(Map<String, dynamic> json) => _$Contract_TermFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_TermToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_SecurityLabel {

	static Future<Contract_SecurityLabel> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<int> number,
		List<Element> elementNumber,
		Coding classification,
		List<Coding> category,
		List<Coding> control}) async {
	 return Contract_SecurityLabel(
			id: await newEntry('Contract_SecurityLabel'),
			extension: extension,
			modifierExtension: modifierExtension,
			number: number,
			elementNumber: elementNumber,
			classification: classification,
			category: category,
			control: control);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<int> number;
  List<Element> elementNumber;
  Coding classification;
  List<Coding> category;
  List<Coding> control;

Contract_SecurityLabel(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.number,
    this.elementNumber,
    @required this.classification,
    this.category,
    this.control
    });

  factory Contract_SecurityLabel.fromJson(Map<String, dynamic> json) => _$Contract_SecurityLabelFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_SecurityLabelToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		List<Element> elementSecurityLabelNumber}) async {
	 return Contract_Offer(
			id: await newEntry('Contract_Offer'),
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
			elementSecurityLabelNumber: elementSecurityLabelNumber);
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

Contract_Offer(
  {this.id,
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
    this.elementSecurityLabelNumber
    });

  factory Contract_Offer.fromJson(Map<String, dynamic> json) => _$Contract_OfferFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_OfferToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Party {

	static Future<Contract_Party> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<Reference> reference,
		CodeableConcept role}) async {
	 return Contract_Party(
			id: await newEntry('Contract_Party'),
			extension: extension,
			modifierExtension: modifierExtension,
			reference: reference,
			role: role);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Reference> reference;
  CodeableConcept role;

Contract_Party(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.reference,
    @required this.role
    });

  factory Contract_Party.fromJson(Map<String, dynamic> json) => _$Contract_PartyFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_PartyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Answer {

	static Future<Contract_Answer> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		bool valueBoolean,
		Element elementValueBoolean,
		double valueDecimal,
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
		Reference valueReference}) async {
	 return Contract_Answer(
			id: await newEntry('Contract_Answer'),
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
			valueReference: valueReference);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool valueBoolean; //  pattern: ^true|false$
  Element elementValueBoolean;
  double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
  Element elementValueDecimal;
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
  Element elementValueInteger;
  String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
  Element elementValueDate;
  String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  Element elementValueDateTime;
  String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
  Element elementValueTime;
  String valueString; //  pattern: ^[ \r\n\t\S]+$
  Element elementValueString;
  String valueUri; //  pattern: ^\S*$
  Element elementValueUri;
  Attachment valueAttachment;
  Coding valueCoding;
  Quantity valueQuantity;
  Reference valueReference;

Contract_Answer(
  {this.id,
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
    this.valueReference
    });

  factory Contract_Answer.fromJson(Map<String, dynamic> json) => _$Contract_AnswerFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_AnswerToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		List<Contract_ValuedItem> valuedItem}) async {
	 return Contract_Asset(
			id: await newEntry('Contract_Asset'),
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
			valuedItem: valuedItem);
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

Contract_Asset(
  {this.id,
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
    this.valuedItem
    });

  factory Contract_Asset.fromJson(Map<String, dynamic> json) => _$Contract_AssetFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_AssetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Context {

	static Future<Contract_Context> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Reference reference,
		List<CodeableConcept> code,
		String text,
		Element elementText}) async {
	 return Contract_Context(
			id: await newEntry('Contract_Context'),
			extension: extension,
			modifierExtension: modifierExtension,
			reference: reference,
			code: code,
			text: text,
			elementText: elementText);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference reference;
  List<CodeableConcept> code;
  String text;
  Element elementText;

Contract_Context(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.reference,
    this.code,
    this.text,
    this.elementText
    });

  factory Contract_Context.fromJson(Map<String, dynamic> json) => _$Contract_ContextFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_ContextToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		List<Element> elementSecurityLabelNumber}) async {
	 return Contract_ValuedItem(
			id: await newEntry('Contract_ValuedItem'),
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
			elementSecurityLabelNumber: elementSecurityLabelNumber);
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

Contract_ValuedItem(
  {this.id,
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
    this.elementSecurityLabelNumber
    });

  factory Contract_ValuedItem.fromJson(Map<String, dynamic> json) => _$Contract_ValuedItemFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_ValuedItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		List<Element> elementSecurityLabelNumber}) async {
	 return Contract_Action(
			id: await newEntry('Contract_Action'),
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
			elementSecurityLabelNumber: elementSecurityLabelNumber);
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
  String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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

Contract_Action(
  {this.id,
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
    this.elementSecurityLabelNumber
    });

  factory Contract_Action.fromJson(Map<String, dynamic> json) => _$Contract_ActionFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Subject {

	static Future<Contract_Subject> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<Reference> reference,
		CodeableConcept role}) async {
	 return Contract_Subject(
			id: await newEntry('Contract_Subject'),
			extension: extension,
			modifierExtension: modifierExtension,
			reference: reference,
			role: role);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Reference> reference;
  CodeableConcept role;

Contract_Subject(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.reference,
    this.role
    });

  factory Contract_Subject.fromJson(Map<String, dynamic> json) => _$Contract_SubjectFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_SubjectToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Signer {

	static Future<Contract_Signer> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Coding type,
		Reference party,
		List<Signature> signature}) async {
	 return Contract_Signer(
			id: await newEntry('Contract_Signer'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			party: party,
			signature: signature);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Coding type;
  Reference party;
  List<Signature> signature;

Contract_Signer(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    @required this.party,
    @required this.signature
    });

  factory Contract_Signer.fromJson(Map<String, dynamic> json) => _$Contract_SignerFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_SignerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Friendly {

	static Future<Contract_Friendly> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Attachment contentAttachment,
		Reference contentReference}) async {
	 return Contract_Friendly(
			id: await newEntry('Contract_Friendly'),
			extension: extension,
			modifierExtension: modifierExtension,
			contentAttachment: contentAttachment,
			contentReference: contentReference);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Attachment contentAttachment;
  Reference contentReference;

Contract_Friendly(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.contentAttachment,
    this.contentReference
    });

  factory Contract_Friendly.fromJson(Map<String, dynamic> json) => _$Contract_FriendlyFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_FriendlyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Legal {

	static Future<Contract_Legal> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Attachment contentAttachment,
		Reference contentReference}) async {
	 return Contract_Legal(
			id: await newEntry('Contract_Legal'),
			extension: extension,
			modifierExtension: modifierExtension,
			contentAttachment: contentAttachment,
			contentReference: contentReference);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Attachment contentAttachment;
  Reference contentReference;

Contract_Legal(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.contentAttachment,
    this.contentReference
    });

  factory Contract_Legal.fromJson(Map<String, dynamic> json) => _$Contract_LegalFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_LegalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Rule {

	static Future<Contract_Rule> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Attachment contentAttachment,
		Reference contentReference}) async {
	 return Contract_Rule(
			id: await newEntry('Contract_Rule'),
			extension: extension,
			modifierExtension: modifierExtension,
			contentAttachment: contentAttachment,
			contentReference: contentReference);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Attachment contentAttachment;
  Reference contentReference;

Contract_Rule(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.contentAttachment,
    this.contentReference
    });

  factory Contract_Rule.fromJson(Map<String, dynamic> json) => _$Contract_RuleFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_RuleToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ContractAdapter extends TypeAdapter<Contract> {
  @override
  final typeId = 85;

  @override
  Contract read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Contract(
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
      url: fields[12] as String,
      elementUrl: fields[13] as Element,
      version: fields[14] as String,
      elementVersion: fields[15] as Element,
      status: fields[16] as String,
      elementStatus: fields[17] as Element,
      legalState: fields[18] as CodeableConcept,
      instantiatesCanonical: fields[19] as Reference,
      instantiatesUri: fields[20] as String,
      elementInstantiatesUri: fields[21] as Element,
      contentDerivative: fields[22] as CodeableConcept,
      issued: fields[23] as DateTime,
      elementIssued: fields[24] as Element,
      applies: fields[25] as Period,
      expirationType: fields[26] as CodeableConcept,
      subject: (fields[27] as List)?.cast<Reference>(),
      authority: (fields[28] as List)?.cast<Reference>(),
      domain: (fields[29] as List)?.cast<Reference>(),
      site: (fields[30] as List)?.cast<Reference>(),
      name: fields[31] as String,
      elementName: fields[32] as Element,
      title: fields[33] as String,
      elementTitle: fields[34] as Element,
      subtitle: fields[35] as String,
      elementSubtitle: fields[36] as Element,
      alias: (fields[37] as List)?.cast<String>(),
      elementAlias: (fields[38] as List)?.cast<Element>(),
      author: fields[39] as Reference,
      scope: fields[40] as CodeableConcept,
      topicCodeableConcept: fields[41] as CodeableConcept,
      topicReference: fields[42] as Reference,
      type: fields[43] as CodeableConcept,
      subType: (fields[44] as List)?.cast<CodeableConcept>(),
      contentDefinition: fields[45] as Contract_ContentDefinition,
      term: (fields[46] as List)?.cast<Contract_Term>(),
      supportingInfo: (fields[47] as List)?.cast<Reference>(),
      relevantHistory: (fields[48] as List)?.cast<Reference>(),
      signer: (fields[49] as List)?.cast<Contract_Signer>(),
      friendly: (fields[50] as List)?.cast<Contract_Friendly>(),
      legal: (fields[51] as List)?.cast<Contract_Legal>(),
      rule: (fields[52] as List)?.cast<Contract_Rule>(),
      legallyBindingAttachment: fields[53] as Attachment,
      legallyBindingReference: fields[54] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Contract obj) {
    writer
      ..writeByte(55)
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
      ..write(obj.url)
      ..writeByte(13)
      ..write(obj.elementUrl)
      ..writeByte(14)
      ..write(obj.version)
      ..writeByte(15)
      ..write(obj.elementVersion)
      ..writeByte(16)
      ..write(obj.status)
      ..writeByte(17)
      ..write(obj.elementStatus)
      ..writeByte(18)
      ..write(obj.legalState)
      ..writeByte(19)
      ..write(obj.instantiatesCanonical)
      ..writeByte(20)
      ..write(obj.instantiatesUri)
      ..writeByte(21)
      ..write(obj.elementInstantiatesUri)
      ..writeByte(22)
      ..write(obj.contentDerivative)
      ..writeByte(23)
      ..write(obj.issued)
      ..writeByte(24)
      ..write(obj.elementIssued)
      ..writeByte(25)
      ..write(obj.applies)
      ..writeByte(26)
      ..write(obj.expirationType)
      ..writeByte(27)
      ..write(obj.subject)
      ..writeByte(28)
      ..write(obj.authority)
      ..writeByte(29)
      ..write(obj.domain)
      ..writeByte(30)
      ..write(obj.site)
      ..writeByte(31)
      ..write(obj.name)
      ..writeByte(32)
      ..write(obj.elementName)
      ..writeByte(33)
      ..write(obj.title)
      ..writeByte(34)
      ..write(obj.elementTitle)
      ..writeByte(35)
      ..write(obj.subtitle)
      ..writeByte(36)
      ..write(obj.elementSubtitle)
      ..writeByte(37)
      ..write(obj.alias)
      ..writeByte(38)
      ..write(obj.elementAlias)
      ..writeByte(39)
      ..write(obj.author)
      ..writeByte(40)
      ..write(obj.scope)
      ..writeByte(41)
      ..write(obj.topicCodeableConcept)
      ..writeByte(42)
      ..write(obj.topicReference)
      ..writeByte(43)
      ..write(obj.type)
      ..writeByte(44)
      ..write(obj.subType)
      ..writeByte(45)
      ..write(obj.contentDefinition)
      ..writeByte(46)
      ..write(obj.term)
      ..writeByte(47)
      ..write(obj.supportingInfo)
      ..writeByte(48)
      ..write(obj.relevantHistory)
      ..writeByte(49)
      ..write(obj.signer)
      ..writeByte(50)
      ..write(obj.friendly)
      ..writeByte(51)
      ..write(obj.legal)
      ..writeByte(52)
      ..write(obj.rule)
      ..writeByte(53)
      ..write(obj.legallyBindingAttachment)
      ..writeByte(54)
      ..write(obj.legallyBindingReference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contract _$ContractFromJson(Map<String, dynamic> json) {
  return Contract(
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

Map<String, dynamic> _$ContractToJson(Contract instance) => <String, dynamic>{
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
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'legalState': instance.legalState?.toJson(),
      'instantiatesCanonical': instance.instantiatesCanonical?.toJson(),
      'instantiatesUri': instance.instantiatesUri,
      'elementInstantiatesUri': instance.elementInstantiatesUri?.toJson(),
      'contentDerivative': instance.contentDerivative?.toJson(),
      'issued': instance.issued?.toIso8601String(),
      'elementIssued': instance.elementIssued?.toJson(),
      'applies': instance.applies?.toJson(),
      'expirationType': instance.expirationType?.toJson(),
      'subject': instance.subject?.map((e) => e?.toJson())?.toList(),
      'authority': instance.authority?.map((e) => e?.toJson())?.toList(),
      'domain': instance.domain?.map((e) => e?.toJson())?.toList(),
      'site': instance.site?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'subtitle': instance.subtitle,
      'elementSubtitle': instance.elementSubtitle?.toJson(),
      'alias': instance.alias,
      'elementAlias': instance.elementAlias?.map((e) => e?.toJson())?.toList(),
      'author': instance.author?.toJson(),
      'scope': instance.scope?.toJson(),
      'topicCodeableConcept': instance.topicCodeableConcept?.toJson(),
      'topicReference': instance.topicReference?.toJson(),
      'type': instance.type?.toJson(),
      'subType': instance.subType?.map((e) => e?.toJson())?.toList(),
      'contentDefinition': instance.contentDefinition?.toJson(),
      'term': instance.term?.map((e) => e?.toJson())?.toList(),
      'supportingInfo':
          instance.supportingInfo?.map((e) => e?.toJson())?.toList(),
      'relevantHistory':
          instance.relevantHistory?.map((e) => e?.toJson())?.toList(),
      'signer': instance.signer?.map((e) => e?.toJson())?.toList(),
      'friendly': instance.friendly?.map((e) => e?.toJson())?.toList(),
      'legal': instance.legal?.map((e) => e?.toJson())?.toList(),
      'rule': instance.rule?.map((e) => e?.toJson())?.toList(),
      'legallyBindingAttachment': instance.legallyBindingAttachment?.toJson(),
      'legallyBindingReference': instance.legallyBindingReference?.toJson(),
    };

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
        Contract_ContentDefinition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'subType': instance.subType?.toJson(),
      'publisher': instance.publisher?.toJson(),
      'publicationDate': instance.publicationDate?.toIso8601String(),
      'elementPublicationDate': instance.elementPublicationDate?.toJson(),
      'publicationStatus': instance.publicationStatus,
      'elementPublicationStatus': instance.elementPublicationStatus?.toJson(),
      'copyright': instance.copyright,
      'elementCopyright': instance.elementCopyright?.toJson(),
    };

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

Map<String, dynamic> _$Contract_TermToJson(Contract_Term instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.toJson(),
      'issued': instance.issued?.toIso8601String(),
      'elementIssued': instance.elementIssued?.toJson(),
      'applies': instance.applies?.toJson(),
      'topicCodeableConcept': instance.topicCodeableConcept?.toJson(),
      'topicReference': instance.topicReference?.toJson(),
      'type': instance.type?.toJson(),
      'subType': instance.subType?.toJson(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
      'securityLabel':
          instance.securityLabel?.map((e) => e?.toJson())?.toList(),
      'offer': instance.offer?.toJson(),
      'asset': instance.asset?.map((e) => e?.toJson())?.toList(),
      'action': instance.action?.map((e) => e?.toJson())?.toList(),
      'group': instance.group?.map((e) => e?.toJson())?.toList(),
    };

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
        Contract_SecurityLabel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'number': instance.number,
      'elementNumber':
          instance.elementNumber?.map((e) => e?.toJson())?.toList(),
      'classification': instance.classification?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'control': instance.control?.map((e) => e?.toJson())?.toList(),
    };

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

Map<String, dynamic> _$Contract_OfferToJson(Contract_Offer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'party': instance.party?.map((e) => e?.toJson())?.toList(),
      'topic': instance.topic?.toJson(),
      'type': instance.type?.toJson(),
      'decision': instance.decision?.toJson(),
      'decisionMode': instance.decisionMode?.map((e) => e?.toJson())?.toList(),
      'answer': instance.answer?.map((e) => e?.toJson())?.toList(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
      'linkId': instance.linkId,
      'elementLinkId':
          instance.elementLinkId?.map((e) => e?.toJson())?.toList(),
      'securityLabelNumber': instance.securityLabelNumber,
      'elementSecurityLabelNumber': instance.elementSecurityLabelNumber
          ?.map((e) => e?.toJson())
          ?.toList(),
    };

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

Map<String, dynamic> _$Contract_PartyToJson(Contract_Party instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'reference': instance.reference?.map((e) => e?.toJson())?.toList(),
      'role': instance.role?.toJson(),
    };

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
    valueDecimal: (json['valueDecimal'] as num)?.toDouble(),
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

Map<String, dynamic> _$Contract_AnswerToJson(Contract_Answer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'valueBoolean': instance.valueBoolean,
      'elementValueBoolean': instance.elementValueBoolean?.toJson(),
      'valueDecimal': instance.valueDecimal,
      'elementValueDecimal': instance.elementValueDecimal?.toJson(),
      'valueInteger': instance.valueInteger,
      'elementValueInteger': instance.elementValueInteger?.toJson(),
      'valueDate': instance.valueDate,
      'elementValueDate': instance.elementValueDate?.toJson(),
      'valueDateTime': instance.valueDateTime,
      'elementValueDateTime': instance.elementValueDateTime?.toJson(),
      'valueTime': instance.valueTime,
      'elementValueTime': instance.elementValueTime?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueUri': instance.valueUri,
      'elementValueUri': instance.elementValueUri?.toJson(),
      'valueAttachment': instance.valueAttachment?.toJson(),
      'valueCoding': instance.valueCoding?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueReference': instance.valueReference?.toJson(),
    };

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

Map<String, dynamic> _$Contract_AssetToJson(Contract_Asset instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'scope': instance.scope?.toJson(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'typeReference':
          instance.typeReference?.map((e) => e?.toJson())?.toList(),
      'subtype': instance.subtype?.map((e) => e?.toJson())?.toList(),
      'relationship': instance.relationship?.toJson(),
      'context': instance.context?.map((e) => e?.toJson())?.toList(),
      'condition': instance.condition,
      'elementCondition': instance.elementCondition?.toJson(),
      'periodType': instance.periodType?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.map((e) => e?.toJson())?.toList(),
      'usePeriod': instance.usePeriod?.map((e) => e?.toJson())?.toList(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
      'linkId': instance.linkId,
      'elementLinkId':
          instance.elementLinkId?.map((e) => e?.toJson())?.toList(),
      'answer': instance.answer?.map((e) => e?.toJson())?.toList(),
      'securityLabelNumber': instance.securityLabelNumber,
      'elementSecurityLabelNumber': instance.elementSecurityLabelNumber
          ?.map((e) => e?.toJson())
          ?.toList(),
      'valuedItem': instance.valuedItem?.map((e) => e?.toJson())?.toList(),
    };

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

Map<String, dynamic> _$Contract_ContextToJson(Contract_Context instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'reference': instance.reference?.toJson(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
    };

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

Map<String, dynamic> _$Contract_ValuedItemToJson(
        Contract_ValuedItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'entityCodeableConcept': instance.entityCodeableConcept?.toJson(),
      'entityReference': instance.entityReference?.toJson(),
      'identifier': instance.identifier?.toJson(),
      'effectiveTime': instance.effectiveTime?.toIso8601String(),
      'elementEffectiveTime': instance.elementEffectiveTime?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'unitPrice': instance.unitPrice?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'points': instance.points,
      'elementPoints': instance.elementPoints?.toJson(),
      'net': instance.net?.toJson(),
      'payment': instance.payment,
      'elementPayment': instance.elementPayment?.toJson(),
      'paymentDate': instance.paymentDate?.toIso8601String(),
      'elementPaymentDate': instance.elementPaymentDate?.toJson(),
      'responsible': instance.responsible?.toJson(),
      'recipient': instance.recipient?.toJson(),
      'linkId': instance.linkId,
      'elementLinkId':
          instance.elementLinkId?.map((e) => e?.toJson())?.toList(),
      'securityLabelNumber': instance.securityLabelNumber,
      'elementSecurityLabelNumber': instance.elementSecurityLabelNumber
          ?.map((e) => e?.toJson())
          ?.toList(),
    };

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

Map<String, dynamic> _$Contract_ActionToJson(Contract_Action instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'doNotPerform': instance.doNotPerform,
      'elementDoNotPerform': instance.elementDoNotPerform?.toJson(),
      'type': instance.type?.toJson(),
      'subject': instance.subject?.map((e) => e?.toJson())?.toList(),
      'intent': instance.intent?.toJson(),
      'linkId': instance.linkId,
      'elementLinkId':
          instance.elementLinkId?.map((e) => e?.toJson())?.toList(),
      'status': instance.status?.toJson(),
      'context': instance.context?.toJson(),
      'contextLinkId': instance.contextLinkId,
      'elementContextLinkId':
          instance.elementContextLinkId?.map((e) => e?.toJson())?.toList(),
      'occurrenceDateTime': instance.occurrenceDateTime,
      'elementOccurrenceDateTime': instance.elementOccurrenceDateTime?.toJson(),
      'occurrencePeriod': instance.occurrencePeriod?.toJson(),
      'occurrenceTiming': instance.occurrenceTiming?.toJson(),
      'requester': instance.requester?.map((e) => e?.toJson())?.toList(),
      'requesterLinkId': instance.requesterLinkId,
      'elementRequesterLinkId':
          instance.elementRequesterLinkId?.map((e) => e?.toJson())?.toList(),
      'performerType':
          instance.performerType?.map((e) => e?.toJson())?.toList(),
      'performerRole': instance.performerRole?.toJson(),
      'performer': instance.performer?.toJson(),
      'performerLinkId': instance.performerLinkId,
      'elementPerformerLinkId':
          instance.elementPerformerLinkId?.map((e) => e?.toJson())?.toList(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'reason': instance.reason,
      'elementReason':
          instance.elementReason?.map((e) => e?.toJson())?.toList(),
      'reasonLinkId': instance.reasonLinkId,
      'elementReasonLinkId':
          instance.elementReasonLinkId?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'securityLabelNumber': instance.securityLabelNumber,
      'elementSecurityLabelNumber': instance.elementSecurityLabelNumber
          ?.map((e) => e?.toJson())
          ?.toList(),
    };

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

Map<String, dynamic> _$Contract_SubjectToJson(Contract_Subject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'reference': instance.reference?.map((e) => e?.toJson())?.toList(),
      'role': instance.role?.toJson(),
    };

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

Map<String, dynamic> _$Contract_SignerToJson(Contract_Signer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'party': instance.party?.toJson(),
      'signature': instance.signature?.map((e) => e?.toJson())?.toList(),
    };

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

Map<String, dynamic> _$Contract_FriendlyToJson(Contract_Friendly instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'contentAttachment': instance.contentAttachment?.toJson(),
      'contentReference': instance.contentReference?.toJson(),
    };

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

Map<String, dynamic> _$Contract_LegalToJson(Contract_Legal instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'contentAttachment': instance.contentAttachment?.toJson(),
      'contentReference': instance.contentReference?.toJson(),
    };

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

Map<String, dynamic> _$Contract_RuleToJson(Contract_Rule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'contentAttachment': instance.contentAttachment?.toJson(),
      'contentReference': instance.contentReference?.toJson(),
    };
