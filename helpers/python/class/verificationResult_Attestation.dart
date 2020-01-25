

part 'verificationResult_Attestation.g.dart';

@JsonSerializable(explicitToJson: true)
class VerificationResult_Attestation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference who;
  Reference onBehalfOf;
  CodeableConcept communicationMethod;
  String date;
  Element _date;
  String sourceIdentityCertificate;
  Element _sourceIdentityCertificate;
  String proxyIdentityCertificate;
  Element _proxyIdentityCertificate;
  Signature proxySignature;
  Signature sourceSignature;


VerificationResult_Attestation(
      {this.id,
this.extension,
this.modifierExtension,
this.who,
this.onBehalfOf,
this.communicationMethod,
this.date,
this._date,
this.sourceIdentityCertificate,
this._sourceIdentityCertificate,
this.proxyIdentityCertificate,
this._proxyIdentityCertificate,
this.proxySignature,
this.sourceSignature});

  factory VerificationResult_Attestation.fromJson(Map<String, dynamic> json) => _$VerificationResult_AttestationFromJson(json);
  Map<String, dynamic> toJson() => _$VerificationResult_AttestationToJson(this);
}