

part 'consent_Provision.g.dart';

@JsonSerializable(explicitToJson: true)
class Consent_Provision {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: denypermit type;
  Element _type;
  Period period;
  List<Consent_Actor> actor;
  List<CodeableConcept> action;
  List<Coding> securityLabel;
  List<Coding> purpose;
  List<Coding> class;
  List<CodeableConcept> code;
  Period dataPeriod;
  List<Consent_Data> data;
  List<Consent_Provision> provision;


Consent_Provision(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.period,
this.actor,
this.action,
this.securityLabel,
this.purpose,
this.class,
this.code,
this.dataPeriod,
this.data,
this.provision});

  factory Consent_Provision.fromJson(Map<String, dynamic> json) => _$Consent_ProvisionFromJson(json);
  Map<String, dynamic> toJson() => _$Consent_ProvisionToJson(this);
}