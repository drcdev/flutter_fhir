import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/money.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'coverage.g.dart';

@JsonSerializable(explicitToJson: true)
class Coverage {

  //  This is a Coverage resource
  final String resourceType= 'Coverage';

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
  Element element_implicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element element_language;

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
  List<ResourceList> contained;

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

  //  A unique identifier assigned to this coverage.
  List<Identifier> identifier;

  //  The status of the resource instance.
  String status;

  //  Extensions for status
  Element element_status;

  //  The type of coverage: social program, medical plan, accident coverage
  // (workers compensation, auto), group health or payment by an individual
  // or organization.
  CodeableConcept type;

  //  The party who 'owns' the insurance policy.
  Reference policyHolder;

  //  The party who has signed-up for or 'owns' the contractual relationship
  // to the policy or to whom the benefit of the policy for services
  // rendered to them or their family is due.
  Reference subscriber;

  //  The insurer assigned ID for the Subscriber.
  String subscriberId;

  //  Extensions for subscriberId
  Element element_subscriberId;

  //  The party who benefits from the insurance coverage; the patient when
  // products and/or services are provided.
  Reference beneficiary;

  //  A unique identifier for a dependent under the coverage.
  String dependent;

  //  Extensions for dependent
  Element element_dependent;

  //  The relationship of beneficiary (patient) to the subscriber.
  CodeableConcept relationship;

  //  Time period during which the coverage is in force. A missing start
  // date indicates the start date isn't known, a missing end date means the
  // coverage is continuing to be in force.
  Period period;

  //  The program or plan underwriter or payor including both insurance and
  // non-insurance agreements, such as patient-pay agreements.
  List<Reference> payor;

  //  A suite of underwriter specific classifiers.
  List<Coverage_Class> classs;

  //  The order of applicability of this coverage relative to other
  // coverages which are currently in force. Note, there may be gaps in the
  // numbering and this does not imply primary, secondary etc. as the
  // specific positioning of coverages depends upon the episode of care.
  int order;

  //  Extensions for order
  Element element_order;

  //  The insurer-specific identifier for the insurer-defined network of
  // providers to which the beneficiary may seek treatment which will be
  // covered at the 'in-network' rate, otherwise 'out of network' terms and
  // conditions apply.
  String network;

  //  Extensions for network
  Element element_network;

  //  A suite of codes indicating the cost category and associated amount
  // which have been detailed in the policy and may have been  included on
  // the health card.
  List<Coverage_CostToBeneficiary> costToBeneficiary;

  //  When 'subrogation=true' this insurance instance has been included not
  // for adjudication but to provide insurers with the details to recover
  // costs.
  bool subrogation;

  //  Extensions for subrogation
  Element element_subrogation;

  //  The policy(s) which constitute this insurance coverage.
  List<Reference> contract;

Coverage(
  this.beneficiary,
    this.payor,
    {this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.element_status,
    this.type,
    this.policyHolder,
    this.subscriber,
    this.subscriberId,
    this.element_subscriberId,
    this.dependent,
    this.element_dependent,
    this.relationship,
    this.period,
    this.classs,
    this.order,
    this.element_order,
    this.network,
    this.element_network,
    this.costToBeneficiary,
    this.subrogation,
    this.element_subrogation,
    this.contract
    });

  factory Coverage.fromJson(Map<String, dynamic> json) => _$CoverageFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Coverage_Class {

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

  //  The type of classification for which an insurer-specific class label
  // or number and optional name is provided, for example may be used to
  // identify a class of coverage or employer group, Policy, Plan.
  CodeableConcept type;

  //  The alphanumeric string value associated with the insurer issued
  // label.
  String value;

  //  Extensions for value
  Element element_value;

  //  A short description for the class.
  String name;

  //  Extensions for name
  Element element_name;

Coverage_Class(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.value,
    this.element_value,
    this.name,
    this.element_name
    });

  factory Coverage_Class.fromJson(Map<String, dynamic> json) => _$Coverage_ClassFromJson(json);
  Map<String, dynamic> toJson() => _$Coverage_ClassToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Coverage_CostToBeneficiary {

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

  //  The category of patient centric costs associated with treatment.
  CodeableConcept type;

  //  The amount due from the patient for the cost category.
  Quantity valueQuantity;

  //  The amount due from the patient for the cost category.
  Money valueMoney;

  //  A suite of codes indicating exceptions or reductions to patient costs
  // and their effective periods.
  List<Coverage_Exception> exception;

Coverage_CostToBeneficiary(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.valueQuantity,
    this.valueMoney,
    this.exception
    });

  factory Coverage_CostToBeneficiary.fromJson(Map<String, dynamic> json) => _$Coverage_CostToBeneficiaryFromJson(json);
  Map<String, dynamic> toJson() => _$Coverage_CostToBeneficiaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Coverage_Exception {

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

  //  The code for the specific exception.
  CodeableConcept type;

  //  The timeframe during when the exception is in force.
  Period period;

Coverage_Exception(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.period
    });

  factory Coverage_Exception.fromJson(Map<String, dynamic> json) => _$Coverage_ExceptionFromJson(json);
  Map<String, dynamic> toJson() => _$Coverage_ExceptionToJson(this);
}

