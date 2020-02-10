import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

part 'conceptMap.g.dart';

@JsonSerializable(explicitToJson: true)
class ConceptMap {

  //  This is a ConceptMap resource
  final String resourceType= 'ConceptMap';

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

  //  An absolute URI that is used to identify this concept map when it is
  // referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this concept map is (or will be) published. This URL can be the
  // target of a canonical reference. It SHALL remain the same when the
  // concept map is stored on different servers.
  String url;

  //  Extensions for url
  Element elementUrl;

  //  A formal identifier that is used to identify this concept map when it
  // is represented in other formats, or referenced in a specification,
  // model, design or an instance.
  Identifier identifier;

  //  The identifier that is used to identify this version of the concept
  // map when it is referenced in a specification, model, design or
  // instance. This is an arbitrary value managed by the concept map author
  // and is not expected to be globally unique. For example, it might be a
  // timestamp (e.g. yyyymmdd) if a managed version is not available. There
  // is also no expectation that versions can be placed in a lexicographical
  // sequence.
  String version;

  //  Extensions for version
  Element elementVersion;

  //  A natural language name identifying the concept map. This name should
  // be usable as an identifier for the module by machine processing
  // applications such as code generation.
  String name;

  //  Extensions for name
  Element elementName;

  //  A short, descriptive, user-friendly title for the concept map.
  String title;

  //  Extensions for title
  Element elementTitle;

  //  The status of this concept map. Enables tracking the life-cycle of the
  // content.
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  Element elementStatus;

  //  A Boolean value to indicate that this concept map is authored for
  // testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  bool experimental;

  //  Extensions for experimental
  Element elementExperimental;

  //  The date  (and optionally time) when the concept map was published.
  // The date must change when the business version changes and it must
  // change if the status code changes. In addition, it should change when
  // the substantive content of the concept map changes.
  DateTime date;

  //  Extensions for date
  Element elementDate;

  //  The name of the organization or individual that published the concept
  // map.
  String publisher;

  //  Extensions for publisher
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  List<ContactDetail> contact;

  //  A free text natural language description of the concept map from a
  // consumer's perspective.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate concept map instances.
  List<UsageContext> useContext;

  //  A legal or geographic region in which the concept map is intended to
  // be used.
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this concept map is needed and why it has been
  // designed as it has.
  String purpose;

  //  Extensions for purpose
  Element elementPurpose;

  //  A copyright statement relating to the concept map and/or its contents.
  // Copyright statements are generally legal restrictions on the use and
  // publishing of the concept map.
  String copyright;

  //  Extensions for copyright
  Element elementCopyright;

  //  Identifier for the source value set that contains the concepts that
  // are being mapped and provides context for the mappings.
  String sourceUri; //  pattern: ^\S*$

  //  Extensions for sourceUri
  Element elementSourceUri;

  //  Identifier for the source value set that contains the concepts that
  // are being mapped and provides context for the mappings.
  String sourceCanonical; //  pattern: ^\S*$

  //  Extensions for sourceCanonical
  Element elementSourceCanonical;

  //  The target value set provides context for the mappings. Note that the
  // mapping is made between concepts, not between value sets, but the value
  // set provides important context about how the concept mapping choices
  // are made.
  String targetUri; //  pattern: ^\S*$

  //  Extensions for targetUri
  Element elementTargetUri;

  //  The target value set provides context for the mappings. Note that the
  // mapping is made between concepts, not between value sets, but the value
  // set provides important context about how the concept mapping choices
  // are made.
  String targetCanonical; //  pattern: ^\S*$

  //  Extensions for targetCanonical
  Element elementTargetCanonical;

