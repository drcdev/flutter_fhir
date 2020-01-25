

part 'clinicalImpression_Finding.g.dart';

@JsonSerializable(explicitToJson: true)
class ClinicalImpression_Finding {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept itemCodeableConcept;
  Reference itemReference;
  String basis;
  Element _basis;


ClinicalImpression_Finding(
      {this.id,
this.extension,
this.modifierExtension,
this.itemCodeableConcept,
this.itemReference,
this.basis,
this._basis});

  factory ClinicalImpression_Finding.fromJson(Map<String, dynamic> json) => _$ClinicalImpression_FindingFromJson(json);
  Map<String, dynamic> toJson() => _$ClinicalImpression_FindingToJson(this);
}