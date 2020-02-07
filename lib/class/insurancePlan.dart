import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/money.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/address.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/humanName.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'insurancePlan.g.dart';

@JsonSerializable(explicitToJson: true)
class InsurancePlan {

  //  This is a InsurancePlan resource
  final String resourceType= 'InsurancePlan';

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

  //  Business identifiers assigned to this health insurance product which
  // remain constant as the resource is updated and propagates from server
  // to server.
  List<Identifier> identifier;

  //  The current state of the health insurance product.
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  Element elementStatus;

  //  The kind of health insurance product.
  List<CodeableConcept> type;

  //  Official name of the health insurance product as designated by the
  // owner.
  String name;

  //  Extensions for name
  Element elementName;

  //  A list of alternate names that the product is known as, or was known
  // as in the past.
  List<String> alias;

  //  Extensions for alias
  List<Element> elementAlias;

  //  The period of time that the health insurance product is available.
  Period period;

  //  The entity that is providing  the health insurance product and
  // underwriting the risk.  This is typically an insurance carriers, other
  // third-party payers, or health plan sponsors comonly referred to as
  // 'payers'.
  Reference ownedBy;

  //  An organization which administer other services such as underwriting,
  // customer service and/or claims processing on behalf of the health
  // insurance product owner.
  Reference administeredBy;

  //  The geographic region in which a health insurance product's benefits
  // apply.
  List<Reference> coverageArea;

  //  The contact for the health insurance product for a certain purpose.
  List<InsurancePlan_Contact> contact;

  //  The technical endpoints providing access to services operated for the
  // health insurance product.
  List<Reference> endpoint;

  //  Reference to the network included in the health insurance product.
  List<Reference> network;

  //  Details about the coverage offered by the insurance product.
  List<InsurancePlan_Coverage> coverage;

