

part 'contract_SecurityLabel.g.dart';

@JsonSerializable(explicitToJson: true)
class Contract_SecurityLabel {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<int> number;
  List<Element> _number;
  Coding classification;
  List<Coding> category;
  List<Coding> control;


Contract_SecurityLabel(
      {this.id,
this.extension,
this.modifierExtension,
this.number,
this._number,
this.classification,
this.category,
this.control});

  factory Contract_SecurityLabel.fromJson(Map<String, dynamic> json) => _$Contract_SecurityLabelFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_SecurityLabelToJson(this);
}