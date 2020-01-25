

part 'contract_Party.g.dart';

@JsonSerializable(explicitToJson: true)
class Contract_Party {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Reference> reference;
  CodeableConcept role;


Contract_Party(
      {this.id,
this.extension,
this.modifierExtension,
this.reference,
this.role});

  factory Contract_Party.fromJson(Map<String, dynamic> json) => _$Contract_PartyFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_PartyToJson(this);
}