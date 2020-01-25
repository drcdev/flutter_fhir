

part 'questionnaire_EnableWhen.g.dart';

@JsonSerializable(explicitToJson: true)
class Questionnaire_EnableWhen {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String question;
  Element _question;
  enum: exists=!=><>=<= operator;
  Element _operator;
  bool answerBoolean;
  Element _answerBoolean;
  number answerDecimal;
  Element _answerDecimal;
  number answerInteger;
  Element _answerInteger;
  String answerDate;
  Element _answerDate;
  String answerDateTime;
  Element _answerDateTime;
  String answerTime;
  Element _answerTime;
  String answerString;
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
this.answerReference});

  factory Questionnaire_EnableWhen.fromJson(Map<String, dynamic> json) => _$Questionnaire_EnableWhenFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_EnableWhenToJson(this);
}