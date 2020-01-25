

part 'coverageEligibilityRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest {

  This is a CoverageEligibilityRequest resource resourceType;
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
  CodeableConcept priority;
  array purpose;
  List<Element> _purpose;
  Reference patient;
  String servicedDate;
  Element _servicedDate;
  Period servicedPeriod;
  StringTime created;
  Element _created;
  Reference enterer;
  Reference provider;
  Reference insurer;
  Reference facility;
  List<CoverageEligibilityRequest_SupportingInfo> supportingInfo;
  List<CoverageEligibilityRequest_Insurance> insurance;
  List<CoverageEligibilityRequest_Item> item;


CoverageEligibilityRequest(
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
this.priority,
this.purpose,
this._purpose,
this.patient,
this.servicedDate,
this._servicedDate,
this.servicedPeriod,
this.created,
this._created,
this.enterer,
this.provider,
this.insurer,
this.facility,
this.supportingInfo,
this.insurance,
this.item});

  factory CoverageEligibilityRequest.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequestToJson(this);
}