part 'questionnaire.g.dart';

@JsonSerializable(explicitToJson: true)
class Questionnaire {

Questionnaire resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
Narrative text;
List<ResourceList> contained;
List<Extension> extension;
List<Extension> modifierExtension;
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
List<String> derivedFrom;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
List<String> subjectType;
List<Element> _subjectType;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String copyright;
Element _copyright;
String approvalDate;
Element _approvalDate;
String lastReviewDate;
Element _lastReviewDate;
Period effectivePeriod;
List<Coding> code;
List<Questionnaire_Item> item;

Questionnaire(
  {this.resourceType,
      this.id,
      this.meta,
      this.implicitRules,
      this._implicitRules,
      this.language,
      this._language,
      this.text,
      this.contained,
      this.extension,
      this.modifierExtension,
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.derivedFrom,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.subjectType,
      this._subjectType,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.copyright,
      this._copyright,
      this.approvalDate,
      this._approvalDate,
      this.lastReviewDate,
      this._lastReviewDate,
      this.effectivePeriod,
      this.code,
      this.item,
      });

  factory Questionnaire.fromJson(Map<String, dynamic> json) => _$QuestionnaireFromJson(json);
  Map<String, dynamic> toJson() _$QuestionnaireToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Questionnaire_Item {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String linkId;
Element _linkId;
String definition;
Element _definition;
List<Coding> code;
String prefix;
Element _prefix;
String text;
Element _text;
String type; // <code> enum: group/display/boolean/decimal/integer/date/dateTime/time/string/text/url/choice/open-choice/attachment/reference/quantity;
Element _type;
List<Questionnaire_EnableWhen> enableWhen;
String enableBehavior; // <code> enum: all/any;
Element _enableBehavior;
bool required;
Element _required;
bool repeats;
Element _repeats;
bool readOnly;
Element _readOnly;
int maxLength;
Element _maxLength;
String answerValueSet;
List<Questionnaire_AnswerOption> answerOption;
List<Questionnaire_Initial> initial;
List<Questionnaire_Item> item;

Questionnaire_Item(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.linkId,
      this._linkId,
      this.definition,
      this._definition,
      this.code,
      this.prefix,
      this._prefix,
      this.text,
      this._text,
      this.type,
      this._type,
      this.enableWhen,
      this.enableBehavior,
      this._enableBehavior,
      this.required,
      this._required,
      this.repeats,
      this._repeats,
      this.readOnly,
      this._readOnly,
      this.maxLength,
      this._maxLength,
      this.answerValueSet,
      this.answerOption,
      this.initial,
      this.item,
      });

  factory Questionnaire_Item.fromJson(Map<String, dynamic> json) => _$Questionnaire_ItemFromJson(json);
  Map<String, dynamic> toJson() _$Questionnaire_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Questionnaire_EnableWhen {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String question;
Element _question;
String operator; // <code> enum: exists/=/!=/>/</>=/<=;
Element _operator;
bool answerBoolean; //  pattern: ^true|false$
Element _answerBoolean;
double answerDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _answerDecimal;
int answerInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _answerInteger;
String answerDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _answerDate;
String answerDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _answerDateTime;
String answerTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
Element _answerTime;
String answerString; //  pattern: ^[ \r\n\t\S]+$
Element _answerString;
Coding answerCoding;
Quantity answerQuantity;
Reference answerReference;

Questionnaire_EnableWhen(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.question,
      this._question,
      this.operator,
      this._operator,
      this.answerBoolean,
      this._answerBoolean,
      this.answerDecimal,
      this._answerDecimal,
      this.answerInteger,
      this._answerInteger,
      this.answerDate,
      this._answerDate,
      this.answerDateTime,
      this._answerDateTime,
      this.answerTime,
      this._answerTime,
      this.answerString,
      this._answerString,
      this.answerCoding,
      this.answerQuantity,
      this.answerReference,
      });

  factory Questionnaire_EnableWhen.fromJson(Map<String, dynamic> json) => _$Questionnaire_EnableWhenFromJson(json);
  Map<String, dynamic> toJson() _$Questionnaire_EnableWhenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Questionnaire_AnswerOption {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _valueInteger;
String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _valueDate;
String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
Element _valueTime;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
Coding valueCoding;
Reference valueReference;
bool initialSelected;
Element _initialSelected;

Questionnaire_AnswerOption(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.valueInteger,
      this._valueInteger,
      this.valueDate,
      this._valueDate,
      this.valueTime,
      this._valueTime,
      this.valueString,
      this._valueString,
      this.valueCoding,
      this.valueReference,
      this.initialSelected,
      this._initialSelected,
      });

  factory Questionnaire_AnswerOption.fromJson(Map<String, dynamic> json) => _$Questionnaire_AnswerOptionFromJson(json);
  Map<String, dynamic> toJson() _$Questionnaire_AnswerOptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Questionnaire_Initial {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _valueDecimal;
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _valueInteger;
String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _valueDate;
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _valueDateTime;
String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
Element _valueTime;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
String valueUri; //  pattern: ^\S*$
Element _valueUri;
Attachment valueAttachment;
Coding valueCoding;
Quantity valueQuantity;
Reference valueReference;

Questionnaire_Initial(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.valueBoolean,
      this._valueBoolean,
      this.valueDecimal,
      this._valueDecimal,
      this.valueInteger,
      this._valueInteger,
      this.valueDate,
      this._valueDate,
      this.valueDateTime,
      this._valueDateTime,
      this.valueTime,
      this._valueTime,
      this.valueString,
      this._valueString,
      this.valueUri,
      this._valueUri,
      this.valueAttachment,
      this.valueCoding,
      this.valueQuantity,
      this.valueReference,
      });

  factory Questionnaire_Initial.fromJson(Map<String, dynamic> json) => _$Questionnaire_InitialFromJson(json);
  Map<String, dynamic> toJson() _$Questionnaire_InitialToJson(this);
}

