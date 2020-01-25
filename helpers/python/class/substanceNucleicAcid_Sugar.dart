

part 'substanceNucleicAcid_Sugar.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceNucleicAcid_Sugar {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier identifier;
  String name;
  Element _name;
  String residueSite;
  Element _residueSite;


SubstanceNucleicAcid_Sugar(
      {this.id,
this.extension,
this.modifierExtension,
this.identifier,
this.name,
this._name,
this.residueSite,
this._residueSite});

  factory SubstanceNucleicAcid_Sugar.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcid_SugarFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcid_SugarToJson(this);
}