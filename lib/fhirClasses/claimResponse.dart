import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 127)
class ClaimResponse {

  //  This is a ClaimResponse resource
  @HiveField(0)
  final String resourceType= 'ClaimResponse';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  A unique identifier assigned to this claim response.
  @HiveField(11)
  List<Identifier> identifier;

  //  The status of the resource instance.
  @HiveField(12)
  String status;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  A finer grained suite of claim type codes which may convey additional
  // information such as Inpatient vs Outpatient and/or a specialty service.
  @HiveField(14)
  CodeableConcept type;

  //  A finer grained suite of claim type codes which may convey additional
  // information such as Inpatient vs Outpatient and/or a specialty service.
  @HiveField(15)
  CodeableConcept subType;

  //  A code to indicate whether the nature of the request is: to request
  // adjudication of products and services previously rendered; or
  // requesting authorization and adjudication for provision in the future;
  // or requesting the non-binding adjudication of the listed products and
  // services which could be provided in the future.
  @HiveField(16)
  String use;

  //  Extensions for use
  @HiveField(17)
  Element elementUse;

  //  The party to whom the professional services and/or products have been
  // supplied or are being considered and for whom actual for facast
  // reimbursement is sought.
  @HiveField(18)
  Reference patient;

  //  The date this resource was created.
  @HiveField(19)
  DateTime created;

  //  Extensions for created
  @HiveField(20)
  Element elementCreated;

  //  The party responsible for authorization, adjudication and
  // reimbursement.
  @HiveField(21)
  Reference insurer;

  //  The provider which is responsible for the claim, predetermination or
  // preauthorization.
  @HiveField(22)
  Reference requestor;

  //  Original request resource reference.
  @HiveField(23)
  Reference request;

  //  The outcome of the claim, predetermination, or preauthorization
  // processing.
  @HiveField(24)
  String outcome;

  //  Extensions for outcome
  @HiveField(25)
  Element elementOutcome;

  //  A human readable description of the status of the adjudication.
  @HiveField(26)
  String disposition;

  //  Extensions for disposition
  @HiveField(27)
  Element elementDisposition;

  //  Reference from the Insurer which is used in later communications which
  // refers to this adjudication.
  @HiveField(28)
  String preAuthRef;

  //  Extensions for preAuthRef
  @HiveField(29)
  Element elementPreAuthRef;

  //  The time frame during which this authorization is effective.
  @HiveField(30)
  Period preAuthPeriod;

  //  Type of Party to be reimbursed: subscriber, provider, other.
  @HiveField(31)
  CodeableConcept payeeType;

  //  A claim line. Either a simple (a product or service) or a 'group' of
  // details which can also be a simple items or groups of sub-details.
  @HiveField(32)
  List<ClaimResponse_Item> item;

  //  The first-tier service adjudications for payor added product or
  // service lines.
  @HiveField(33)
  List<ClaimResponse_AddItem> addItem;

  //  The adjudication results which are presented at the header level
  // rather than at the line-item or add-item levels.
  @HiveField(34)
  List<ClaimResponse_Adjudication> adjudication;

  //  Categorized monetary totals for the adjudication.
  @HiveField(35)
  List<ClaimResponse_Total> total;

  //  Payment details for the adjudication of the claim.
  @HiveField(36)
  ClaimResponse_Payment payment;

  //  A code, used only on a response to a preauthorization, to indicate
  // whether the benefits payable have been reserved and for whom.
  @HiveField(37)
  CodeableConcept fundsReserve;

  //  A code for the form to be used for printing the content.
  @HiveField(38)
  CodeableConcept formCode;

  //  The actual form, by reference or inclusion, for printing the content
  // or an EOB.
  @HiveField(39)
  Attachment form;

  //  A note that describes or explains adjudication results in a human
  // readable form.
  @HiveField(40)
  List<ClaimResponse_ProcessNote> processNote;

  //  Request for additional supporting or authorizing information.
  @HiveField(41)
  List<Reference> communicationRequest;

  //  Financial instruments for reimbursement for the health care products
  // and services specified on the claim.
  @HiveField(42)
  List<ClaimResponse_Insurance> insurance;

  //  Errors encountered during the processing of the adjudication.
  @HiveField(43)
  List<ClaimResponse_Error> error;

ClaimResponse(
  this.type,
    this.patient,
    this.insurer,
    {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.elementStatus,
    this.subType,
    this.use,
    this.elementUse,
    this.created,
    this.elementCreated,
    this.requestor,
    this.request,
    this.outcome,
    this.elementOutcome,
    this.disposition,
    this.elementDisposition,
    this.preAuthRef,
    this.elementPreAuthRef,
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
    this.error
    });

