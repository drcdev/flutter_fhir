part 'claim.g.dart';

@JsonSerializable(explicitToJson: true)
class Claim {

Claim resourceType;
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
String use; // <code> enum: claim/preauthorization/predetermination;
Element _use;
Reference patient;
Period billablePeriod;
DateTime created;
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
      this.total,
      });

  factory Claim.fromJson(Map<String, dynamic> json) => _$ClaimFromJson(json);
  Map<String, dynamic> toJson() _$ClaimToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Related {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference claim;
CodeableConcept relationship;
Identifier reference;

Claim_Related(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.claim,
      this.relationship,
      this.reference,
      });

  factory Claim_Related.fromJson(Map<String, dynamic> json) => _$Claim_RelatedFromJson(json);
  Map<String, dynamic> toJson() _$Claim_RelatedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Payee {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Reference party;

Claim_Payee(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.party,
      });

  factory Claim_Payee.fromJson(Map<String, dynamic> json) => _$Claim_PayeeFromJson(json);
  Map<String, dynamic> toJson() _$Claim_PayeeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_CareTeam {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
Reference provider;
bool responsible;
Element _responsible;
CodeableConcept role;
CodeableConcept qualification;

Claim_CareTeam(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.provider,
      this.responsible,
      this._responsible,
      this.role,
      this.qualification,
      });

  factory Claim_CareTeam.fromJson(Map<String, dynamic> json) => _$Claim_CareTeamFromJson(json);
  Map<String, dynamic> toJson() _$Claim_CareTeamToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_SupportingInfo {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
CodeableConcept category;
CodeableConcept code;
String timingDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _timingDate;
Period timingPeriod;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
Quantity valueQuantity;
Attachment valueAttachment;
Reference valueReference;
CodeableConcept reason;

Claim_SupportingInfo(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.category,
      this.code,
      this.timingDate,
      this._timingDate,
      this.timingPeriod,
      this.valueBoolean,
      this._valueBoolean,
      this.valueString,
      this._valueString,
      this.valueQuantity,
      this.valueAttachment,
      this.valueReference,
      this.reason,
      });

  factory Claim_SupportingInfo.fromJson(Map<String, dynamic> json) => _$Claim_SupportingInfoFromJson(json);
  Map<String, dynamic> toJson() _$Claim_SupportingInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Diagnosis {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
CodeableConcept diagnosisCodeableConcept;
Reference diagnosisReference;
List<CodeableConcept> type;
CodeableConcept onAdmission;
CodeableConcept packageCode;

Claim_Diagnosis(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.diagnosisCodeableConcept,
      this.diagnosisReference,
      this.type,
      this.onAdmission,
      this.packageCode,
      });

  factory Claim_Diagnosis.fromJson(Map<String, dynamic> json) => _$Claim_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() _$Claim_DiagnosisToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Procedure {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
List<CodeableConcept> type;
DateTime date;
Element _date;
CodeableConcept procedureCodeableConcept;
Reference procedureReference;
List<Reference> udi;

Claim_Procedure(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.type,
      this.date,
      this._date,
      this.procedureCodeableConcept,
      this.procedureReference,
      this.udi,
      });

  factory Claim_Procedure.fromJson(Map<String, dynamic> json) => _$Claim_ProcedureFromJson(json);
  Map<String, dynamic> toJson() _$Claim_ProcedureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Insurance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
bool focal;
Element _focal;
Identifier identifier;
Reference coverage;
String businessArrangement;
Element _businessArrangement;
List<String> preAuthRef;
List<Element> _preAuthRef;
Reference claimResponse;

Claim_Insurance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.focal,
      this._focal,
      this.identifier,
      this.coverage,
      this.businessArrangement,
      this._businessArrangement,
      this.preAuthRef,
      this._preAuthRef,
      this.claimResponse,
      });

  factory Claim_Insurance.fromJson(Map<String, dynamic> json) => _$Claim_InsuranceFromJson(json);
  Map<String, dynamic> toJson() _$Claim_InsuranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Accident {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String date;
Element _date;
CodeableConcept type;
Address locationAddress;
Reference locationReference;

Claim_Accident(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.date,
      this._date,
      this.type,
      this.locationAddress,
      this.locationReference,
      });

  factory Claim_Accident.fromJson(Map<String, dynamic> json) => _$Claim_AccidentFromJson(json);
  Map<String, dynamic> toJson() _$Claim_AccidentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Item {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
List<int> careTeamSequence;
List<Element> _careTeamSequence;
List<int> diagnosisSequence;
List<Element> _diagnosisSequence;
List<int> procedureSequence;
List<Element> _procedureSequence;
List<int> informationSequence;
List<Element> _informationSequence;
CodeableConcept revenue;
CodeableConcept category;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
List<CodeableConcept> programCode;
String servicedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _servicedDate;
Period servicedPeriod;
CodeableConcept locationCodeableConcept;
Address locationAddress;
Reference locationReference;
Quantity quantity;
Money unitPrice;
double factor;
Element _factor;
Money net;
List<Reference> udi;
CodeableConcept bodySite;
List<CodeableConcept> subSite;
List<Reference> encounter;
List<Claim_Detail> detail;

Claim_Item(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.careTeamSequence,
      this._careTeamSequence,
      this.diagnosisSequence,
      this._diagnosisSequence,
      this.procedureSequence,
      this._procedureSequence,
      this.informationSequence,
      this._informationSequence,
      this.revenue,
      this.category,
      this.productOrService,
      this.modifier,
      this.programCode,
      this.servicedDate,
      this._servicedDate,
      this.servicedPeriod,
      this.locationCodeableConcept,
      this.locationAddress,
      this.locationReference,
      this.quantity,
      this.unitPrice,
      this.factor,
      this._factor,
      this.net,
      this.udi,
      this.bodySite,
      this.subSite,
      this.encounter,
      this.detail,
      });

  factory Claim_Item.fromJson(Map<String, dynamic> json) => _$Claim_ItemFromJson(json);
  Map<String, dynamic> toJson() _$Claim_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Detail {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
CodeableConcept revenue;
CodeableConcept category;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
List<CodeableConcept> programCode;
Quantity quantity;
Money unitPrice;
double factor;
Element _factor;
Money net;
List<Reference> udi;
List<Claim_SubDetail> subDetail;

Claim_Detail(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.revenue,
      this.category,
      this.productOrService,
      this.modifier,
      this.programCode,
      this.quantity,
      this.unitPrice,
      this.factor,
      this._factor,
      this.net,
      this.udi,
      this.subDetail,
      });

  factory Claim_Detail.fromJson(Map<String, dynamic> json) => _$Claim_DetailFromJson(json);
  Map<String, dynamic> toJson() _$Claim_DetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_SubDetail {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
CodeableConcept revenue;
CodeableConcept category;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
List<CodeableConcept> programCode;
Quantity quantity;
Money unitPrice;
double factor;
Element _factor;
Money net;
List<Reference> udi;

Claim_SubDetail(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.revenue,
      this.category,
      this.productOrService,
      this.modifier,
      this.programCode,
      this.quantity,
      this.unitPrice,
      this.factor,
      this._factor,
      this.net,
      this.udi,
      });

  factory Claim_SubDetail.fromJson(Map<String, dynamic> json) => _$Claim_SubDetailFromJson(json);
  Map<String, dynamic> toJson() _$Claim_SubDetailToJson(this);
}

