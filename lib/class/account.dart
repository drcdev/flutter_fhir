import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'account.g.dart';

@JsonSerializable(explicitToJson: true)
class Account {

  //  This is a Account resource
  final String resourceType= 'Account';

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

  //  Unique identifier used to reference the account.  Might or might not
  // be intended for human use (e.g. credit card number).
  List<Identifier> identifier;

  //  Indicates whether the account is presently used/usable or not.
  String status; // <code> enum: active/inactive/entered-in-error/on-hold/unknown;

  //  Extensions for status
  Element elementStatus;

  //  Categorizes the account for reporting and searching purposes.
  CodeableConcept type;

  //  Name used for the account when displaying it to humans in reports,
  // etc.
  String name;

  //  Extensions for name
  Element elementName;

  //  Identifies the entity which incurs the expenses. While the immediate
  // recipients of services or goods might be entities related to the
  // subject, the expenses were ultimately incurred by the subject of the
  // Account.
  List<Reference> subject;

  //  The date range of services associated with this account.
  Period servicePeriod;

  //  The party(s) that are responsible for covering the payment of this
  // account, and what order should they be applied to the account.
  List<Account_Coverage> coverage;

  //  Indicates the service area, hospital, department, etc. with
  // responsibility for managing the Account.
  Reference owner;

  //  Provides additional information about what the account tracks and how
  // it is used.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  The parties responsible for balancing the account if other payment
  // options fall short.
  List<Account_Guarantor> guarantor;

  //  Reference to a parent Account.
  Reference partOf;

Account(
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
    this.subject,
    this.servicePeriod,
    this.coverage,
    this.owner,
    this.description,
    this.elementDescription,
    this.guarantor,
    this.partOf
    });

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Account_Coverage {

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

  //  The party(s) that contribute to payment (or part of) of the charges
  // applied to this account (including self-pay). A coverage may only be
  // responsible for specific types of charges, and the sequence of the
  // coverages in the account could be important when processing billing.
  Reference coverage;

  //  The priority of the coverage in the context of this account.
  int priority;

  //  Extensions for priority
  Element elementPriority;

Account_Coverage(
  this.coverage,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.priority,
    this.elementPriority
    });

  factory Account_Coverage.fromJson(Map<String, dynamic> json) => _$Account_CoverageFromJson(json);
  Map<String, dynamic> toJson() => _$Account_CoverageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Account_Guarantor {

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

  //  The entity who is responsible.
  Reference party;

  //  A guarantor may be placed on credit hold or otherwise have their role
  // temporarily suspended.
  bool onHold;

  //  Extensions for onHold
  Element elementOnHold;

  //  The timeframe during which the guarantor accepts responsibility for
  // the account.
  Period period;

Account_Guarantor(
  this.party,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.onHold,
    this.elementOnHold,
    this.period
    });

  factory Account_Guarantor.fromJson(Map<String, dynamic> json) => _$Account_GuarantorFromJson(json);
  Map<String, dynamic> toJson() => _$Account_GuarantorToJson(this);
}