  factory ClaimResponse.fromJson(Map<String, dynamic> json) => _$ClaimResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Item {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  A number to uniquely reference the claim item entries.
  int itemSequence;

  //  Extensions for itemSequence
  Element elementItemSequence;

  //  The numbers associated with notes below which apply to the
  // adjudication of this item.
  List<int> noteNumber;

  //  Extensions for noteNumber
  List<Element> elementNoteNumber;

  //  If this item is a group then the values here are a summary of the
  // adjudication of the detail items. If this item is a simple product or
  // service then this is the result of the adjudication of this item.
  List<ClaimResponse_Adjudication> adjudication;

  //  A claim detail. Either a simple (a product or service) or a 'group' of
  // sub-details which are simple items.
  List<ClaimResponse_Detail> detail;

ClaimResponse_Item(
  this.adjudication,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.itemSequence,
    this.elementItemSequence,
    this.noteNumber,
    this.elementNoteNumber,
    this.detail
    });

  factory ClaimResponse_Item.fromJson(Map<String, dynamic> json) => _$ClaimResponse_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Adjudication {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  A code to indicate the information type of this adjudication record.
  // Information types may include the value submitted, maximum values or
  // percentages allowed or payable under the plan, amounts that: the
  // patient is responsible for in aggregate or pertaining to this item;
  // amounts paid by other coverages; and, the benefit payable for this
  // item.
  CodeableConcept category;

  //  A code supporting the understanding of the adjudication result and
  // explaining variance from expected amount.
  CodeableConcept reason;

  //  Monetary amount associated with the category.
  Money amount;

  //  A non-monetary value associated with the category. Mutually exclusive
  // to the amount element above.
  double value;

  //  Extensions for value
  Element elementValue;

ClaimResponse_Adjudication(
  this.category,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.reason,
    this.amount,
    this.value,
    this.elementValue
    });

  factory ClaimResponse_Adjudication.fromJson(Map<String, dynamic> json) => _$ClaimResponse_AdjudicationFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_AdjudicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Detail {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  A number to uniquely reference the claim detail entry.
  int detailSequence;

  //  Extensions for detailSequence
  Element elementDetailSequence;

  //  The numbers associated with notes below which apply to the
  // adjudication of this item.
  List<int> noteNumber;

  //  Extensions for noteNumber
  List<Element> elementNoteNumber;

  //  The adjudication results.
  List<ClaimResponse_Adjudication> adjudication;

  //  A sub-detail adjudication of a simple product or service.
  List<ClaimResponse_SubDetail> subDetail;

ClaimResponse_Detail(
  this.adjudication,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.detailSequence,
    this.elementDetailSequence,
    this.noteNumber,
    this.elementNoteNumber,
    this.subDetail
    });

  factory ClaimResponse_Detail.fromJson(Map<String, dynamic> json) => _$ClaimResponse_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_DetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_SubDetail {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  A number to uniquely reference the claim sub-detail entry.
  int subDetailSequence;

  //  Extensions for subDetailSequence
  Element elementSubDetailSequence;

  //  The numbers associated with notes below which apply to the
  // adjudication of this item.
  List<int> noteNumber;

  //  Extensions for noteNumber
  List<Element> elementNoteNumber;

  //  The adjudication results.
  List<ClaimResponse_Adjudication> adjudication;

ClaimResponse_SubDetail(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.subDetailSequence,
    this.elementSubDetailSequence,
    this.noteNumber,
    this.elementNoteNumber,
    this.adjudication
    });

  factory ClaimResponse_SubDetail.fromJson(Map<String, dynamic> json) => _$ClaimResponse_SubDetailFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_SubDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_AddItem {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Claim items which this service line is intended to replace.
  List<int> itemSequence;

  //  Extensions for itemSequence
  List<Element> elementItemSequence;

  //  The sequence number of the details within the claim item which this
  // line is intended to replace.
  List<int> detailSequence;

  //  Extensions for detailSequence
  List<Element> elementDetailSequence;

  //  The sequence number of the sub-details within the details within the
  // claim item which this line is intended to replace.
  List<int> subdetailSequence;

  //  Extensions for subdetailSequence
  List<Element> elementSubdetailSequence;

  //  The providers who are authorized for the services rendered to the
  // patient.
  List<Reference> provider;

  //  When the value is a group code then this item collects a set of
  // related claim details, otherwise this contains the product, service,
  // drug or other billing code for the item.
  CodeableConcept productOrService;

  //  Item typification or modifiers codes to convey additional context for
  // the product or service.
  List<CodeableConcept> modifier;

  //  Identifies the program under which this may be recovered.
  List<CodeableConcept> programCode;

  //  The date or dates when the service or product was supplied, performed
  // or completed.
  String servicedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for servicedDate
  Element elementServicedDate;

  //  The date or dates when the service or product was supplied, performed
  // or completed.
  Period servicedPeriod;

  //  Where the product or service was provided.
  CodeableConcept locationCodeableConcept;

  //  Where the product or service was provided.
  Address locationAddress;

  //  Where the product or service was provided.
  Reference locationReference;

  //  The number of repetitions of a service or product.
  Quantity quantity;

  //  If the item is not a group then this is the fee for the product or
  // service, otherwise this is the total of the fees for the details of the
  // group.
  Money unitPrice;

  //  A real number that represents a multiplier used in determining the
  // overall value of services delivered and/or goods received. The concept
  // of a Factor allows for a discount or surcharge multiplier to be applied
  // to a monetary amount.
  double factor;

  //  Extensions for factor
  Element elementFactor;

  //  The quantity times the unit price for an additional service or product
  // or charge.
  Money net;

  //  Physical service site on the patient (limb, tooth, etc.).
  CodeableConcept bodySite;

  //  A region or surface of the bodySite, e.g. limb region or tooth
  // surface(s).
  List<CodeableConcept> subSite;

  //  The numbers associated with notes below which apply to the
  // adjudication of this item.
  List<int> noteNumber;

  //  Extensions for noteNumber
  List<Element> elementNoteNumber;

  //  The adjudication results.
  List<ClaimResponse_Adjudication> adjudication;

  //  The second-tier service adjudications for payor added services.
  List<ClaimResponse_Detail1> detail;

ClaimResponse_AddItem(
  this.productOrService,
    this.adjudication,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.itemSequence,
    this.elementItemSequence,
    this.detailSequence,
    this.elementDetailSequence,
    this.subdetailSequence,
    this.elementSubdetailSequence,
    this.provider,
    this.modifier,
    this.programCode,
    this.servicedDate,
    this.elementServicedDate,
    this.servicedPeriod,
    this.locationCodeableConcept,
    this.locationAddress,
    this.locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.elementFactor,
    this.net,
    this.bodySite,
    this.subSite,
    this.noteNumber,
    this.elementNoteNumber,
    this.detail
    });

