

part 'substanceSpecification_Name.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Name {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  CodeableConcept type;
  CodeableConcept status;
  bool preferred;
  Element _preferred;
  List<CodeableConcept> language;
  List<CodeableConcept> domain;
  List<CodeableConcept> jurisdiction;
  List<SubstanceSpecification_Name> synonym;
  List<SubstanceSpecification_Name> translation;
  List<SubstanceSpecification_Official> official;
  List<Reference> source;


SubstanceSpecification_Name(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.type,
this.status,
this.preferred,
this._preferred,
this.language,
this.domain,
this.jurisdiction,
this.synonym,
this.translation,
this.official,
this.source});

  factory SubstanceSpecification_Name.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_NameFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_NameToJson(this);
}