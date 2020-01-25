

part 'questionnaire_AnswerOption.g.dart';

@JsonSerializable(explicitToJson: true)
class Questionnaire_AnswerOption {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  number valueInteger;
  Element _valueInteger;
  String valueDate;
  Element _valueDate;
  String valueTime;
  Element _valueTime;
  String valueString;
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
this._initialSelected});

  factory Questionnaire_AnswerOption.fromJson(Map<String, dynamic> json) => _$Questionnaire_AnswerOptionFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_AnswerOptionToJson(this);
}