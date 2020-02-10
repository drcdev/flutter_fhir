import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

part 'messageDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class MessageDefinition {

  //  This is a MessageDefinition resource
  final String resourceType= 'MessageDefinition';

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

  //  The business identifier that is used to reference the
  // MessageDefinition and *is* expected to be consistent from server to
  // server.
  String url;

  //  Extensions for url
  Element elementUrl;

  //  A formal identifier that is used to identify this message definition
  // when it is represented in other formats, or referenced in a
  // specification, model, design or an instance.
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the message
  // definition when it is referenced in a specification, model, design or
  // instance. This is an arbitrary value managed by the message definition
  // author and is not expected to be globally unique. For example, it might
  // be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  // There is also no expectation that versions can be placed in a
  // lexicographical sequence.
  String version;

  //  Extensions for version
  Element elementVersion;

  //  A natural language name identifying the message definition. This name
  // should be usable as an identifier for the module by machine processing
  // applications such as code generation.
  String name;

  //  Extensions for name
  Element elementName;

  //  A short, descriptive, user-friendly title for the message definition.
  String title;

  //  Extensions for title
  Element elementTitle;

  //  A MessageDefinition that is superseded by this definition.
  List<String> replaces;

  //  The status of this message definition. Enables tracking the life-cycle
  // of the content.
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  Element elementStatus;

  //  A Boolean value to indicate that this message definition is authored
  // for testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  bool experimental;

  //  Extensions for experimental
  Element elementExperimental;

  //  The date  (and optionally time) when the message definition was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the message definition changes.
  DateTime date;

  //  Extensions for date
  Element elementDate;

  //  The name of the organization or individual that published the message
  // definition.
  String publisher;

  //  Extensions for publisher
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  List<ContactDetail> contact;

  //  A free text natural language description of the message definition
  // from a consumer's perspective.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate message definition instances.
  List<UsageContext> useContext;

  //  A legal or geographic region in which the message definition is
  // intended to be used.
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this message definition is needed and why it has
  // been designed as it has.
  String purpose;

  //  Extensions for purpose
  Element elementPurpose;

  //  A copyright statement relating to the message definition and/or its
  // contents. Copyright statements are generally legal restrictions on the
  // use and publishing of the message definition.
  String copyright;

  //  Extensions for copyright
  Element elementCopyright;

  //  The MessageDefinition that is the basis for the contents of this
  // resource.
  String base;

  //  Identifies a protocol or workflow that this MessageDefinition
  // represents a step in.
  List<String> parent;

  //  Event code or link to the EventDefinition.
  Coding eventCoding;

  //  Event code or link to the EventDefinition.
  String eventUri; //  pattern: ^\S*$

  //  Extensions for eventUri
  Element elementEventUri;

  //  The impact of the content of the message.
  String category; // <code> enum: consequence/currency/notification;

  //  Extensions for category
  Element elementCategory;

  //  Identifies the resource (or resources) that are being addressed by the
  // event.  For example, the Encounter for an admit message or two Account
  // records for a merge.
  List<MessageDefinition_Focus> focus;

  //  Declare at a message definition level whether a response is required
  // or only upon error or success, or never.
  String responseRequired; // <code> enum: always/on-error/never/on-success;

  //  Extensions for responseRequired
  Element elementResponseRequired;

  //  Indicates what types of messages may be sent as an application-level
  // response to this message.
  List<MessageDefinition_AllowedResponse> allowedResponse;

  //  Canonical reference to a GraphDefinition. If a URL is provided, it is
  // the canonical reference to a [[[GraphDefinition]]] that it controls
  // what resources are to be added to the bundle when building the
  // document. The GraphDefinition can also specify profiles that apply to
  // the various resources.
  List<String> graph;

MessageDefinition(
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
    this.url,
    this.elementUrl,
    this.identifier,
    this.version,
    this.elementVersion,
    this.name,
    this.elementName,
    this.title,
    this.elementTitle,
    this.replaces,
    this.status,
    this.elementStatus,
    this.experimental,
    this.elementExperimental,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.description,
    this.elementDescription,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.elementPurpose,
    this.copyright,
    this.elementCopyright,
    this.base,
    this.parent,
    this.eventCoding,
    this.eventUri,
    this.elementEventUri,
    this.category,
    this.elementCategory,
    this.focus,
    this.responseRequired,
    this.elementResponseRequired,
    this.allowedResponse,
    this.graph
    });

  factory MessageDefinition.fromJson(Map<String, dynamic> json) => _$MessageDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$MessageDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MessageDefinition_Focus {

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

  //  The kind of resource that must be the focus for this message.
  String code;

  //  Extensions for code
  Element elementCode;

  //  A profile that reflects constraints for the focal resource (and
  // potentially for related resources).
  String profile;

  //  Identifies the minimum number of resources of this type that must be
  // pointed to by a message in order for it to be valid against this
  // MessageDefinition.
  int min;

  //  Extensions for min
  Element elementMin;

  //  Identifies the maximum number of resources of this type that must be
  // pointed to by a message in order for it to be valid against this
  // MessageDefinition.
  String max;

  //  Extensions for max
  Element elementMax;

MessageDefinition_Focus(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.profile,
    this.min,
    this.elementMin,
    this.max,
    this.elementMax
    });

  factory MessageDefinition_Focus.fromJson(Map<String, dynamic> json) => _$MessageDefinition_FocusFromJson(json);
  Map<String, dynamic> toJson() => _$MessageDefinition_FocusToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MessageDefinition_AllowedResponse {

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

  //  A reference to the message definition that must be adhered to by this
  // supported response.
  String message;

  //  Provides a description of the circumstances in which this response
  // should be used (as opposed to one of the alternative responses).
  String situation;

  //  Extensions for situation
  Element elementSituation;

MessageDefinition_AllowedResponse(
  this.message,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.situation,
    this.elementSituation
    });

  factory MessageDefinition_AllowedResponse.fromJson(Map<String, dynamic> json) => _$MessageDefinition_AllowedResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MessageDefinition_AllowedResponseToJson(this);
}

