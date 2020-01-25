

part 'substancePolymer_RepeatUnit.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_RepeatUnit {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept orientationOfPolymerisation;
  String repeatUnit;
  Element _repeatUnit;
  SubstanceAmount amount;
  List<SubstancePolymer_DegreeOfPolymerisation> degreeOfPolymerisation;
  List<SubstancePolymer_StructuralRepresentation> structuralRepresentation;


SubstancePolymer_RepeatUnit(
      {this.id,
this.extension,
this.modifierExtension,
this.orientationOfPolymerisation,
this.repeatUnit,
this._repeatUnit,
this.amount,
this.degreeOfPolymerisation,
this.structuralRepresentation});

  factory SubstancePolymer_RepeatUnit.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_RepeatUnitFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_RepeatUnitToJson(this);
}