import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/usageContext.dart';
import 'package:flutter_fhir/class/contactDetail.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'compartmentDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class CompartmentDefinition {

  //  This is a CompartmentDefinition resource
  final String resourceType= 'CompartmentDefinition';

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

  //  An absolute URI that is used to identify this compartment definition
  // when it is referenced in a specification, model, design or an instance;
  // also called its canonical identifier. This SHOULD be globally unique
  // and SHOULD be a literal address at which at which an authoritative
  // instance of this compartment definition is (or will be) published. This
  // URL can be the target of a canonical reference. It SHALL remain the
  // same when the compartment definition is stored on different servers.
  String url;

  //  Extensions for url
  Element elementUrl;

  //  The identifier that is used to identify this version of the
  // compartment definition when it is referenced in a specification, model,
  // design or instance. This is an arbitrary value managed by the
  // compartment definition author and is not expected to be globally
  // unique. For example, it might be a timestamp (e.g. yyyymmdd) if a
  // managed version is not available. There is also no expectation that
  // versions can be placed in a lexicographical sequence.
  String version;

  //  Extensions for version
  Element elementVersion;

  //  A natural language name identifying the compartment definition. This
  // name should be usable as an identifier for the module by machine
  // processing applications such as code generation.
  String name;

  //  Extensions for name
  Element elementName;

  //  The status of this compartment definition. Enables tracking the
  // life-cycle of the content.
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  Element elementStatus;

  //  A Boolean value to indicate that this compartment definition is
  // authored for testing purposes (or education/evaluation/marketing) and
  // is not intended to be used for genuine usage.
  bool experimental;

  //  Extensions for experimental
  Element elementExperimental;

  //  The date  (and optionally time) when the compartment definition was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the compartment definition
  // changes.
  DateTime date;

  //  Extensions for date
  Element elementDate;

  //  The name of the organization or individual that published the
  // compartment definition.
  String publisher;

  //  Extensions for publisher
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  List<ContactDetail> contact;

  //  A free text natural language description of the compartment definition
  // from a consumer's perspective.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate compartment definition instances.
  List<UsageContext> useContext;

  //  Explanation of why this compartment definition is needed and why it
  // has been designed as it has.
  String purpose;

  //  Extensions for purpose
  Element elementPurpose;

  //  Which compartment this definition describes.
  String code; // <code> enum: Patient/Encounter/RelatedPerson/Practitioner/Device;

  //  Extensions for code
  Element elementCode;

  //  Whether the search syntax is supported,.
  bool search;

  //  Extensions for search
  Element elementSearch;

  //  Information about how a resource is related to the compartment.
  List<CompartmentDefinition_Resource> resource;

CompartmentDefinition(
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
    this.version,
    this.elementVersion,
    this.name,
    this.elementName,
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
    this.purpose,
    this.elementPurpose,
    this.code,
    this.elementCode,
    this.search,
    this.elementSearch,
    this.resource
    });

  factory CompartmentDefinition.fromJson(Map<String, dynamic> json) => _$CompartmentDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$CompartmentDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CompartmentDefinition_Resource {

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

  //  The name of a resource supported by the server.
  String code;

  //  Extensions for code
  Element elementCode;

  //  The name of a search parameter that represents the link to the
  // compartment. More than one may be listed because a resource may be
  // linked to a compartment in more than one way,.
  List<String> param;

  //  Extensions for param
  List<Element> elementParam;

  //  Additional documentation about the resource and compartment.
  String documentation;

  //  Extensions for documentation
  Element elementDocumentation;

CompartmentDefinition_Resource(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.param,
    this.elementParam,
    this.documentation,
    this.elementDocumentation
    });

  factory CompartmentDefinition_Resource.fromJson(Map<String, dynamic> json) => _$CompartmentDefinition_ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$CompartmentDefinition_ResourceToJson(this);
}

