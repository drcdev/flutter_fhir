

part 'contract_Asset.g.dart';

@JsonSerializable(explicitToJson: true)
class Contract_Asset {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept scope;
  List<CodeableConcept> type;
  List<Reference> typeReference;
  List<CodeableConcept> subtype;
  Coding relationship;
  List<Contract_Context> context;
  String condition;
  Element _condition;
  List<CodeableConcept> periodType;
  List<Period> period;
  List<Period> usePeriod;
  String text;
  Element _text;
  List<String> linkId;
  List<Element> _linkId;
  List<Contract_Answer> answer;
  List<int> securityLabelNumber;
  List<Element> _securityLabelNumber;
  List<Contract_ValuedItem> valuedItem;


Contract_Asset(
      {this.id,
this.extension,
this.modifierExtension,
this.scope,
this.type,
this.typeReference,
this.subtype,
this.relationship,
this.context,
this.condition,
this._condition,
this.periodType,
this.period,
this.usePeriod,
this.text,
this._text,
this.linkId,
this._linkId,
this.answer,
this.securityLabelNumber,
this._securityLabelNumber,
this.valuedItem});

  factory Contract_Asset.fromJson(Map<String, dynamic> json) => _$Contract_AssetFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_AssetToJson(this);
}