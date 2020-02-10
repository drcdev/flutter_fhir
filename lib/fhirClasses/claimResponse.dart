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

part 'claimResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class ClaimResponse {

  //  This is a ClaimResponse resource
  final String resourceType= 'ClaimResponse';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  String implicitRules;

  //  Extensions for implicitRules
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
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
  List<Extension> modifierExtension;

  //  A unique identifier assigned to this claim response.
  List<Identifier> identifier;

  //  The status of the resource instance.
  String status;

  //  Extensions for status
  Element elementStatus;

  //  A finer grained suite of claim type codes which may convey additional
  // information such as Inpatient vs Outpatient and/or a specialty service.
  CodeableConcept type;

  //  A finer grained suite of claim type codes which may convey additional
  // information such as Inpatient vs Outpatient and/or a specialty service.
  CodeableConcept subType;

  //  A code to indicate whether the nature of the request is: to request
  // adjudication of products and services previously rendered; or
  // requesting authorization and adjudication for provision in the future;
  // or requesting the non-binding adjudication of the listed products and
  // services which could be provided in the future.
  String use;

  //  Extensions for use
  Element elementUse;

  //  The party to whom the professional services and/or products have been
  // supplied or are being considered and for whom actual for facast
  // reimbursement is sought.
  Reference patient;

  //  The date this resource was created.
  DateTime created;

  //  Extensions for created
  Element elementCreated;

  //  The party responsible for authorization, adjudication and
  // reimbursement.
  Reference insurer;

  //  The provider which is responsible for the claim, predetermination or
  // preauthorization.
  Reference requestor;

  //  Original request resource reference.
  Reference request;

  //  The outcome of the claim, predetermination, or preauthorization
  // processing.
  String outcome;

  //  Extensions for outcome
  Element elementOutcome;

  //  A human readable description of the status of the adjudication.
  String disposition;

  //  Extensions for disposition
  Element elementDisposition;

  //  Reference from the Insurer which is used in later communications which
  // refers to this adjudication.
  String preAuthRef;

  //  Extensions for preAuthRef
  Element elementPreAuthRef;

  //  The time frame during which this authorization is effective.
  Period preAuthPeriod;

  //  Type of Party to be reimbursed: subscriber, provider, other.
  CodeableConcept payeeType;

  //  A claim line. Either a simple (a product or service) or a 'group' of
  // details which can also be a simple items or groups of sub-details.
  List<ClaimResponse_Item> item;

  //  The first-tier service adjudications for payor added product or
  // service lines.
  List<ClaimResponse_AddItem> addItem;

  //  The adjudication results which are presented at the header level
  // rather than at the line-item or add-item levels.
  List<ClaimResponse_Adjudication> adjudication;

  //  Categorized monetary totals for the adjudication.
  List<ClaimResponse_Total> total;

  //  Payment details for the adjudication of the claim.
  ClaimResponse_Payment payment;

  //  A code, used only on a response to a preauthorization, to indicate
  // whether the benefits payable have been reserved and for whom.
  CodeableConcept fundsReserve;

  //  A code for the form to be used for printing the content.
  CodeableConcept formCode;

  //  The actual form, by reference or inclusion, for printing the content
  // or an EOB.
  Attachment form;

  //  A note that describes or explains adjudication results in a human
  // readable form.
  List<ClaimResponse_ProcessNote> processNote;

  //  Request for additional supporting or authorizing information.
  List<Reference> communicationRequest;

  //  Financial instruments for reimbursement for the health care products
  // and services specified on the claim.
  List<ClaimResponse_Insurance> insurance;

  //  Errors encountered during the processing of the adjudication.
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

