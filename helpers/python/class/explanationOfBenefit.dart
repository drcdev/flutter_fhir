part 'explanationOfBenefit.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit {

ExplanationOfBenefit resourceType;
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
String status; // <code> enum: active/cancelled/draft/entered-in-error;
Element _status;
CodeableConcept type;
CodeableConcept subType;
String use;
Element _use;
Reference patient;
Period billablePeriod;
DateTime created;
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
      this.benefitBalance,
      });

  factory ExplanationOfBenefit.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefitFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Related {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference claim;
CodeableConcept relationship;
Identifier reference;

ExplanationOfBenefit_Related(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.claim,
      this.relationship,
      this.reference,
      });

  factory ExplanationOfBenefit_Related.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_RelatedFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_RelatedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Payee {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Reference party;

ExplanationOfBenefit_Payee(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.party,
      });

  factory ExplanationOfBenefit_Payee.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_PayeeFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_PayeeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_CareTeam {

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

ExplanationOfBenefit_CareTeam(
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

  factory ExplanationOfBenefit_CareTeam.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_CareTeamFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_CareTeamToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_SupportingInfo {

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
Coding reason;

ExplanationOfBenefit_SupportingInfo(
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

  factory ExplanationOfBenefit_SupportingInfo.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_SupportingInfoFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_SupportingInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Diagnosis {

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

ExplanationOfBenefit_Diagnosis(
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

  factory ExplanationOfBenefit_Diagnosis.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_DiagnosisToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Procedure {

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

ExplanationOfBenefit_Procedure(
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

  factory ExplanationOfBenefit_Procedure.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_ProcedureFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_ProcedureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Insurance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool focal;
Element _focal;
Reference coverage;
List<String> preAuthRef;
List<Element> _preAuthRef;

ExplanationOfBenefit_Insurance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.focal,
      this._focal,
      this.coverage,
      this.preAuthRef,
      this._preAuthRef,
      });

  factory ExplanationOfBenefit_Insurance.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_InsuranceFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_InsuranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Accident {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String date;
Element _date;
CodeableConcept type;
Address locationAddress;
Reference locationReference;

ExplanationOfBenefit_Accident(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.date,
      this._date,
      this.type,
      this.locationAddress,
      this.locationReference,
      });

  factory ExplanationOfBenefit_Accident.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_AccidentFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_AccidentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Item {

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
List<int> noteNumber;
List<Element> _noteNumber;
List<ExplanationOfBenefit_Adjudication> adjudication;
List<ExplanationOfBenefit_Detail> detail;

ExplanationOfBenefit_Item(
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
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      this.detail,
      });

  factory ExplanationOfBenefit_Item.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_ItemFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Adjudication {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
CodeableConcept reason;
Money amount;
double value;
Element _value;

ExplanationOfBenefit_Adjudication(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.category,
      this.reason,
      this.amount,
      this.value,
      this._value,
      });

  factory ExplanationOfBenefit_Adjudication.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_AdjudicationFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_AdjudicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Detail {

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
List<int> noteNumber;
List<Element> _noteNumber;
List<ExplanationOfBenefit_Adjudication> adjudication;
List<ExplanationOfBenefit_SubDetail> subDetail;

ExplanationOfBenefit_Detail(
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
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      this.subDetail,
      });

  factory ExplanationOfBenefit_Detail.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_DetailFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_DetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_SubDetail {

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
List<int> noteNumber;
List<Element> _noteNumber;
List<ExplanationOfBenefit_Adjudication> adjudication;

ExplanationOfBenefit_SubDetail(
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
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      });

  factory ExplanationOfBenefit_SubDetail.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_SubDetailFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_SubDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_AddItem {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<int> itemSequence;
List<Element> _itemSequence;
List<int> detailSequence;
List<Element> _detailSequence;
List<int> subDetailSequence;
List<Element> _subDetailSequence;
List<Reference> provider;
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
CodeableConcept bodySite;
List<CodeableConcept> subSite;
List<int> noteNumber;
List<Element> _noteNumber;
List<ExplanationOfBenefit_Adjudication> adjudication;
List<ExplanationOfBenefit_Detail1> detail;

ExplanationOfBenefit_AddItem(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.itemSequence,
      this._itemSequence,
      this.detailSequence,
      this._detailSequence,
      this.subDetailSequence,
      this._subDetailSequence,
      this.provider,
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
      this.bodySite,
      this.subSite,
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      this.detail,
      });

  factory ExplanationOfBenefit_AddItem.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_AddItemFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_AddItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Detail1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
Quantity quantity;
Money unitPrice;
double factor;
Element _factor;
Money net;
List<int> noteNumber;
List<Element> _noteNumber;
List<ExplanationOfBenefit_Adjudication> adjudication;
List<ExplanationOfBenefit_SubDetail1> subDetail;

ExplanationOfBenefit_Detail1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.productOrService,
      this.modifier,
      this.quantity,
      this.unitPrice,
      this.factor,
      this._factor,
      this.net,
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      this.subDetail,
      });

  factory ExplanationOfBenefit_Detail1.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_Detail1FromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_Detail1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_SubDetail1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept productOrService;
List<CodeableConcept> modifier;
Quantity quantity;
Money unitPrice;
double factor;
Element _factor;
Money net;
List<int> noteNumber;
List<Element> _noteNumber;
List<ExplanationOfBenefit_Adjudication> adjudication;

ExplanationOfBenefit_SubDetail1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.productOrService,
      this.modifier,
      this.quantity,
      this.unitPrice,
      this.factor,
      this._factor,
      this.net,
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      });

  factory ExplanationOfBenefit_SubDetail1.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_SubDetail1FromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_SubDetail1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Total {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
Money amount;

ExplanationOfBenefit_Total(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.category,
      this.amount,
      });

  factory ExplanationOfBenefit_Total.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_TotalFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_TotalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Payment {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Money adjustment;
CodeableConcept adjustmentReason;
String date;
Element _date;
Money amount;
Identifier identifier;

ExplanationOfBenefit_Payment(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.adjustment,
      this.adjustmentReason,
      this.date,
      this._date,
      this.amount,
      this.identifier,
      });

  factory ExplanationOfBenefit_Payment.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_PaymentFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_PaymentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_ProcessNote {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int number;
Element _number;
String type; // <code> enum: display/print/printoper;
Element _type;
String text;
Element _text;
CodeableConcept language;

ExplanationOfBenefit_ProcessNote(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.number,
      this._number,
      this.type,
      this._type,
      this.text,
      this._text,
      this.language,
      });

  factory ExplanationOfBenefit_ProcessNote.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_ProcessNoteFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_ProcessNoteToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_BenefitBalance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
bool excluded;
Element _excluded;
String name;
Element _name;
String description;
Element _description;
CodeableConcept network;
CodeableConcept unit;
CodeableConcept term;
List<ExplanationOfBenefit_Financial> financial;

ExplanationOfBenefit_BenefitBalance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.category,
      this.excluded,
      this._excluded,
      this.name,
      this._name,
      this.description,
      this._description,
      this.network,
      this.unit,
      this.term,
      this.financial,
      });

  factory ExplanationOfBenefit_BenefitBalance.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_BenefitBalanceFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_BenefitBalanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Financial {

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
Money usedMoney;

ExplanationOfBenefit_Financial(
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
      this.usedMoney,
      });

  factory ExplanationOfBenefit_Financial.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_FinancialFromJson(json);
  Map<String, dynamic> toJson() _$ExplanationOfBenefit_FinancialToJson(this);
}