  //  Details about an insurance plan.
  List<InsurancePlan_Plan> plan;

InsurancePlan(
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
    this.type,
    this.name,
    this.elementName,
    this.alias,
    this.elementAlias,
    this.period,
    this.ownedBy,
    this.administeredBy,
    this.coverageArea,
    this.contact,
    this.endpoint,
    this.network,
    this.coverage,
    this.plan
    });

  factory InsurancePlan.fromJson(Map<String, dynamic> json) => _$InsurancePlanFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlanToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Contact {

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

  //  Indicates a purpose for which the contact can be reached.
  CodeableConcept purpose;

  //  A name associated with the contact.
  HumanName name;

  //  A contact detail (e.g. a telephone number or an email address) by
  // which the party may be contacted.
  List<ContactPoint> telecom;

  //  Visiting or postal addresses for the contact.
  Address address;

InsurancePlan_Contact(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.purpose,
    this.name,
    this.telecom,
    this.address
    });

  factory InsurancePlan_Contact.fromJson(Map<String, dynamic> json) => _$InsurancePlan_ContactFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_ContactToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Coverage {

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

  //  Type of coverage  (Medical; Dental; Mental Health; Substance Abuse;
  // Vision; Drug; Short Term; Long Term Care; Hospice; Home Health).
  CodeableConcept type;

  //  Reference to the network that providing the type of coverage.
  List<Reference> network;

  //  Specific benefits under this type of coverage.
  List<InsurancePlan_Benefit> benefit;

InsurancePlan_Coverage(
  this.type,
    this.benefit,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.network
    });

  factory InsurancePlan_Coverage.fromJson(Map<String, dynamic> json) => _$InsurancePlan_CoverageFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_CoverageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Benefit {

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

  //  Type of benefit (primary care; speciality care; inpatient;
  // outpatient).
  CodeableConcept type;

  //  The referral requirements to have access/coverage for this benefit.
  String requirement;

  //  Extensions for requirement
  Element elementRequirement;

  //  The specific limits on the benefit.
  List<InsurancePlan_Limit> limit;

InsurancePlan_Benefit(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.requirement,
    this.elementRequirement,
    this.limit
    });

  factory InsurancePlan_Benefit.fromJson(Map<String, dynamic> json) => _$InsurancePlan_BenefitFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_BenefitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Limit {

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

  //  The maximum amount of a service item a plan will pay for a covered
  // benefit.  For examples. wellness visits, or eyeglasses.
  Quantity value;

  //  The specific limit on the benefit.
  CodeableConcept code;

InsurancePlan_Limit(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.value,
    this.code
    });

  factory InsurancePlan_Limit.fromJson(Map<String, dynamic> json) => _$InsurancePlan_LimitFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_LimitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Plan {

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

  //  Business identifiers assigned to this health insurance plan which
  // remain constant as the resource is updated and propagates from server
  // to server.
  List<Identifier> identifier;

  //  Type of plan. For example, "Platinum" or "High Deductable".
  CodeableConcept type;

  //  The geographic region in which a health insurance plan's benefits
  // apply.
  List<Reference> coverageArea;

  //  Reference to the network that providing the type of coverage.
  List<Reference> network;

  //  Overall costs associated with the plan.
  List<InsurancePlan_GeneralCost> generalCost;

  //  Costs associated with the coverage provided by the product.
  List<InsurancePlan_SpecificCost> specificCost;

InsurancePlan_Plan(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.type,
    this.coverageArea,
    this.network,
    this.generalCost,
    this.specificCost
    });

  factory InsurancePlan_Plan.fromJson(Map<String, dynamic> json) => _$InsurancePlan_PlanFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_PlanToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_GeneralCost {

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

  //  Type of cost.
  CodeableConcept type;

  //  Number of participants enrolled in the plan.
  int groupSize;

  //  Extensions for groupSize
  Element elementGroupSize;

  //  Value of the cost.
  Money cost;

  //  Additional information about the general costs associated with this
  // plan.
  String comment;

  //  Extensions for comment
  Element elementComment;

InsurancePlan_GeneralCost(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.groupSize,
    this.elementGroupSize,
    this.cost,
    this.comment,
    this.elementComment
    });

  factory InsurancePlan_GeneralCost.fromJson(Map<String, dynamic> json) => _$InsurancePlan_GeneralCostFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_GeneralCostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_SpecificCost {

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

  //  General category of benefit (Medical; Dental; Vision; Drug; Mental
  // Health; Substance Abuse; Hospice, Home Health).
  CodeableConcept category;

  //  List of the specific benefits under this category of benefit.
  List<InsurancePlan_Benefit1> benefit;

InsurancePlan_SpecificCost(
  this.category,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.benefit
    });

  factory InsurancePlan_SpecificCost.fromJson(Map<String, dynamic> json) => _$InsurancePlan_SpecificCostFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_SpecificCostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Benefit1 {

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

  //  Type of specific benefit (preventative; primary care office visit;
  // speciality office visit; hospitalization; emergency room; urgent care).
  CodeableConcept type;

  //  List of the costs associated with a specific benefit.
  List<InsurancePlan_Cost> cost;

InsurancePlan_Benefit1(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.cost
    });

  factory InsurancePlan_Benefit1.fromJson(Map<String, dynamic> json) => _$InsurancePlan_Benefit1FromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_Benefit1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Cost {

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

  //  Type of cost (copay; individual cap; family cap; coinsurance;
  // deductible).
  CodeableConcept type;

  //  Whether the cost applies to in-network or out-of-network providers
  // (in-network; out-of-network; other).
  CodeableConcept applicability;

  //  Additional information about the cost, such as information about
  // funding sources (e.g. HSA, HRA, FSA, RRA).
  List<CodeableConcept> qualifiers;

  //  The actual cost value. (some of the costs may be represented as
  // percentages rather than currency, e.g. 10% coinsurance).
  Quantity value;

InsurancePlan_Cost(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.applicability,
    this.qualifiers,
    this.value
    });

  factory InsurancePlan_Cost.fromJson(Map<String, dynamic> json) => _$InsurancePlan_CostFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_CostToJson(this);
}