  factory ClaimResponse_AddItem.fromJson(Map<String, dynamic> json) => _$ClaimResponse_AddItemFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_AddItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Detail1 {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  When the value is a group code then this item collects a set of
  // related claim details, otherwise this contains the product, service,
  // drug or other billing code for the item.
  CodeableConcept productOrService;

  //  Item typification or modifiers codes to convey additional context for
  // the product or service.
  List<CodeableConcept> modifier;

  //  The number of repetitions of a service or product.
  Quantity quantity;

  //  If the item is not a group then this is the fee for the product or
  // service, otherwise this is the total of the fees for the details of the
  // group.
  Money unitPrice;

  //  A real number that represents a multiplier used in determining the
  // overall value of services delivered and/or goods received. The concept
  // of a Factor allows for a discount or surcharge multiplier to be applied
  // to a monetary amount.
  double factor;

  //  Extensions for factor
  Element elementFactor;

  //  The quantity times the unit price for an additional service or product
  // or charge.
  Money net;

  //  The numbers associated with notes below which apply to the
  // adjudication of this item.
  List<int> noteNumber;

  //  Extensions for noteNumber
  List<Element> elementNoteNumber;

  //  The adjudication results.
  List<ClaimResponse_Adjudication> adjudication;

  //  The third-tier service adjudications for payor added services.
  List<ClaimResponse_SubDetail1> subDetail;

ClaimResponse_Detail1(
  this.productOrService,
    this.adjudication,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.elementFactor,
    this.net,
    this.noteNumber,
    this.elementNoteNumber,
    this.subDetail
    });

  factory ClaimResponse_Detail1.fromJson(Map<String, dynamic> json) => _$ClaimResponse_Detail1FromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_Detail1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_SubDetail1 {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  When the value is a group code then this item collects a set of
  // related claim details, otherwise this contains the product, service,
  // drug or other billing code for the item.
  CodeableConcept productOrService;

  //  Item typification or modifiers codes to convey additional context for
  // the product or service.
  List<CodeableConcept> modifier;

  //  The number of repetitions of a service or product.
  Quantity quantity;

  //  If the item is not a group then this is the fee for the product or
  // service, otherwise this is the total of the fees for the details of the
  // group.
  Money unitPrice;

  //  A real number that represents a multiplier used in determining the
  // overall value of services delivered and/or goods received. The concept
  // of a Factor allows for a discount or surcharge multiplier to be applied
  // to a monetary amount.
  double factor;

  //  Extensions for factor
  Element elementFactor;

  //  The quantity times the unit price for an additional service or product
  // or charge.
  Money net;

  //  The numbers associated with notes below which apply to the
  // adjudication of this item.
  List<int> noteNumber;

  //  Extensions for noteNumber
  List<Element> elementNoteNumber;

  //  The adjudication results.
  List<ClaimResponse_Adjudication> adjudication;

ClaimResponse_SubDetail1(
  this.productOrService,
    this.adjudication,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.elementFactor,
    this.net,
    this.noteNumber,
    this.elementNoteNumber
    });

