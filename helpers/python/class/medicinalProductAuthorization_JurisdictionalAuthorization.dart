

part 'medicinalProductAuthorization_JurisdictionalAuthorization.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductAuthorization_JurisdictionalAuthorization {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  CodeableConcept country;
  List<CodeableConcept> jurisdiction;
  CodeableConcept legalStatusOfSupply;
  Period validityPeriod;


MedicinalProductAuthorization_JurisdictionalAuthorization(
      {this.id,
this.extension,
this.modifierExtension,
this.identifier,
this.country,
this.jurisdiction,
this.legalStatusOfSupply,
this.validityPeriod});

  factory MedicinalProductAuthorization_JurisdictionalAuthorization.fromJson(Map<String, dynamic> json) => _$MedicinalProductAuthorization_JurisdictionalAuthorizationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductAuthorization_JurisdictionalAuthorizationToJson(this);
}