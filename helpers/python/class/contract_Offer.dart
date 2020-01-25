

part 'contract_Offer.g.dart';

@JsonSerializable(explicitToJson: true)
class Contract_Offer {

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
  Element _text;
  List<String> linkId;
  List<Element> _linkId;
  List<int> securityLabelNumber;
  List<Element> _securityLabelNumber;


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
this._text,
this.linkId,
this._linkId,
this.securityLabelNumber,
this._securityLabelNumber});

  factory Contract_Offer.fromJson(Map<String, dynamic> json) => _$Contract_OfferFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_OfferToJson(this);
}