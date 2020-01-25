

part 'contract_Term.g.dart';

@JsonSerializable(explicitToJson: true)
class Contract_Term {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier identifier;
  StringTime issued;
  Element _issued;
  Period applies;
  CodeableConcept topicCodeableConcept;
  Reference topicReference;
  CodeableConcept type;
  CodeableConcept subType;
  String text;
  Element _text;
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
this._issued,
this.applies,
this.topicCodeableConcept,
this.topicReference,
this.type,
this.subType,
this.text,
this._text,
this.securityLabel,
this.offer,
this.asset,
this.action,
this.group});

  factory Contract_Term.fromJson(Map<String, dynamic> json) => _$Contract_TermFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_TermToJson(this);
}