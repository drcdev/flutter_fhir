

part 'coverageEligibilityResponse_Item.g.dart';

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Item {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept category;
  CodeableConcept productOrService;
  List<CodeableConcept> modifier;
  Reference provider;
  bool excluded;
  Element _excluded;
  String name;
  Element _name;
  String description;
  Element _description;
  CodeableConcept network;
  CodeableConcept unit;
  CodeableConcept term;
  List<CoverageEligibilityResponse_Benefit> benefit;
  bool authorizationRequired;
  Element _authorizationRequired;
  List<CodeableConcept> authorizationSupporting;
  String authorizationUrl;
  Element _authorizationUrl;


CoverageEligibilityResponse_Item(
      {this.id,
this.extension,
this.modifierExtension,
this.category,
this.productOrService,
this.modifier,
this.provider,
this.excluded,
this._excluded,
this.name,
this._name,
this.description,
this._description,
this.network,
this.unit,
this.term,
this.benefit,
this.authorizationRequired,
this._authorizationRequired,
this.authorizationSupporting,
this.authorizationUrl,
this._authorizationUrl});

  factory CoverageEligibilityResponse_Item.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponse_ItemToJson(this);
}