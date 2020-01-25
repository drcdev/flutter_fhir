

part 'verificationResult_Validator.g.dart';

@JsonSerializable(explicitToJson: true)
class VerificationResult_Validator {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference organization;
  String identityCertificate;
  Element _identityCertificate;
  Signature attestationSignature;


VerificationResult_Validator(
      {this.id,
this.extension,
this.modifierExtension,
this.organization,
this.identityCertificate,
this._identityCertificate,
this.attestationSignature});

  factory VerificationResult_Validator.fromJson(Map<String, dynamic> json) => _$VerificationResult_ValidatorFromJson(json);
  Map<String, dynamic> toJson() => _$VerificationResult_ValidatorToJson(this);
}