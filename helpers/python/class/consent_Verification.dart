

part 'consent_Verification.g.dart';

@JsonSerializable(explicitToJson: true)
class Consent_Verification {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool verified;
  Element _verified;
  Reference verifiedWith;
  StringTime verificationDate;
  Element _verificationDate;


Consent_Verification(
      {this.id,
this.extension,
this.modifierExtension,
this.verified,
this._verified,
this.verifiedWith,
this.verificationDate,
this._verificationDate});

  factory Consent_Verification.fromJson(Map<String, dynamic> json) => _$Consent_VerificationFromJson(json);
  Map<String, dynamic> toJson() => _$Consent_VerificationToJson(this);
}