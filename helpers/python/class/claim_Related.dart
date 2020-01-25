

part 'claim_Related.g.dart';

@JsonSerializable(explicitToJson: true)
class Claim_Related {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference claim;
  CodeableConcept relationship;
  Identifier reference;


Claim_Related(
      {this.id,
this.extension,
this.modifierExtension,
this.claim,
this.relationship,
this.reference});

  factory Claim_Related.fromJson(Map<String, dynamic> json) => _$Claim_RelatedFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_RelatedToJson(this);
}