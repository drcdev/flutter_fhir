

part 'clinicalImpression_Investigation.g.dart';

@JsonSerializable(explicitToJson: true)
class ClinicalImpression_Investigation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  List<Reference> item;


ClinicalImpression_Investigation(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.item});

  factory ClinicalImpression_Investigation.fromJson(Map<String, dynamic> json) => _$ClinicalImpression_InvestigationFromJson(json);
  Map<String, dynamic> toJson() => _$ClinicalImpression_InvestigationToJson(this);
}