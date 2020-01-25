

part 'explanationOfBenefit.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit {

  This is a ExplanationOfBenefit resource resourceType;
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
  enum: activecancelleddraftentered-in-error status;
  Element _status;
  CodeableConcept type;
  CodeableConcept subType;
  String use;
  Element _use;
  Reference patient;
  Period billablePeriod;
  StringTime created;
  Element _created;
  Reference enterer;
  Reference insurer;
  Reference provider;
  CodeableConcept priority;
  CodeableConcept fundsReserveRequested;
  CodeableConcept fundsReserve;
  List<ExplanationOfBenefit_Related> related;
  Reference prescription;
  Reference originalPrescription;
  ExplanationOfBenefit_Payee payee;
  Reference referral;
  Reference facility;
  Reference claim;
  Reference claimResponse;
  String outcome;
  Element _outcome;
  String disposition;
  Element _disposition;
  List<String> preAuthRef;
  List<Element> _preAuthRef;
  List<Period> preAuthRefPeriod;
  List<ExplanationOfBenefit_CareTeam> careTeam;
  List<ExplanationOfBenefit_SupportingInfo> supportingInfo;
  List<ExplanationOfBenefit_Diagnosis> diagnosis;
  List<ExplanationOfBenefit_Procedure> procedure;
  int precedence;
  Element _precedence;
  List<ExplanationOfBenefit_Insurance> insurance;
  ExplanationOfBenefit_Accident accident;
  List<ExplanationOfBenefit_Item> item;
  List<ExplanationOfBenefit_AddItem> addItem;
  List<ExplanationOfBenefit_Adjudication> adjudication;
  List<ExplanationOfBenefit_Total> total;
  ExplanationOfBenefit_Payment payment;
  CodeableConcept formCode;
  Attachment form;
  List<ExplanationOfBenefit_ProcessNote> processNote;
  Period benefitPeriod;
  List<ExplanationOfBenefit_BenefitBalance> benefitBalance;


ExplanationOfBenefit(
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
this.fundsReserveRequested,
this.fundsReserve,
this.related,
this.prescription,
this.originalPrescription,
this.payee,
this.referral,
this.facility,
this.claim,
this.claimResponse,
this.outcome,
this._outcome,
this.disposition,
this._disposition,
this.preAuthRef,
this._preAuthRef,
this.preAuthRefPeriod,
this.careTeam,
this.supportingInfo,
this.diagnosis,
this.procedure,
this.precedence,
this._precedence,
this.insurance,
this.accident,
this.item,
this.addItem,
this.adjudication,
this.total,
this.payment,
this.formCode,
this.form,
this.processNote,
this.benefitPeriod,
this.benefitBalance});

  factory ExplanationOfBenefit.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefitFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefitToJson(this);
}