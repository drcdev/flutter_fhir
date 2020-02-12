import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

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
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 167)
class Questionnaire {

	static Future<Questionnaire> newInstance({
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
		List<Questionnaire_Item> item}) async {
	Questionnaire newQuestionnaire = new Questionnaire(
			id: await newId('Questionnaire'),
			meta: meta,
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
			item: item);
	var questionnaireBox = await Hive.openBox<Questionnaire>('QuestionnaireBox');
	questionnaireBox.put(newQuestionnaire.id, newQuestionnaire);
	return newQuestionnaire;
}
  @HiveField(0)
  final String resourceType= 'Questionnaire';
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
  String status; // <code> enum: draft/active/retired/unknown;
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

Questionnaire(
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
    this.item
    });

  factory Questionnaire.fromJson(Map<String, dynamic> json) => _$QuestionnaireFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionnaireToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		List<Questionnaire_Item> item}) async {
	Questionnaire_Item newQuestionnaire_Item = new Questionnaire_Item(
			id: await newId('Questionnaire_Item'),
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
			item: item);
	var questionnaire_ItemBox = await Hive.openBox<Questionnaire_Item>('Questionnaire_ItemBox');
	questionnaire_ItemBox.put(newQuestionnaire_Item.id, newQuestionnaire_Item);
	return newQuestionnaire_Item;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String linkId;
  Element elementLinkId;
  String definition;
  Element elementDefinition;
  List<Coding> code;
  String prefix;
  Element elementPrefix;
  String text;
  Element elementText;
  String type; // <code> enum: group/display/boolean/decimal/integer/date/dateTime/time/string/text/url/choice/open-choice/attachment/reference/quantity;
  Element elementType;
  List<Questionnaire_EnableWhen> enableWhen;
  String enableBehavior; // <code> enum: all/any;
  Element elementEnableBehavior;
  bool required;
  Element elementRequired;
  bool repeats;
  Element elementRepeats;
  bool readOnly;
  Element elementReadOnly;
  int maxLength;
  Element elementMaxLength;
  String answerValueSet;
  List<Questionnaire_AnswerOption> answerOption;
  List<Questionnaire_Initial> initial;
  List<Questionnaire_Item> item;

Questionnaire_Item(
  {this.id,
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
    this.item
    });

  factory Questionnaire_Item.fromJson(Map<String, dynamic> json) => _$Questionnaire_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		Reference answerReference}) async {
	Questionnaire_EnableWhen newQuestionnaire_EnableWhen = new Questionnaire_EnableWhen(
			id: await newId('Questionnaire_EnableWhen'),
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
			answerReference: answerReference);
	var questionnaire_EnableWhenBox = await Hive.openBox<Questionnaire_EnableWhen>('Questionnaire_EnableWhenBox');
	questionnaire_EnableWhenBox.put(newQuestionnaire_EnableWhen.id, newQuestionnaire_EnableWhen);
	return newQuestionnaire_EnableWhen;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String question;
  Element elementQuestion;
  String operator; // <code> enum: exists/=/!=/>/</>=/<=;
  Element elementOperator;
  bool answerBoolean; //  pattern: ^true|false$
  Element elementAnswerBoolean;
  int answerDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
  Element elementAnswerDecimal;
  int answerInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
  Element elementAnswerInteger;
  String answerDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
  Element elementAnswerDate;
  String answerDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  Element elementAnswerDateTime;
  String answerTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
  Element elementAnswerTime;
  String answerString; //  pattern: ^[ \r\n\t\S]+$
  Element elementAnswerString;
  Coding answerCoding;
  Quantity answerQuantity;
  Reference answerReference;

Questionnaire_EnableWhen(
  {this.id,
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
    this.answerReference
    });

  factory Questionnaire_EnableWhen.fromJson(Map<String, dynamic> json) => _$Questionnaire_EnableWhenFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_EnableWhenToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		Element elementInitialSelected}) async {
	Questionnaire_AnswerOption newQuestionnaire_AnswerOption = new Questionnaire_AnswerOption(
			id: await newId('Questionnaire_AnswerOption'),
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
			elementInitialSelected: elementInitialSelected);
	var questionnaire_AnswerOptionBox = await Hive.openBox<Questionnaire_AnswerOption>('Questionnaire_AnswerOptionBox');
	questionnaire_AnswerOptionBox.put(newQuestionnaire_AnswerOption.id, newQuestionnaire_AnswerOption);
	return newQuestionnaire_AnswerOption;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
  Element elementValueInteger;
  String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
  Element elementValueDate;
  String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
  Element elementValueTime;
  String valueString; //  pattern: ^[ \r\n\t\S]+$
  Element elementValueString;
  Coding valueCoding;
  Reference valueReference;
  bool initialSelected;
  Element elementInitialSelected;

Questionnaire_AnswerOption(
  {this.id,
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
    this.elementInitialSelected
    });

  factory Questionnaire_AnswerOption.fromJson(Map<String, dynamic> json) => _$Questionnaire_AnswerOptionFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_AnswerOptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		Reference valueReference}) async {
	Questionnaire_Initial newQuestionnaire_Initial = new Questionnaire_Initial(
			id: await newId('Questionnaire_Initial'),
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
	var questionnaire_InitialBox = await Hive.openBox<Questionnaire_Initial>('Questionnaire_InitialBox');
	questionnaire_InitialBox.put(newQuestionnaire_Initial.id, newQuestionnaire_Initial);
	return newQuestionnaire_Initial;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool valueBoolean; //  pattern: ^true|false$
  Element elementValueBoolean;
  int valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
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

Questionnaire_Initial(
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

  factory Questionnaire_Initial.fromJson(Map<String, dynamic> json) => _$Questionnaire_InitialFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_InitialToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionnaireAdapter extends TypeAdapter<Questionnaire> {
  @override
  final typeId = 167;

  @override
  Questionnaire read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Questionnaire(
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Questionnaire _$QuestionnaireFromJson(Map<String, dynamic> json) {
  return Questionnaire(
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

Map<String, dynamic> _$QuestionnaireToJson(Questionnaire instance) =>
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
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'derivedFrom': instance.derivedFrom,
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'experimental': instance.experimental,
      'elementExperimental': instance.elementExperimental?.toJson(),
      'subjectType': instance.subjectType,
      'elementSubjectType':
          instance.elementSubjectType?.map((e) => e?.toJson())?.toList(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'publisher': instance.publisher,
      'elementPublisher': instance.elementPublisher?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'purpose': instance.purpose,
      'elementPurpose': instance.elementPurpose?.toJson(),
      'copyright': instance.copyright,
      'elementCopyright': instance.elementCopyright?.toJson(),
      'approvalDate': instance.approvalDate,
      'elementApprovalDate': instance.elementApprovalDate?.toJson(),
      'lastReviewDate': instance.lastReviewDate,
      'elementLastReviewDate': instance.elementLastReviewDate?.toJson(),
      'effectivePeriod': instance.effectivePeriod?.toJson(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
    };

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

Map<String, dynamic> _$Questionnaire_ItemToJson(Questionnaire_Item instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'linkId': instance.linkId,
      'elementLinkId': instance.elementLinkId?.toJson(),
      'definition': instance.definition,
      'elementDefinition': instance.elementDefinition?.toJson(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'prefix': instance.prefix,
      'elementPrefix': instance.elementPrefix?.toJson(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'enableWhen': instance.enableWhen?.map((e) => e?.toJson())?.toList(),
      'enableBehavior': instance.enableBehavior,
      'elementEnableBehavior': instance.elementEnableBehavior?.toJson(),
      'required': instance.required,
      'elementRequired': instance.elementRequired?.toJson(),
      'repeats': instance.repeats,
      'elementRepeats': instance.elementRepeats?.toJson(),
      'readOnly': instance.readOnly,
      'elementReadOnly': instance.elementReadOnly?.toJson(),
      'maxLength': instance.maxLength,
      'elementMaxLength': instance.elementMaxLength?.toJson(),
      'answerValueSet': instance.answerValueSet,
      'answerOption': instance.answerOption?.map((e) => e?.toJson())?.toList(),
      'initial': instance.initial?.map((e) => e?.toJson())?.toList(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
    };

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
        Questionnaire_EnableWhen instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'question': instance.question,
      'elementQuestion': instance.elementQuestion?.toJson(),
      'operator': instance.operator,
      'elementOperator': instance.elementOperator?.toJson(),
      'answerBoolean': instance.answerBoolean,
      'elementAnswerBoolean': instance.elementAnswerBoolean?.toJson(),
      'answerDecimal': instance.answerDecimal,
      'elementAnswerDecimal': instance.elementAnswerDecimal?.toJson(),
      'answerInteger': instance.answerInteger,
      'elementAnswerInteger': instance.elementAnswerInteger?.toJson(),
      'answerDate': instance.answerDate,
      'elementAnswerDate': instance.elementAnswerDate?.toJson(),
      'answerDateTime': instance.answerDateTime,
      'elementAnswerDateTime': instance.elementAnswerDateTime?.toJson(),
      'answerTime': instance.answerTime,
      'elementAnswerTime': instance.elementAnswerTime?.toJson(),
      'answerString': instance.answerString,
      'elementAnswerString': instance.elementAnswerString?.toJson(),
      'answerCoding': instance.answerCoding?.toJson(),
      'answerQuantity': instance.answerQuantity?.toJson(),
      'answerReference': instance.answerReference?.toJson(),
    };

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
        Questionnaire_AnswerOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'valueInteger': instance.valueInteger,
      'elementValueInteger': instance.elementValueInteger?.toJson(),
      'valueDate': instance.valueDate,
      'elementValueDate': instance.elementValueDate?.toJson(),
      'valueTime': instance.valueTime,
      'elementValueTime': instance.elementValueTime?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueCoding': instance.valueCoding?.toJson(),
      'valueReference': instance.valueReference?.toJson(),
      'initialSelected': instance.initialSelected,
      'elementInitialSelected': instance.elementInitialSelected?.toJson(),
    };

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
        Questionnaire_Initial instance) =>
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
