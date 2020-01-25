

part 'substanceReferenceInformation_Target.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation_Target {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier target;
  CodeableConcept type;
  CodeableConcept interaction;
  CodeableConcept organism;
  CodeableConcept organismType;
  Quantity amountQuantity;
  Range amountRange;
  String amountString;
  Element _amountString;
  CodeableConcept amountType;
  List<Reference> source;


SubstanceReferenceInformation_Target(
      {this.id,
this.extension,
this.modifierExtension,
this.target,
this.type,
this.interaction,
this.organism,
this.organismType,
this.amountQuantity,
this.amountRange,
this.amountString,
this._amountString,
this.amountType,
this.source});

  factory SubstanceReferenceInformation_Target.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformation_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceReferenceInformation_TargetToJson(this);
}