  //  A group of mappings that all have the same source and target system.
  List<ConceptMap_Group> group;

ConceptMap(
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
    this.sourceUri,
    this.elementSourceUri,
    this.sourceCanonical,
    this.elementSourceCanonical,
    this.targetUri,
    this.elementTargetUri,
    this.targetCanonical,
    this.elementTargetCanonical,
    this.group
    });

  factory ConceptMap.fromJson(Map<String, dynamic> json) => _$ConceptMapFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMapToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConceptMap_Group {

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

  //  An absolute URI that identifies the source system where the concepts
  // to be mapped are defined.
  String source;

  //  Extensions for source
  Element elementSource;

  //  The specific version of the code system, as determined by the code
  // system authority.
  String sourceVersion;

  //  Extensions for sourceVersion
  Element elementSourceVersion;

  //  An absolute URI that identifies the target system that the concepts
  // will be mapped to.
  String target;

  //  Extensions for target
  Element elementTarget;

  //  The specific version of the code system, as determined by the code
  // system authority.
  String targetVersion;

  //  Extensions for targetVersion
  Element elementTargetVersion;

  //  Mappings for an individual concept in the source to one or more
  // concepts in the target.
  List<ConceptMap_Element> element;

  //  What to do when there is no mapping for the source concept. "Unmapped"
  // does not include codes that are unmatched, and the unmapped element is
  // ignored in a code is specified to have equivalence = unmatched.
  ConceptMap_Unmapped unmapped;

ConceptMap_Group(
  this.element,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.source,
    this.elementSource,
    this.sourceVersion,
    this.elementSourceVersion,
    this.target,
    this.elementTarget,
    this.targetVersion,
    this.elementTargetVersion,
    this.unmapped
    });

  factory ConceptMap_Group.fromJson(Map<String, dynamic> json) => _$ConceptMap_GroupFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConceptMap_Element {

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

  //  Identity (code or path) or the element/item being mapped.
  String code;

  //  Extensions for code
  Element elementCode;

  //  The display for the code. The display is only provided to help editors
  // when editing the concept map.
  String display;

  //  Extensions for display
  Element elementDisplay;

  //  A concept from the target value set that this concept maps to.
  List<ConceptMap_Target> target;

ConceptMap_Element(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.display,
    this.elementDisplay,
    this.target
    });

  factory ConceptMap_Element.fromJson(Map<String, dynamic> json) => _$ConceptMap_ElementFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_ElementToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConceptMap_Target {

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

  //  Identity (code or path) or the element/item that the map refers to.
  String code;

  //  Extensions for code
  Element elementCode;

  //  The display for the code. The display is only provided to help editors
  // when editing the concept map.
  String display;

  //  Extensions for display
  Element elementDisplay;

  //  The equivalence between the source and target concepts (counting for
  // the dependencies and products). The equivalence is read from target to
  // source (e.g. the target is 'wider' than the source).
  String equivalence; // <code> enum: relatedto/equivalent/equal/wider/subsumes/narrower/specializes/inexact/unmatched/disjoint;

  //  Extensions for equivalence
  Element elementEquivalence;

  //  A description of status/issues in mapping that conveys additional
  // information not represented in  the structured data.
  String comment;

  //  Extensions for comment
  Element elementComment;

  //  A set of additional dependencies for this mapping to hold. This
  // mapping is only applicable if the specified element can be resolved,
  // and it has the specified value.
  List<ConceptMap_DependsOn> dependsOn;

  //  A set of additional outcomes from this mapping to other elements. To
  // properly execute this mapping, the specified element must be mapped to
  // some data element or source that is in context. The mapping may still
  // be useful without a place for the additional data elements, but the
  // equivalence cannot be relied on.
  List<ConceptMap_DependsOn> product;

ConceptMap_Target(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.display,
    this.elementDisplay,
    this.equivalence,
    this.elementEquivalence,
    this.comment,
    this.elementComment,
    this.dependsOn,
    this.product
    });

  factory ConceptMap_Target.fromJson(Map<String, dynamic> json) => _$ConceptMap_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_TargetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConceptMap_DependsOn {

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

  //  A reference to an element that holds a coded value that corresponds to
  // a code system property. The idea is that the information model carries
  // an element somewhere that is labeled to correspond with a code system
  // property.
  String property;

  //  Extensions for property
  Element elementProperty;

  //  An absolute URI that identifies the code system of the dependency code
  // (if the source/dependency is a value set that crosses code systems).
  String system;

  //  Identity (code or path) or the element/item/ValueSet/text that the map
  // depends on / refers to.
  String value;

  //  Extensions for value
  Element elementValue;

  //  The display for the code. The display is only provided to help editors
  // when editing the concept map.
  String display;

  //  Extensions for display
  Element elementDisplay;

ConceptMap_DependsOn(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.property,
    this.elementProperty,
    this.system,
    this.value,
    this.elementValue,
    this.display,
    this.elementDisplay
    });

  factory ConceptMap_DependsOn.fromJson(Map<String, dynamic> json) => _$ConceptMap_DependsOnFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_DependsOnToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConceptMap_Unmapped {

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

  //  Defines which action to take if there is no match for the source
  // concept in the target system designated for the group. One of 3 actions
  // are possible: use the unmapped code (this is useful when doing a
  // mapping between versions, and only a few codes have changed), use a
  // fixed code (a default code), or alternatively, a reference to a
  // different concept map can be provided (by canonical URL).
  String mode; // <code> enum: provided/fixed/other-map;

  //  Extensions for mode
  Element elementMode;

  //  The fixed code to use when the mode = 'fixed'  - all unmapped codes
  // are mapped to a single fixed code.
  String code;

  //  Extensions for code
  Element elementCode;

  //  The display for the code. The display is only provided to help editors
  // when editing the concept map.
  String display;

  //  Extensions for display
  Element elementDisplay;

  //  The canonical reference to an additional ConceptMap resource instance
  // to use for mapping if this ConceptMap resource contains no matching
  // mapping for the source concept.
  String url;

ConceptMap_Unmapped(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.elementMode,
    this.code,
    this.elementCode,
    this.display,
    this.elementDisplay,
    this.url
    });

  factory ConceptMap_Unmapped.fromJson(Map<String, dynamic> json) => _$ConceptMap_UnmappedFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_UnmappedToJson(this);
}
