

part 'elementDefinition_Slicing.g.dart';

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Slicing {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<ElementDefinition_Discriminator> discriminator;
  String description;
  Element _description;
  bool ordered;
  Element _ordered;
  enum: closedopenopenAtEnd rules;
  Element _rules;


ElementDefinition_Slicing(
      {this.id,
this.extension,
this.modifierExtension,
this.discriminator,
this.description,
this._description,
this.ordered,
this._ordered,
this.rules,
this._rules});

  factory ElementDefinition_Slicing.fromJson(Map<String, dynamic> json) => _$ElementDefinition_SlicingFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_SlicingToJson(this);
}