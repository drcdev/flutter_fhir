part 'coverageEligibilityRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest {

CoverageEligibilityRequest resourceType;
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
List<Element> _purpose;
Reference patient;
String servicedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _servicedDate;
Period servicedPeriod;
DateTime created;
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
      this.item,
      });

  factory CoverageEligibilityRequest.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequestFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_SupportingInfo {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
Reference information;
bool appliesToAll;
Element _appliesToAll;

CoverageEligibilityRequest_SupportingInfo(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.information,
      this.appliesToAll,
      this._appliesToAll,
      });

  factory CoverageEligibilityRequest_SupportingInfo.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_SupportingInfoFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityRequest_SupportingInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_Insurance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool focal;
Element _focal;
Reference coverage;
String businessArrangement;
Element _businessArrangement;

CoverageEligibilityRequest_Insurance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.focal,
      this._focal,
      this.coverage,
      this.businessArrangement,
      this._businessArrangement,
      });

  factory CoverageEligibilityRequest_Insurance.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_InsuranceFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityRequest_InsuranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_Item {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<int> supportingInfoSequence;
List<Element> _supportingInfoSequence;
CodeableConcept category;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
Reference provider;
Quantity quantity;
Money unitPrice;
Reference facility;
List<CoverageEligibilityRequest_Diagnosis> diagnosis;
List<Reference> detail;

CoverageEligibilityRequest_Item(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.supportingInfoSequence,
      this._supportingInfoSequence,
      this.category,
      this.productOrService,
      this.modifier,
      this.provider,
      this.quantity,
      this.unitPrice,
      this.facility,
      this.diagnosis,
      this.detail,
      });

  factory CoverageEligibilityRequest_Item.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_ItemFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityRequest_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_Diagnosis {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept diagnosisCodeableConcept;
Reference diagnosisReference;

CoverageEligibilityRequest_Diagnosis(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.diagnosisCodeableConcept,
      this.diagnosisReference,
      });

  factory CoverageEligibilityRequest_Diagnosis.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityRequest_DiagnosisToJson(this);
}

