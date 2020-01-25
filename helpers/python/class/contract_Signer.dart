

part 'contract_Signer.g.dart';

@JsonSerializable(explicitToJson: true)
class Contract_Signer {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Coding type;
  Reference party;
  List<Signature> signature;


Contract_Signer(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.party,
this.signature});

  factory Contract_Signer.fromJson(Map<String, dynamic> json) => _$Contract_SignerFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_SignerToJson(this);
}