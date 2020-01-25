

part 'claim_Insurance.g.dart';

@JsonSerializable(explicitToJson: true)
class Claim_Insurance {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element _sequence;
  bool focal;
  Element _focal;
  Identifier identifier;
  Reference coverage;
  String businessArrangement;
  Element _businessArrangement;
  List<String> preAuthRef;
  List<Element> _preAuthRef;
  Reference claimResponse;


Claim_Insurance(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.focal,
this._focal,
this.identifier,
this.coverage,
this.businessArrangement,
this._businessArrangement,
this.preAuthRef,
this._preAuthRef,
this.claimResponse});

  factory Claim_Insurance.fromJson(Map<String, dynamic> json) => _$Claim_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_InsuranceToJson(this);
}