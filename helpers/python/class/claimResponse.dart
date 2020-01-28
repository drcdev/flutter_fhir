part 'claimResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class ClaimResponse {

ClaimResponse resourceType;
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
DateTime created;
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
      this.error,
      });

  factory ClaimResponse.fromJson(Map<String, dynamic> json) => _$ClaimResponseFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Item {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int itemSequence;
Element _itemSequence;
List<int> noteNumber;
List<Element> _noteNumber;
List<ClaimResponse_Adjudication> adjudication;
List<ClaimResponse_Detail> detail;

ClaimResponse_Item(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.itemSequence,
      this._itemSequence,
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      this.detail,
      });

  factory ClaimResponse_Item.fromJson(Map<String, dynamic> json) => _$ClaimResponse_ItemFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Adjudication {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
CodeableConcept reason;
Money amount;
double value;
Element _value;

ClaimResponse_Adjudication(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.category,
      this.reason,
      this.amount,
      this.value,
      this._value,
      });

  factory ClaimResponse_Adjudication.fromJson(Map<String, dynamic> json) => _$ClaimResponse_AdjudicationFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_AdjudicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Detail {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int detailSequence;
Element _detailSequence;
List<int> noteNumber;
List<Element> _noteNumber;
List<ClaimResponse_Adjudication> adjudication;
List<ClaimResponse_SubDetail> subDetail;

ClaimResponse_Detail(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.detailSequence,
      this._detailSequence,
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      this.subDetail,
      });

  factory ClaimResponse_Detail.fromJson(Map<String, dynamic> json) => _$ClaimResponse_DetailFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_DetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_SubDetail {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int subDetailSequence;
Element _subDetailSequence;
List<int> noteNumber;
List<Element> _noteNumber;
List<ClaimResponse_Adjudication> adjudication;

ClaimResponse_SubDetail(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.subDetailSequence,
      this._subDetailSequence,
      this.noteNumber,
      this._noteNumber,
      this.adjudication,
      });

  factory ClaimResponse_SubDetail.fromJson(Map<String, dynamic> json) => _$ClaimResponse_SubDetailFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_SubDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_AddItem {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<int> itemSequence;
List<Element> _itemSequence;
List<int> detailSequence;
List<Element> _detailSequence;
List<int> subdetailSequence;
List<Element> _subdetailSequence;
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
List<ClaimResponse_Adjudication> adjudication;
List<ClaimResponse_Detail1> detail;

ClaimResponse_AddItem(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.itemSequence,
      this._itemSequence,
      this.detailSequence,
      this._detailSequence,
      this.subdetailSequence,
      this._subdetailSequence,
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

  factory ClaimResponse_AddItem.fromJson(Map<String, dynamic> json) => _$ClaimResponse_AddItemFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_AddItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Detail1 {

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
List<ClaimResponse_Adjudication> adjudication;
List<ClaimResponse_SubDetail1> subDetail;

ClaimResponse_Detail1(
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

  factory ClaimResponse_Detail1.fromJson(Map<String, dynamic> json) => _$ClaimResponse_Detail1FromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_Detail1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_SubDetail1 {

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
List<ClaimResponse_Adjudication> adjudication;

ClaimResponse_SubDetail1(
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

  factory ClaimResponse_SubDetail1.fromJson(Map<String, dynamic> json) => _$ClaimResponse_SubDetail1FromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_SubDetail1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Total {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
Money amount;

ClaimResponse_Total(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.category,
      this.amount,
      });

  factory ClaimResponse_Total.fromJson(Map<String, dynamic> json) => _$ClaimResponse_TotalFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_TotalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Payment {

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

ClaimResponse_Payment(
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

  factory ClaimResponse_Payment.fromJson(Map<String, dynamic> json) => _$ClaimResponse_PaymentFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_PaymentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_ProcessNote {

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

ClaimResponse_ProcessNote(
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

  factory ClaimResponse_ProcessNote.fromJson(Map<String, dynamic> json) => _$ClaimResponse_ProcessNoteFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_ProcessNoteToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Insurance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
bool focal;
Element _focal;
Reference coverage;
String businessArrangement;
Element _businessArrangement;
Reference claimResponse;

ClaimResponse_Insurance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.focal,
      this._focal,
      this.coverage,
      this.businessArrangement,
      this._businessArrangement,
      this.claimResponse,
      });

  factory ClaimResponse_Insurance.fromJson(Map<String, dynamic> json) => _$ClaimResponse_InsuranceFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_InsuranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Error {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int itemSequence;
Element _itemSequence;
int detailSequence;
Element _detailSequence;
int subDetailSequence;
Element _subDetailSequence;
CodeableConcept code;

ClaimResponse_Error(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.itemSequence,
      this._itemSequence,
      this.detailSequence,
      this._detailSequence,
      this.subDetailSequence,
      this._subDetailSequence,
      this.code,
      });

  factory ClaimResponse_Error.fromJson(Map<String, dynamic> json) => _$ClaimResponse_ErrorFromJson(json);
  Map<String, dynamic> toJson() _$ClaimResponse_ErrorToJson(this);
}

