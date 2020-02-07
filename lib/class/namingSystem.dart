import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/usageContext.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/contactDetail.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'namingSystem.g.dart';

@JsonSerializable(explicitToJson: true)
class NamingSystem {

  //  This is a NamingSystem resource
  final String resourceType= 'NamingSystem';

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

  //  A natural language name identifying the naming system. This name
  // should be usable as an identifier for the module by machine processing
  // applications such as code generation.
  String name;

  //  Extensions for name
  Element elementName;

  //  The status of this naming system. Enables tracking the life-cycle of
  // the content.
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  Element elementStatus;

  //  Indicates the purpose for the naming system - what kinds of things
  // does it make unique?
  String kind; // <code> enum: codesystem/identifier/root;

  //  Extensions for kind
  Element elementKind;

  //  The date  (and optionally time) when the naming system was published.
  // The date must change when the business version changes and it must
  // change if the status code changes. In addition, it should change when
  // the substantive content of the naming system changes.
  DateTime date;

  //  Extensions for date
  Element elementDate;

  //  The name of the organization or individual that published the naming
  // system.
  String publisher;

  //  Extensions for publisher
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  List<ContactDetail> contact;

  //  The name of the organization that is responsible for issuing
  // identifiers or codes for this namespace and ensuring their
  // non-collision.
  String responsible;

  //  Extensions for responsible
  Element elementResponsible;

  //  Categorizes a naming system for easier search by grouping related
  // naming systems.
  CodeableConcept type;

  //  A free text natural language description of the naming system from a
  // consumer's perspective. Details about what the namespace identifies
  // including scope, granularity, version labeling, etc.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate naming system instances.
  List<UsageContext> useContext;

  //  A legal or geographic region in which the naming system is intended to
  // be used.
  List<CodeableConcept> jurisdiction;

  //  Provides guidance on the use of the namespace, including the handling
  // of formatting characters, use of upper vs. lower case, etc.
  String usage;

  //  Extensions for usage
  Element elementUsage;

  //  Indicates how the system may be identified when referenced in
  // electronic exchange.
  List<NamingSystem_UniqueId> uniqueId;

NamingSystem(
  this.uniqueId,
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
    this.name,
    this.elementName,
    this.status,
    this.elementStatus,
    this.kind,
    this.elementKind,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.responsible,
    this.elementResponsible,
    this.type,
    this.description,
    this.elementDescription,
    this.useContext,
    this.jurisdiction,
    this.usage,
    this.elementUsage
    });

  factory NamingSystem.fromJson(Map<String, dynamic> json) => _$NamingSystemFromJson(json);
  Map<String, dynamic> toJson() => _$NamingSystemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NamingSystem_UniqueId {

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

  //  Identifies the unique identifier scheme used for this particular
  // identifier.
  String type; // <code> enum: oid/uuid/uri/other;

  //  Extensions for type
  Element elementType;

  //  The string that should be sent over the wire to identify the code
  // system or identifier system.
  String value;

  //  Extensions for value
  Element elementValue;

  //  Indicates whether this identifier is the "preferred" identifier of
  // this type.
  bool preferred;

  //  Extensions for preferred
  Element elementPreferred;

  //  Notes about the past or intended usage of this identifier.
  String comment;

  //  Extensions for comment
  Element elementComment;

  //  Identifies the period of time over which this identifier is considered
  // appropriate to refer to the naming system.  Outside of this window, the
  // identifier might be non-deterministic.
  Period period;

NamingSystem_UniqueId(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.value,
    this.elementValue,
    this.preferred,
    this.elementPreferred,
    this.comment,
    this.elementComment,
    this.period
    });

  factory NamingSystem_UniqueId.fromJson(Map<String, dynamic> json) => _$NamingSystem_UniqueIdFromJson(json);
  Map<String, dynamic> toJson() => _$NamingSystem_UniqueIdToJson(this);
}

