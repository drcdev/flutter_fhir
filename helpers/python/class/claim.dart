

part 'claim.g.dart';

@JsonSerializable(explicitToJson: true)
class Claim {

  This is a Claim resource resourceType;
  String id;
  Meta meta;
  String implicitRules;
  Element _implicitRules;
  String language;
  Element _language;
  Narrative text;
  List<ResourceList> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  String status;
  Element _status;
  CodeableConcept type;
  CodeableConcept subType;
  enum: claimpreauthorizationpredetermination use;
  Element _use;
  Reference patient;
  Period billablePeriod;
  StringTime created;
  Element _created;
  Reference enterer;
  Reference insurer;
  Reference provider;
  CodeableConcept priority;
  CodeableConcept fundsReserve;
  List<Claim_Related> related;
  Reference prescription;
  Reference originalPrescription;
  Claim_Payee payee;
  Reference referral;
  Reference facility;
  List<Claim_CareTeam> careTeam;
  List<Claim_SupportingInfo> supportingInfo;
  List<Claim_Diagnosis> diagnosis;
  List<Claim_Procedure> procedure;
  List<Claim_Insurance> insurance;
  Claim_Accident accident;
  List<Claim_Item> item;
  Money total;


Claim(
      {this.resourceType,
this.id,
this.meta,
this.implicitRules,
this._implicitRules,
this.language,
this._language,
this.text,
this.contained,
this.extension,
this.modifierExtension,
this.identifier,
this.status,
this._status,
this.type,
this.subType,
this.use,
this._use,
this.patient,
this.billablePeriod,
this.created,
this._created,
this.enterer,
this.insurer,
this.provider,
this.priority,
this.fundsReserve,
this.related,
this.prescription,
this.originalPrescription,
this.payee,
this.referral,
this.facility,
this.careTeam,
this.supportingInfo,
this.diagnosis,
this.procedure,
this.insurance,
this.accident,
this.item,
this.total});

  factory Claim.fromJson(Map<String, dynamic> json) => _$ClaimFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimToJson(this);
}