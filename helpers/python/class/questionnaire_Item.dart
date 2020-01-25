

part 'questionnaire_Item.g.dart';

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
  enum: groupdisplaybooleandecimalintegerdatedateTimetimestringtexturlchoiceopen-choiceattachmentreferencequantity type;
  Element _type;
  List<Questionnaire_EnableWhen> enableWhen;
  enum: allany enableBehavior;
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
this.item});

  factory Questionnaire_Item.fromJson(Map<String, dynamic> json) => _$Questionnaire_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_ItemToJson(this);
}