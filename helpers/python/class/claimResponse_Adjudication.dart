

part 'claimResponse_Adjudication.g.dart';

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Adjudication {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept category;
  CodeableConcept reason;
  Money amount;
  double value;
  Element _value;


ClaimResponse_Adjudication(
      {this.id,
this.extension,
this.modifierExtension,
this.category,
this.reason,
this.amount,
this.value,
this._value});

  factory ClaimResponse_Adjudication.fromJson(Map<String, dynamic> json) => _$ClaimResponse_AdjudicationFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_AdjudicationToJson(this);
}