  factory ClaimResponse_SubDetail1.fromJson(Map<String, dynamic> json) => _$ClaimResponse_SubDetail1FromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_SubDetail1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Total {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  A code to indicate the information type of this adjudication record.
  // Information types may include: the value submitted, maximum values or
  // percentages allowed or payable under the plan, amounts that the patient
  // is responsible for in aggregate or pertaining to this item, amounts
  // paid by other coverages, and the benefit payable for this item.
  CodeableConcept category;

  //  Monetary total amount associated with the category.
  Money amount;

ClaimResponse_Total(
  this.category,
    this.amount,
    {this.id,
    this.extension,
    this.modifierExtension
    });

  factory ClaimResponse_Total.fromJson(Map<String, dynamic> json) => _$ClaimResponse_TotalFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_TotalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Payment {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Whether this represents partial or complete payment of the benefits
  // payable.
  CodeableConcept type;

  //  Total amount of all adjustments to this payment included in this
  // transaction which are not related to this claim's adjudication.
  Money adjustment;

  //  Reason for the payment adjustment.
  CodeableConcept adjustmentReason;

  //  Estimated date the payment will be issued or the actual issue date of
  // payment.
  String date;

  //  Extensions for date
  Element elementDate;

  //  Benefits payable less any payment adjustment.
  Money amount;

  //  Issuer's unique identifier for the payment instrument.
  Identifier identifier;

ClaimResponse_Payment(
  this.type,
    this.amount,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.adjustment,
    this.adjustmentReason,
    this.date,
    this.elementDate,
    this.identifier
    });

  factory ClaimResponse_Payment.fromJson(Map<String, dynamic> json) => _$ClaimResponse_PaymentFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_PaymentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_ProcessNote {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  A number to uniquely identify a note entry.
  int number;

  //  Extensions for number
  Element elementNumber;

  //  The business purpose of the note text.
  String type; // <code> enum: display/print/printoper;

  //  Extensions for type
  Element elementType;

  //  The explanation or description associated with the processing.
  String text;

  //  Extensions for text
  Element elementText;

  //  A code to define the language used in the text of the note.
  CodeableConcept language;

ClaimResponse_ProcessNote(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.number,
    this.elementNumber,
    this.type,
    this.elementType,
    this.text,
    this.elementText,
    this.language
    });

  factory ClaimResponse_ProcessNote.fromJson(Map<String, dynamic> json) => _$ClaimResponse_ProcessNoteFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_ProcessNoteToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Insurance {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  A number to uniquely identify insurance entries and provide a sequence
  // of coverages to convey coordination of benefit order.
  int sequence;

  //  Extensions for sequence
  Element elementSequence;

  //  A flag to indicate that this Coverage is to be used for adjudication
  // of this claim when set to true.
  bool focal;

  //  Extensions for focal
  Element elementFocal;

  //  Reference to the insurance card level information contained in the
  // Coverage resource. The coverage issuing insurer will use these details
  // to locate the patient's actual coverage within the insurer's
  // information system.
  Reference coverage;

  //  A business agreement number established between the provider and the
  // insurer for special business processing purposes.
  String businessArrangement;

  //  Extensions for businessArrangement
  Element elementBusinessArrangement;

  //  The result of the adjudication of the line items for the Coverage
  // specified in this insurance.
  Reference claimResponse;

ClaimResponse_Insurance(
  this.coverage,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.focal,
    this.elementFocal,
    this.businessArrangement,
    this.elementBusinessArrangement,
    this.claimResponse
    });

  factory ClaimResponse_Insurance.fromJson(Map<String, dynamic> json) => _$ClaimResponse_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_InsuranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Error {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The sequence number of the line item submitted which contains the
  // error. This value is omitted when the error occurs outside of the item
  // structure.
  int itemSequence;

  //  Extensions for itemSequence
  Element elementItemSequence;

  //  The sequence number of the detail within the line item submitted which
  // contains the error. This value is omitted when the error occurs outside
  // of the item structure.
  int detailSequence;

  //  Extensions for detailSequence
  Element elementDetailSequence;

  //  The sequence number of the sub-detail within the detail within the
  // line item submitted which contains the error. This value is omitted
  // when the error occurs outside of the item structure.
  int subDetailSequence;

  //  Extensions for subDetailSequence
  Element elementSubDetailSequence;

  //  An error code, from a specified code system, which details why the
  // claim could not be adjudicated.
  CodeableConcept code;

ClaimResponse_Error(
  this.code,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.itemSequence,
    this.elementItemSequence,
    this.detailSequence,
    this.elementDetailSequence,
    this.subDetailSequence,
    this.elementSubDetailSequence
    });

  factory ClaimResponse_Error.fromJson(Map<String, dynamic> json) => _$ClaimResponse_ErrorFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_ErrorToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClaimResponseAdapter extends TypeAdapter<ClaimResponse> {
  @override
  final typeId = 127;

  @override
  ClaimResponse read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClaimResponse(
      fields[14] as CodeableConcept,
      fields[18] as Reference,
      fields[21] as Reference,
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      identifier: (fields[11] as List)?.cast<Identifier>(),
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      subType: fields[15] as CodeableConcept,
      use: fields[16] as String,
      elementUse: fields[17] as Element,
      created: fields[19] as DateTime,
      elementCreated: fields[20] as Element,
      requestor: fields[22] as Reference,
      request: fields[23] as Reference,
      outcome: fields[24] as String,
      elementOutcome: fields[25] as Element,
      disposition: fields[26] as String,
      elementDisposition: fields[27] as Element,
      preAuthRef: fields[28] as String,
      elementPreAuthRef: fields[29] as Element,
      preAuthPeriod: fields[30] as Period,
      payeeType: fields[31] as CodeableConcept,
      item: (fields[32] as List)?.cast<ClaimResponse_Item>(),
      addItem: (fields[33] as List)?.cast<ClaimResponse_AddItem>(),
      adjudication: (fields[34] as List)?.cast<ClaimResponse_Adjudication>(),
      total: (fields[35] as List)?.cast<ClaimResponse_Total>(),
      payment: fields[36] as ClaimResponse_Payment,
      fundsReserve: fields[37] as CodeableConcept,
      formCode: fields[38] as CodeableConcept,
      form: fields[39] as Attachment,
      processNote: (fields[40] as List)?.cast<ClaimResponse_ProcessNote>(),
      communicationRequest: (fields[41] as List)?.cast<Reference>(),
      insurance: (fields[42] as List)?.cast<ClaimResponse_Insurance>(),
      error: (fields[43] as List)?.cast<ClaimResponse_Error>(),
    );
  }

  @override
  void write(BinaryWriter writer, ClaimResponse obj) {
    writer
      ..writeByte(44)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.type)
      ..writeByte(15)
      ..write(obj.subType)
      ..writeByte(16)
      ..write(obj.use)
      ..writeByte(17)
      ..write(obj.elementUse)
      ..writeByte(18)
      ..write(obj.patient)
      ..writeByte(19)
      ..write(obj.created)
      ..writeByte(20)
      ..write(obj.elementCreated)
      ..writeByte(21)
      ..write(obj.insurer)
      ..writeByte(22)
      ..write(obj.requestor)
      ..writeByte(23)
      ..write(obj.request)
      ..writeByte(24)
      ..write(obj.outcome)
      ..writeByte(25)
      ..write(obj.elementOutcome)
      ..writeByte(26)
      ..write(obj.disposition)
      ..writeByte(27)
      ..write(obj.elementDisposition)
      ..writeByte(28)
      ..write(obj.preAuthRef)
      ..writeByte(29)
      ..write(obj.elementPreAuthRef)
      ..writeByte(30)
      ..write(obj.preAuthPeriod)
      ..writeByte(31)
      ..write(obj.payeeType)
      ..writeByte(32)
      ..write(obj.item)
      ..writeByte(33)
      ..write(obj.addItem)
      ..writeByte(34)
      ..write(obj.adjudication)
      ..writeByte(35)
      ..write(obj.total)
      ..writeByte(36)
      ..write(obj.payment)
      ..writeByte(37)
      ..write(obj.fundsReserve)
      ..writeByte(38)
      ..write(obj.formCode)
      ..writeByte(39)
      ..write(obj.form)
      ..writeByte(40)
      ..write(obj.processNote)
      ..writeByte(41)
      ..write(obj.communicationRequest)
      ..writeByte(42)
      ..write(obj.insurance)
      ..writeByte(43)
      ..write(obj.error);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClaimResponse _$ClaimResponseFromJson(Map<String, dynamic> json) {
  return ClaimResponse(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    json['insurer'] == null
        ? null
        : Reference.fromJson(json['insurer'] as Map<String, dynamic>),
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    subType: json['subType'] == null
        ? null
        : CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>),
    use: json['use'] as String,
    elementUse: json['elementUse'] == null
        ? null
        : Element.fromJson(json['elementUse'] as Map<String, dynamic>),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    elementCreated: json['elementCreated'] == null
        ? null
        : Element.fromJson(json['elementCreated'] as Map<String, dynamic>),
    requestor: json['requestor'] == null
        ? null
        : Reference.fromJson(json['requestor'] as Map<String, dynamic>),
    request: json['request'] == null
        ? null
        : Reference.fromJson(json['request'] as Map<String, dynamic>),
    outcome: json['outcome'] as String,
    elementOutcome: json['elementOutcome'] == null
        ? null
        : Element.fromJson(json['elementOutcome'] as Map<String, dynamic>),
    disposition: json['disposition'] as String,
    elementDisposition: json['elementDisposition'] == null
        ? null
        : Element.fromJson(json['elementDisposition'] as Map<String, dynamic>),
    preAuthRef: json['preAuthRef'] as String,
    elementPreAuthRef: json['elementPreAuthRef'] == null
        ? null
        : Element.fromJson(json['elementPreAuthRef'] as Map<String, dynamic>),
    preAuthPeriod: json['preAuthPeriod'] == null
        ? null
        : Period.fromJson(json['preAuthPeriod'] as Map<String, dynamic>),
    payeeType: json['payeeType'] == null
        ? null
        : CodeableConcept.fromJson(json['payeeType'] as Map<String, dynamic>),
    item: (json['item'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    addItem: (json['addItem'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_AddItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Adjudication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    total: (json['total'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Total.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    payment: json['payment'] == null
        ? null
        : ClaimResponse_Payment.fromJson(
            json['payment'] as Map<String, dynamic>),
    fundsReserve: json['fundsReserve'] == null
        ? null
        : CodeableConcept.fromJson(
            json['fundsReserve'] as Map<String, dynamic>),
    formCode: json['formCode'] == null
        ? null
        : CodeableConcept.fromJson(json['formCode'] as Map<String, dynamic>),
    form: json['form'] == null
        ? null
        : Attachment.fromJson(json['form'] as Map<String, dynamic>),
    processNote: (json['processNote'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_ProcessNote.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    communicationRequest: (json['communicationRequest'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    insurance: (json['insurance'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Insurance.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    error: (json['error'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Error.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClaimResponseToJson(ClaimResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'type': instance.type?.toJson(),
      'subType': instance.subType?.toJson(),
      'use': instance.use,
      'elementUse': instance.elementUse?.toJson(),
      'patient': instance.patient?.toJson(),
      'created': instance.created?.toIso8601String(),
      'elementCreated': instance.elementCreated?.toJson(),
      'insurer': instance.insurer?.toJson(),
      'requestor': instance.requestor?.toJson(),
      'request': instance.request?.toJson(),
      'outcome': instance.outcome,
      'elementOutcome': instance.elementOutcome?.toJson(),
      'disposition': instance.disposition,
      'elementDisposition': instance.elementDisposition?.toJson(),
      'preAuthRef': instance.preAuthRef,
      'elementPreAuthRef': instance.elementPreAuthRef?.toJson(),
      'preAuthPeriod': instance.preAuthPeriod?.toJson(),
      'payeeType': instance.payeeType?.toJson(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
      'addItem': instance.addItem?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
      'total': instance.total?.map((e) => e?.toJson())?.toList(),
      'payment': instance.payment?.toJson(),
      'fundsReserve': instance.fundsReserve?.toJson(),
      'formCode': instance.formCode?.toJson(),
      'form': instance.form?.toJson(),
      'processNote': instance.processNote?.map((e) => e?.toJson())?.toList(),
      'communicationRequest':
          instance.communicationRequest?.map((e) => e?.toJson())?.toList(),
      'insurance': instance.insurance?.map((e) => e?.toJson())?.toList(),
      'error': instance.error?.map((e) => e?.toJson())?.toList(),
    };

ClaimResponse_Item _$ClaimResponse_ItemFromJson(Map<String, dynamic> json) {
  return ClaimResponse_Item(
    (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Adjudication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    itemSequence: json['itemSequence'] as int,
    elementItemSequence: json['elementItemSequence'] == null
        ? null
        : Element.fromJson(json['elementItemSequence'] as Map<String, dynamic>),
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    detail: (json['detail'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Detail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClaimResponse_ItemToJson(ClaimResponse_Item instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'itemSequence': instance.itemSequence,
      'elementItemSequence': instance.elementItemSequence?.toJson(),
      'noteNumber': instance.noteNumber,
      'elementNoteNumber':
          instance.elementNoteNumber?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
      'detail': instance.detail?.map((e) => e?.toJson())?.toList(),
    };

ClaimResponse_Adjudication _$ClaimResponse_AdjudicationFromJson(
    Map<String, dynamic> json) {
  return ClaimResponse_Adjudication(
    json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reason: json['reason'] == null
        ? null
        : CodeableConcept.fromJson(json['reason'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Money.fromJson(json['amount'] as Map<String, dynamic>),
    value: (json['value'] as num)?.toDouble(),
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ClaimResponse_AdjudicationToJson(
        ClaimResponse_Adjudication instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
      'reason': instance.reason?.toJson(),
      'amount': instance.amount?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
    };

ClaimResponse_Detail _$ClaimResponse_DetailFromJson(Map<String, dynamic> json) {
  return ClaimResponse_Detail(
    (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Adjudication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    detailSequence: json['detailSequence'] as int,
    elementDetailSequence: json['elementDetailSequence'] == null
        ? null
        : Element.fromJson(
            json['elementDetailSequence'] as Map<String, dynamic>),
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subDetail: (json['subDetail'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_SubDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClaimResponse_DetailToJson(
        ClaimResponse_Detail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'detailSequence': instance.detailSequence,
      'elementDetailSequence': instance.elementDetailSequence?.toJson(),
      'noteNumber': instance.noteNumber,
      'elementNoteNumber':
          instance.elementNoteNumber?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
      'subDetail': instance.subDetail?.map((e) => e?.toJson())?.toList(),
    };

ClaimResponse_SubDetail _$ClaimResponse_SubDetailFromJson(
    Map<String, dynamic> json) {
  return ClaimResponse_SubDetail(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subDetailSequence: json['subDetailSequence'] as int,
    elementSubDetailSequence: json['elementSubDetailSequence'] == null
        ? null
        : Element.fromJson(
            json['elementSubDetailSequence'] as Map<String, dynamic>),
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Adjudication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClaimResponse_SubDetailToJson(
        ClaimResponse_SubDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'subDetailSequence': instance.subDetailSequence,
      'elementSubDetailSequence': instance.elementSubDetailSequence?.toJson(),
      'noteNumber': instance.noteNumber,
      'elementNoteNumber':
          instance.elementNoteNumber?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
    };

ClaimResponse_AddItem _$ClaimResponse_AddItemFromJson(
    Map<String, dynamic> json) {
  return ClaimResponse_AddItem(
    json['productOrService'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productOrService'] as Map<String, dynamic>),
    (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Adjudication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    itemSequence:
        (json['itemSequence'] as List)?.map((e) => e as int)?.toList(),
    elementItemSequence: (json['elementItemSequence'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    detailSequence:
        (json['detailSequence'] as List)?.map((e) => e as int)?.toList(),
    elementDetailSequence: (json['elementDetailSequence'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subdetailSequence:
        (json['subdetailSequence'] as List)?.map((e) => e as int)?.toList(),
    elementSubdetailSequence: (json['elementSubdetailSequence'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    provider: (json['provider'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifier: (json['modifier'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    programCode: (json['programCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    servicedDate: json['servicedDate'] as String,
    elementServicedDate: json['elementServicedDate'] == null
        ? null
        : Element.fromJson(json['elementServicedDate'] as Map<String, dynamic>),
    servicedPeriod: json['servicedPeriod'] == null
        ? null
        : Period.fromJson(json['servicedPeriod'] as Map<String, dynamic>),
    locationCodeableConcept: json['locationCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['locationCodeableConcept'] as Map<String, dynamic>),
    locationAddress: json['locationAddress'] == null
        ? null
        : Address.fromJson(json['locationAddress'] as Map<String, dynamic>),
    locationReference: json['locationReference'] == null
        ? null
        : Reference.fromJson(json['locationReference'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    unitPrice: json['unitPrice'] == null
        ? null
        : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
    factor: (json['factor'] as num)?.toDouble(),
    elementFactor: json['elementFactor'] == null
        ? null
        : Element.fromJson(json['elementFactor'] as Map<String, dynamic>),
    net: json['net'] == null
        ? null
        : Money.fromJson(json['net'] as Map<String, dynamic>),
    bodySite: json['bodySite'] == null
        ? null
        : CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>),
    subSite: (json['subSite'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    detail: (json['detail'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Detail1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClaimResponse_AddItemToJson(
        ClaimResponse_AddItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'itemSequence': instance.itemSequence,
      'elementItemSequence':
          instance.elementItemSequence?.map((e) => e?.toJson())?.toList(),
      'detailSequence': instance.detailSequence,
      'elementDetailSequence':
          instance.elementDetailSequence?.map((e) => e?.toJson())?.toList(),
      'subdetailSequence': instance.subdetailSequence,
      'elementSubdetailSequence':
          instance.elementSubdetailSequence?.map((e) => e?.toJson())?.toList(),
      'provider': instance.provider?.map((e) => e?.toJson())?.toList(),
      'productOrService': instance.productOrService?.toJson(),
      'modifier': instance.modifier?.map((e) => e?.toJson())?.toList(),
      'programCode': instance.programCode?.map((e) => e?.toJson())?.toList(),
      'servicedDate': instance.servicedDate,
      'elementServicedDate': instance.elementServicedDate?.toJson(),
      'servicedPeriod': instance.servicedPeriod?.toJson(),
      'locationCodeableConcept': instance.locationCodeableConcept?.toJson(),
      'locationAddress': instance.locationAddress?.toJson(),
      'locationReference': instance.locationReference?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'unitPrice': instance.unitPrice?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'net': instance.net?.toJson(),
      'bodySite': instance.bodySite?.toJson(),
      'subSite': instance.subSite?.map((e) => e?.toJson())?.toList(),
      'noteNumber': instance.noteNumber,
      'elementNoteNumber':
          instance.elementNoteNumber?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
      'detail': instance.detail?.map((e) => e?.toJson())?.toList(),
    };

ClaimResponse_Detail1 _$ClaimResponse_Detail1FromJson(
    Map<String, dynamic> json) {
  return ClaimResponse_Detail1(
    json['productOrService'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productOrService'] as Map<String, dynamic>),
    (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Adjudication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifier: (json['modifier'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    unitPrice: json['unitPrice'] == null
        ? null
        : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
    factor: (json['factor'] as num)?.toDouble(),
    elementFactor: json['elementFactor'] == null
        ? null
        : Element.fromJson(json['elementFactor'] as Map<String, dynamic>),
    net: json['net'] == null
        ? null
        : Money.fromJson(json['net'] as Map<String, dynamic>),
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subDetail: (json['subDetail'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_SubDetail1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClaimResponse_Detail1ToJson(
        ClaimResponse_Detail1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'productOrService': instance.productOrService?.toJson(),
      'modifier': instance.modifier?.map((e) => e?.toJson())?.toList(),
      'quantity': instance.quantity?.toJson(),
      'unitPrice': instance.unitPrice?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'net': instance.net?.toJson(),
      'noteNumber': instance.noteNumber,
      'elementNoteNumber':
          instance.elementNoteNumber?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
      'subDetail': instance.subDetail?.map((e) => e?.toJson())?.toList(),
    };

ClaimResponse_SubDetail1 _$ClaimResponse_SubDetail1FromJson(
    Map<String, dynamic> json) {
  return ClaimResponse_SubDetail1(
    json['productOrService'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productOrService'] as Map<String, dynamic>),
    (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Adjudication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifier: (json['modifier'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    unitPrice: json['unitPrice'] == null
        ? null
        : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
    factor: (json['factor'] as num)?.toDouble(),
    elementFactor: json['elementFactor'] == null
        ? null
        : Element.fromJson(json['elementFactor'] as Map<String, dynamic>),
    net: json['net'] == null
        ? null
        : Money.fromJson(json['net'] as Map<String, dynamic>),
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClaimResponse_SubDetail1ToJson(
        ClaimResponse_SubDetail1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'productOrService': instance.productOrService?.toJson(),
      'modifier': instance.modifier?.map((e) => e?.toJson())?.toList(),
      'quantity': instance.quantity?.toJson(),
      'unitPrice': instance.unitPrice?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'net': instance.net?.toJson(),
      'noteNumber': instance.noteNumber,
      'elementNoteNumber':
          instance.elementNoteNumber?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
    };

ClaimResponse_Total _$ClaimResponse_TotalFromJson(Map<String, dynamic> json) {
  return ClaimResponse_Total(
    json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    json['amount'] == null
        ? null
        : Money.fromJson(json['amount'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClaimResponse_TotalToJson(
        ClaimResponse_Total instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
      'amount': instance.amount?.toJson(),
    };

ClaimResponse_Payment _$ClaimResponse_PaymentFromJson(
    Map<String, dynamic> json) {
  return ClaimResponse_Payment(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    json['amount'] == null
        ? null
        : Money.fromJson(json['amount'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjustment: json['adjustment'] == null
        ? null
        : Money.fromJson(json['adjustment'] as Map<String, dynamic>),
    adjustmentReason: json['adjustmentReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['adjustmentReason'] as Map<String, dynamic>),
    date: json['date'] as String,
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ClaimResponse_PaymentToJson(
        ClaimResponse_Payment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'adjustment': instance.adjustment?.toJson(),
      'adjustmentReason': instance.adjustmentReason?.toJson(),
      'date': instance.date,
      'elementDate': instance.elementDate?.toJson(),
      'amount': instance.amount?.toJson(),
      'identifier': instance.identifier?.toJson(),
    };

ClaimResponse_ProcessNote _$ClaimResponse_ProcessNoteFromJson(
    Map<String, dynamic> json) {
  return ClaimResponse_ProcessNote(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    number: json['number'] as int,
    elementNumber: json['elementNumber'] == null
        ? null
        : Element.fromJson(json['elementNumber'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    language: json['language'] == null
        ? null
        : CodeableConcept.fromJson(json['language'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ClaimResponse_ProcessNoteToJson(
        ClaimResponse_ProcessNote instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'number': instance.number,
      'elementNumber': instance.elementNumber?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
      'language': instance.language?.toJson(),
    };

ClaimResponse_Insurance _$ClaimResponse_InsuranceFromJson(
    Map<String, dynamic> json) {
  return ClaimResponse_Insurance(
    json['coverage'] == null
        ? null
        : Reference.fromJson(json['coverage'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sequence: json['sequence'] as int,
    elementSequence: json['elementSequence'] == null
        ? null
        : Element.fromJson(json['elementSequence'] as Map<String, dynamic>),
    focal: json['focal'] as bool,
    elementFocal: json['elementFocal'] == null
        ? null
        : Element.fromJson(json['elementFocal'] as Map<String, dynamic>),
    businessArrangement: json['businessArrangement'] as String,
    elementBusinessArrangement: json['elementBusinessArrangement'] == null
        ? null
        : Element.fromJson(
            json['elementBusinessArrangement'] as Map<String, dynamic>),
    claimResponse: json['claimResponse'] == null
        ? null
        : Reference.fromJson(json['claimResponse'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ClaimResponse_InsuranceToJson(
        ClaimResponse_Insurance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'focal': instance.focal,
      'elementFocal': instance.elementFocal?.toJson(),
      'coverage': instance.coverage?.toJson(),
      'businessArrangement': instance.businessArrangement,
      'elementBusinessArrangement':
          instance.elementBusinessArrangement?.toJson(),
      'claimResponse': instance.claimResponse?.toJson(),
    };

ClaimResponse_Error _$ClaimResponse_ErrorFromJson(Map<String, dynamic> json) {
  return ClaimResponse_Error(
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    itemSequence: json['itemSequence'] as int,
    elementItemSequence: json['elementItemSequence'] == null
        ? null
        : Element.fromJson(json['elementItemSequence'] as Map<String, dynamic>),
    detailSequence: json['detailSequence'] as int,
    elementDetailSequence: json['elementDetailSequence'] == null
        ? null
        : Element.fromJson(
            json['elementDetailSequence'] as Map<String, dynamic>),
    subDetailSequence: json['subDetailSequence'] as int,
    elementSubDetailSequence: json['elementSubDetailSequence'] == null
        ? null
        : Element.fromJson(
            json['elementSubDetailSequence'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ClaimResponse_ErrorToJson(
        ClaimResponse_Error instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'itemSequence': instance.itemSequence,
      'elementItemSequence': instance.elementItemSequence?.toJson(),
      'detailSequence': instance.detailSequence,
      'elementDetailSequence': instance.elementDetailSequence?.toJson(),
      'subDetailSequence': instance.subDetailSequence,
      'elementSubDetailSequence': instance.elementSubDetailSequence?.toJson(),
      'code': instance.code?.toJson(),
    };
