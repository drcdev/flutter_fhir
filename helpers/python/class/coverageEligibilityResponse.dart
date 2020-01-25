

part 'coverageEligibilityResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse {

  This is a CoverageEligibilityResponse resource resourceType;
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
  array purpose;
  List<Element> _purpose;
  Reference patient;
  String servicedDate;
  Element _servicedDate;
  Period servicedPeriod;
  StringTime created;
  Element _created;
  Reference requestor;
  Reference request;
  enum: queuedcompleteerrorpartial outcome;
  Element _outcome;
  String disposition;
  Element _disposition;
  Reference insurer;
  List<CoverageEligibilityResponse_Insurance> insurance;
  String preAuthRef;
  Element _preAuthRef;
  CodeableConcept form;
  List<CoverageEligibilityResponse_Error> error;


CoverageEligibilityResponse(
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
this.purpose,
this._purpose,
this.patient,
this.servicedDate,
this._servicedDate,
this.servicedPeriod,
this.created,
this._created,
this.requestor,
this.request,
this.outcome,
this._outcome,
this.disposition,
this._disposition,
this.insurer,
this.insurance,
this.preAuthRef,
this._preAuthRef,
this.form,
this.error});

  factory CoverageEligibilityResponse.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponseToJson(this);
}