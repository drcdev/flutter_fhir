

part 'claimResponse_Insurance.g.dart';

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Insurance {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element _sequence;
  bool focal;
  Element _focal;
  Reference coverage;
  String businessArrangement;
  Element _businessArrangement;
  Reference claimResponse;


ClaimResponse_Insurance(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.focal,
this._focal,
this.coverage,
this.businessArrangement,
this._businessArrangement,
this.claimResponse});

  factory ClaimResponse_Insurance.fromJson(Map<String, dynamic> json) => _$ClaimResponse_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_InsuranceToJson(this);
}