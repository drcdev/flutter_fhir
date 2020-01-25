

part 'claimResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class ClaimResponse {

  This is a ClaimResponse resource resourceType;
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
  String use;
  Element _use;
  Reference patient;
  StringTime created;
  Element _created;
  Reference insurer;
  Reference requestor;
  Reference request;
  String outcome;
  Element _outcome;
  String disposition;
  Element _disposition;
  String preAuthRef;
  Element _preAuthRef;
  Period preAuthPeriod;
  CodeableConcept payeeType;
  List<ClaimResponse_Item> item;
  List<ClaimResponse_AddItem> addItem;
  List<ClaimResponse_Adjudication> adjudication;
  List<ClaimResponse_Total> total;
  ClaimResponse_Payment payment;
  CodeableConcept fundsReserve;
  CodeableConcept formCode;
  Attachment form;
  List<ClaimResponse_ProcessNote> processNote;
  List<Reference> communicationRequest;
  List<ClaimResponse_Insurance> insurance;
  List<ClaimResponse_Error> error;


ClaimResponse(
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
this.created,
this._created,
this.insurer,
this.requestor,
this.request,
this.outcome,
this._outcome,
this.disposition,
this._disposition,
this.preAuthRef,
this._preAuthRef,
this.preAuthPeriod,
this.payeeType,
this.item,
this.addItem,
this.adjudication,
this.total,
this.payment,
this.fundsReserve,
this.formCode,
this.form,
this.processNote,
this.communicationRequest,
this.insurance,
this.error});

  factory ClaimResponse.fromJson(Map<String, dynamic> json) => _$ClaimResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponseToJson(this);
}