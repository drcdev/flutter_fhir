

part 'questionnaire_Initial.g.dart';

@JsonSerializable(explicitToJson: true)
class Questionnaire_Initial {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool valueBoolean;
  Element _valueBoolean;
  number valueDecimal;
  Element _valueDecimal;
  number valueInteger;
  Element _valueInteger;
  String valueDate;
  Element _valueDate;
  String valueDateTime;
  Element _valueDateTime;
  String valueTime;
  Element _valueTime;
  String valueString;
  Element _valueString;
  String valueUri;
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
this.valueReference});

  factory Questionnaire_Initial.fromJson(Map<String, dynamic> json) => _$Questionnaire_InitialFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_InitialToJson(this);
}