part 'coverageEligibilityResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse {

CoverageEligibilityResponse resourceType;
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
List<Element> _purpose;
Reference patient;
String servicedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _servicedDate;
Period servicedPeriod;
DateTime created;
Element _created;
Reference requestor;
Reference request;
String outcome; // <code> enum: queued/complete/error/partial;
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
      this.error,
      });

  factory CoverageEligibilityResponse.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponseFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Insurance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference coverage;
bool inforce;
Element _inforce;
Period benefitPeriod;
List<CoverageEligibilityResponse_Item> item;

CoverageEligibilityResponse_Insurance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.coverage,
      this.inforce,
      this._inforce,
      this.benefitPeriod,
      this.item,
      });

  factory CoverageEligibilityResponse_Insurance.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_InsuranceFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityResponse_InsuranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Item {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
Reference provider;
bool excluded;
Element _excluded;
String name;
Element _name;
String description;
Element _description;
CodeableConcept network;
CodeableConcept unit;
CodeableConcept term;
List<CoverageEligibilityResponse_Benefit> benefit;
bool authorizationRequired;
Element _authorizationRequired;
List<CodeableConcept> authorizationSupporting;
String authorizationUrl;
Element _authorizationUrl;

CoverageEligibilityResponse_Item(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.category,
      this.productOrService,
      this.modifier,
      this.provider,
      this.excluded,
      this._excluded,
      this.name,
      this._name,
      this.description,
      this._description,
      this.network,
      this.unit,
      this.term,
      this.benefit,
      this.authorizationRequired,
      this._authorizationRequired,
      this.authorizationSupporting,
      this.authorizationUrl,
      this._authorizationUrl,
      });

  factory CoverageEligibilityResponse_Item.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_ItemFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityResponse_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Benefit {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
int allowedUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
Element _allowedUnsignedInt;
String allowedString; //  pattern: ^[ \r\n\t\S]+$
Element _allowedString;
Money allowedMoney;
int usedUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
Element _usedUnsignedInt;
String usedString; //  pattern: ^[ \r\n\t\S]+$
Element _usedString;
Money usedMoney;

CoverageEligibilityResponse_Benefit(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.allowedUnsignedInt,
      this._allowedUnsignedInt,
      this.allowedString,
      this._allowedString,
      this.allowedMoney,
      this.usedUnsignedInt,
      this._usedUnsignedInt,
      this.usedString,
      this._usedString,
      this.usedMoney,
      });

  factory CoverageEligibilityResponse_Benefit.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_BenefitFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityResponse_BenefitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Error {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;

CoverageEligibilityResponse_Error(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      });

  factory CoverageEligibilityResponse_Error.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_ErrorFromJson(json);
  Map<String, dynamic> toJson() _$CoverageEligibilityResponse_ErrorToJson(this);
}

