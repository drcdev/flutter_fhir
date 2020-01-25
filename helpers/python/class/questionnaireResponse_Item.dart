

part 'questionnaireResponse_Item.g.dart';

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
this.item});

  factory QuestionnaireResponse_Item.fromJson(Map<String, dynamic> json) => _$QuestionnaireResponse_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionnaireResponse_ItemToJson(this);
}