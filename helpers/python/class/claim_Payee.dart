

part 'claim_Payee.g.dart';

@JsonSerializable(explicitToJson: true)
class Claim_Payee {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  Reference party;


Claim_Payee(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.party});

  factory Claim_Payee.fromJson(Map<String, dynamic> json) => _$Claim_PayeeFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_PayeeToJson(this);
}