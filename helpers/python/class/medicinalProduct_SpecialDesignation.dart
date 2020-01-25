

part 'medicinalProduct_SpecialDesignation.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_SpecialDesignation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  CodeableConcept type;
  CodeableConcept intendedUse;
  CodeableConcept indicationCodeableConcept;
  Reference indicationReference;
  CodeableConcept status;
  StringTime date;
  Element _date;
  CodeableConcept species;


MedicinalProduct_SpecialDesignation(
      {this.id,
this.extension,
this.modifierExtension,
this.identifier,
this.type,
this.intendedUse,
this.indicationCodeableConcept,
this.indicationReference,
this.status,
this.date,
this._date,
this.species});

  factory MedicinalProduct_SpecialDesignation.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_SpecialDesignationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_SpecialDesignationToJson(this);
}