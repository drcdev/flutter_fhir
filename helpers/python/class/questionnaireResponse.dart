part 'questionnaireResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class QuestionnaireResponse {

QuestionnaireResponse resourceType;
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
Identifier identifier;
List<Reference> basedOn;
List<Reference> partOf;
String questionnaire;
String status; // <code> enum: in-progress/completed/amended/entered-in-error/stopped;
Element _status;
Reference subject;
Reference encounter;
DateTime authored;
Element _authored;
Reference author;
Reference source;
List<QuestionnaireResponse_Item> item;

QuestionnaireResponse(
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
      this.identifier,
      this.basedOn,
      this.partOf,
      this.questionnaire,
      this.status,
      this._status,
      this.subject,
      this.encounter,
      this.authored,
      this._authored,
      this.author,
      this.source,
      this.item,
      });

  factory QuestionnaireResponse.fromJson(Map<String, dynamic> json) => _$QuestionnaireResponseFromJson(json);
  Map<String, dynamic> toJson() _$QuestionnaireResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class QuestionnaireResponse_Item {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String linkId;
Element _linkId;
String definition;
Element _definition;
String text;
Element _text;
List<QuestionnaireResponse_Answer> answer;
List<QuestionnaireResponse_Item> item;

QuestionnaireResponse_Item(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.linkId,
      this._linkId,
      this.definition,
      this._definition,
      this.text,
      this._text,
      this.answer,
      this.item,
      });

  factory QuestionnaireResponse_Item.fromJson(Map<String, dynamic> json) => _$QuestionnaireResponse_ItemFromJson(json);
  Map<String, dynamic> toJson() _$QuestionnaireResponse_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class QuestionnaireResponse_Answer {

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
List<QuestionnaireResponse_Item> item;

QuestionnaireResponse_Answer(
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
      this.item,
      });

  factory QuestionnaireResponse_Answer.fromJson(Map<String, dynamic> json) => _$QuestionnaireResponse_AnswerFromJson(json);
  Map<String, dynamic> toJson() _$QuestionnaireResponse_AnswerToJson(this);
}

