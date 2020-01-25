

part 'substanceNucleicAcid_Linkage.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceNucleicAcid_Linkage {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String connectivity;
  Element _connectivity;
  Identifier identifier;
  String name;
  Element _name;
  String residueSite;
  Element _residueSite;


SubstanceNucleicAcid_Linkage(
      {this.id,
this.extension,
this.modifierExtension,
this.connectivity,
this._connectivity,
this.identifier,
this.name,
this._name,
this.residueSite,
this._residueSite});

  factory SubstanceNucleicAcid_Linkage.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcid_LinkageFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcid_LinkageToJson(this);
}