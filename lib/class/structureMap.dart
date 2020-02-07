import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/dosage.dart';
import 'package:flutter_fhir/class/triggerDefinition.dart';
import 'package:flutter_fhir/class/relatedArtifact.dart';
import 'package:flutter_fhir/class/parameterDefinition.dart';
import 'package:flutter_fhir/class/expression.dart';
import 'package:flutter_fhir/class/dataRequirement.dart';
import 'package:flutter_fhir/class/contributor.dart';
import 'package:flutter_fhir/class/timing.dart';
import 'package:flutter_fhir/class/signature.dart';
import 'package:flutter_fhir/class/sampledData.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/money.dart';
import 'package:flutter_fhir/class/humanName.dart';
import 'package:flutter_fhir/class/duration.dart';
import 'package:flutter_fhir/class/distance.dart';
import 'package:flutter_fhir/class/count.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/age.dart';
import 'package:flutter_fhir/class/address.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/usageContext.dart';
import 'package:flutter_fhir/class/contactDetail.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'structureMap.g.dart';

@JsonSerializable(explicitToJson: true)
class StructureMap {

  //  This is a StructureMap resource
  final String resourceType= 'StructureMap';

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

  //  An absolute URI that is used to identify this structure map when it is
  // referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this structure map is (or will be) published. This URL can be the
  // target of a canonical reference. It SHALL remain the same when the
  // structure map is stored on different servers.
  String url;

  //  Extensions for url
  Element elementUrl;

  //  A formal identifier that is used to identify this structure map when
  // it is represented in other formats, or referenced in a specification,
  // model, design or an instance.
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the structure
  // map when it is referenced in a specification, model, design or
  // instance. This is an arbitrary value managed by the structure map
  // author and is not expected to be globally unique. For example, it might
  // be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  // There is also no expectation that versions can be placed in a
  // lexicographical sequence.
  String version;

  //  Extensions for version
  Element elementVersion;

  //  A natural language name identifying the structure map. This name
  // should be usable as an identifier for the module by machine processing
  // applications such as code generation.
  String name;

  //  Extensions for name
  Element elementName;

  //  A short, descriptive, user-friendly title for the structure map.
  String title;

  //  Extensions for title
  Element elementTitle;

  //  The status of this structure map. Enables tracking the life-cycle of
  // the content.
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  Element elementStatus;

  //  A Boolean value to indicate that this structure map is authored for
  // testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  bool experimental;

  //  Extensions for experimental
  Element elementExperimental;

  //  The date  (and optionally time) when the structure map was published.
  // The date must change when the business version changes and it must
  // change if the status code changes. In addition, it should change when
  // the substantive content of the structure map changes.
  DateTime date;

  //  Extensions for date
  Element elementDate;

  //  The name of the organization or individual that published the
  // structure map.
  String publisher;

  //  Extensions for publisher
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  List<ContactDetail> contact;

  //  A free text natural language description of the structure map from a
  // consumer's perspective.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate structure map instances.
  List<UsageContext> useContext;

  //  A legal or geographic region in which the structure map is intended to
  // be used.
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this structure map is needed and why it has been
  // designed as it has.
  String purpose;

  //  Extensions for purpose
  Element elementPurpose;

  //  A copyright statement relating to the structure map and/or its
  // contents. Copyright statements are generally legal restrictions on the
  // use and publishing of the structure map.
  String copyright;

  //  Extensions for copyright
  Element elementCopyright;

  //  A structure definition used by this map. The structure definition may
  // describe instances that are converted, or the instances that are
  // produced.
  List<StructureMap_Structure> structure;

  //  Other maps used by this map (canonical URLs).
  List<String> import;

  //  Organizes the mapping into manageable chunks for human review/ease of
  // maintenance.
  List<StructureMap_Group> group;

StructureMap(
  this.group,
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
    this.structure,
    this.import
    });

  factory StructureMap.fromJson(Map<String, dynamic> json) => _$StructureMapFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMapToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureMap_Structure {

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

  //  The canonical reference to the structure.
  String url;

  //  How the referenced structure is used in this mapping.
  String mode; // <code> enum: source/queried/target/produced;

  //  Extensions for mode
  Element elementMode;

  //  The name used for this type in the map.
  String alias;

  //  Extensions for alias
  Element elementAlias;

  //  Documentation that describes how the structure is used in the mapping.
  String documentation;

  //  Extensions for documentation
  Element elementDocumentation;

StructureMap_Structure(
  this.url,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.elementMode,
    this.alias,
    this.elementAlias,
    this.documentation,
    this.elementDocumentation
    });

  factory StructureMap_Structure.fromJson(Map<String, dynamic> json) => _$StructureMap_StructureFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_StructureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureMap_Group {

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

  //  A unique name for the group for the convenience of human readers.
  String name;

  //  Extensions for name
  Element elementName;

  //  Another group that this group adds rules to.
  String extend;

  //  Extensions for extends
  Element elementExtends;

  //  If this is the default rule set to apply for the source type or this
  // combination of types.
  String typeMode; // <code> enum: none/types/type-and-types;

  //  Extensions for typeMode
  Element elementTypeMode;

  //  Additional supporting documentation that explains the purpose of the
  // group and the types of mappings within it.
  String documentation;

  //  Extensions for documentation
  Element elementDocumentation;

  //  A name assigned to an instance of data. The instance must be provided
  // when the mapping is invoked.
  List<StructureMap_Input> input;

  //  Transform Rule from source to target.
  List<StructureMap_Rule> rule;

StructureMap_Group(
  this.input,
    this.rule,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.extend,
    this.elementExtends,
    this.typeMode,
    this.elementTypeMode,
    this.documentation,
    this.elementDocumentation
    });

  factory StructureMap_Group.fromJson(Map<String, dynamic> json) => _$StructureMap_GroupFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureMap_Input {

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

  //  Name for this instance of data.
  String name;

  //  Extensions for name
  Element elementName;

  //  Type for this instance of data.
  String type;

  //  Extensions for type
  Element elementType;

  //  Mode for this instance of data.
  String mode; // <code> enum: source/target;

  //  Extensions for mode
  Element elementMode;

  //  Documentation for this instance of data.
  String documentation;

  //  Extensions for documentation
  Element elementDocumentation;

StructureMap_Input(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.type,
    this.elementType,
    this.mode,
    this.elementMode,
    this.documentation,
    this.elementDocumentation
    });

  factory StructureMap_Input.fromJson(Map<String, dynamic> json) => _$StructureMap_InputFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_InputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureMap_Rule {

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

  //  Name of the rule for internal references.
  String name;

  //  Extensions for name
  Element elementName;

  //  Source inputs to the mapping.
  List<StructureMap_Source> source;

  //  Content to create because of this mapping rule.
  List<StructureMap_Target> target;

  //  Rules contained in this rule.
  List<StructureMap_Rule> rule;

  //  Which other rules to apply in the context of this rule.
  List<StructureMap_Dependent> dependent;

  //  Documentation for this instance of data.
  String documentation;

  //  Extensions for documentation
  Element elementDocumentation;

StructureMap_Rule(
  this.source,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.target,
    this.rule,
    this.dependent,
    this.documentation,
    this.elementDocumentation
    });

  factory StructureMap_Rule.fromJson(Map<String, dynamic> json) => _$StructureMap_RuleFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_RuleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureMap_Source {

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

  //  Type or variable this rule applies to.
  String context;

  //  Extensions for context
  Element elementContext;

  //  Specified minimum cardinality for the element. This is optional; if
  // present, it acts an implicit check on the input content.
  int min;

  //  Extensions for min
  Element elementMin;

  //  Specified maximum cardinality for the element - a number or a "*".
  // This is optional; if present, it acts an implicit check on the input
  // content (* just serves as documentation; it's the default value).
  String max;

  //  Extensions for max
  Element elementMax;

  //  Specified type for the element. This works as a condition on the
  // mapping - use for polymorphic elements.
  String type;

  //  Extensions for type
  Element elementType;

  //  A value to use if there is no existing value in the source object.
  String defaultValueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

  //  Extensions for defaultValueBase64Binary
  Element elementDefaultValueBase64Binary;

  //  A value to use if there is no existing value in the source object.
  bool defaultValueBoolean; //  pattern: ^true|false$

  //  Extensions for defaultValueBoolean
  Element elementDefaultValueBoolean;

  //  A value to use if there is no existing value in the source object.
  String defaultValueCanonical; //  pattern: ^\S*$

  //  Extensions for defaultValueCanonical
  Element elementDefaultValueCanonical;

  //  A value to use if there is no existing value in the source object.
  String defaultValueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

  //  Extensions for defaultValueCode
  Element elementDefaultValueCode;

  //  A value to use if there is no existing value in the source object.
  String defaultValueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for defaultValueDate
  Element elementDefaultValueDate;

  //  A value to use if there is no existing value in the source object.
  String defaultValueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for defaultValueDateTime
  Element elementDefaultValueDateTime;

  //  A value to use if there is no existing value in the source object.
  double defaultValueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for defaultValueDecimal
  Element elementDefaultValueDecimal;

  //  A value to use if there is no existing value in the source object.
  String defaultValueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

  //  Extensions for defaultValueId
  Element elementDefaultValueId;

  //  A value to use if there is no existing value in the source object.
  String defaultValueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for defaultValueInstant
  Element elementDefaultValueInstant;

  //  A value to use if there is no existing value in the source object.
  int defaultValueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for defaultValueInteger
  Element elementDefaultValueInteger;

  //  A value to use if there is no existing value in the source object.
  String defaultValueMarkdown; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for defaultValueMarkdown
  Element elementDefaultValueMarkdown;

  //  A value to use if there is no existing value in the source object.
  String defaultValueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

  //  Extensions for defaultValueOid
  Element elementDefaultValueOid;

  //  A value to use if there is no existing value in the source object.
  int defaultValuePositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for defaultValuePositiveInt
  Element elementDefaultValuePositiveInt;

  //  A value to use if there is no existing value in the source object.
  String defaultValueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for defaultValueString
  Element elementDefaultValueString;

  //  A value to use if there is no existing value in the source object.
  String defaultValueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for defaultValueTime
  Element elementDefaultValueTime;

  //  A value to use if there is no existing value in the source object.
  int defaultValueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for defaultValueUnsignedInt
  Element elementDefaultValueUnsignedInt;

  //  A value to use if there is no existing value in the source object.
  String defaultValueUri; //  pattern: ^\S*$

  //  Extensions for defaultValueUri
  Element elementDefaultValueUri;

  //  A value to use if there is no existing value in the source object.
  String defaultValueUrl; //  pattern: ^\S*$

  //  Extensions for defaultValueUrl
  Element elementDefaultValueUrl;

  //  A value to use if there is no existing value in the source object.
  String defaultValueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

  //  Extensions for defaultValueUuid
  Element elementDefaultValueUuid;

  //  A value to use if there is no existing value in the source object.
  Address defaultValueAddress;

  //  A value to use if there is no existing value in the source object.
  Age defaultValueAge;

  //  A value to use if there is no existing value in the source object.
  Annotation defaultValueAnnotation;

  //  A value to use if there is no existing value in the source object.
  Attachment defaultValueAttachment;

  //  A value to use if there is no existing value in the source object.
  CodeableConcept defaultValueCodeableConcept;

  //  A value to use if there is no existing value in the source object.
  Coding defaultValueCoding;

  //  A value to use if there is no existing value in the source object.
  ContactPoint defaultValueContactPoint;

  //  A value to use if there is no existing value in the source object.
  Count defaultValueCount;

  //  A value to use if there is no existing value in the source object.
  Distance defaultValueDistance;

  //  A value to use if there is no existing value in the source object.
  Duration defaultValueDuration;

  //  A value to use if there is no existing value in the source object.
  HumanName defaultValueHumanName;

  //  A value to use if there is no existing value in the source object.
  Identifier defaultValueIdentifier;

  //  A value to use if there is no existing value in the source object.
  Money defaultValueMoney;

  //  A value to use if there is no existing value in the source object.
  Period defaultValuePeriod;

  //  A value to use if there is no existing value in the source object.
  Quantity defaultValueQuantity;

  //  A value to use if there is no existing value in the source object.
  Range defaultValueRange;

  //  A value to use if there is no existing value in the source object.
  Ratio defaultValueRatio;

  //  A value to use if there is no existing value in the source object.
  Reference defaultValueReference;

  //  A value to use if there is no existing value in the source object.
  SampledData defaultValueSampledData;

  //  A value to use if there is no existing value in the source object.
  Signature defaultValueSignature;

  //  A value to use if there is no existing value in the source object.
  Timing defaultValueTiming;

  //  A value to use if there is no existing value in the source object.
  ContactDetail defaultValueContactDetail;

  //  A value to use if there is no existing value in the source object.
  Contributor defaultValueContributor;

  //  A value to use if there is no existing value in the source object.
  DataRequirement defaultValueDataRequirement;

  //  A value to use if there is no existing value in the source object.
  Expression defaultValueExpression;

  //  A value to use if there is no existing value in the source object.
  ParameterDefinition defaultValueParameterDefinition;

  //  A value to use if there is no existing value in the source object.
  RelatedArtifact defaultValueRelatedArtifact;

  //  A value to use if there is no existing value in the source object.
  TriggerDefinition defaultValueTriggerDefinition;

  //  A value to use if there is no existing value in the source object.
  UsageContext defaultValueUsageContext;

  //  A value to use if there is no existing value in the source object.
  Dosage defaultValueDosage;

  //  A value to use if there is no existing value in the source object.
  Meta defaultValueMeta;

  //  Optional field for this source.
  String element;

  //  Extensions for element
  Element elementElement;

  //  How to handle the list mode for this element.
  String listMode; // <code> enum: first/not_first/last/not_last/only_one;

  //  Extensions for listMode
  Element elementListMode;

  //  Named context for field, if a field is specified.
  String variable;

  //  Extensions for variable
  Element elementVariable;

  //  FHIRPath expression  - must be true or the rule does not apply.
  String condition;

  //  Extensions for condition
  Element elementCondition;

  //  FHIRPath expression  - must be true or the mapping engine throws an
  // error instead of completing.
  String check;

  //  Extensions for check
  Element elementCheck;

  //  A FHIRPath expression which specifies a message to put in the
  // transform log when content matching the source rule is found.
  String logMessage;

  //  Extensions for logMessage
  Element elementLogMessage;

StructureMap_Source(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.context,
    this.elementContext,
    this.min,
    this.elementMin,
    this.max,
    this.elementMax,
    this.type,
    this.elementType,
    this.defaultValueBase64Binary,
    this.elementDefaultValueBase64Binary,
    this.defaultValueBoolean,
    this.elementDefaultValueBoolean,
    this.defaultValueCanonical,
    this.elementDefaultValueCanonical,
    this.defaultValueCode,
    this.elementDefaultValueCode,
    this.defaultValueDate,
    this.elementDefaultValueDate,
    this.defaultValueDateTime,
    this.elementDefaultValueDateTime,
    this.defaultValueDecimal,
    this.elementDefaultValueDecimal,
    this.defaultValueId,
    this.elementDefaultValueId,
    this.defaultValueInstant,
    this.elementDefaultValueInstant,
    this.defaultValueInteger,
    this.elementDefaultValueInteger,
    this.defaultValueMarkdown,
    this.elementDefaultValueMarkdown,
    this.defaultValueOid,
    this.elementDefaultValueOid,
    this.defaultValuePositiveInt,
    this.elementDefaultValuePositiveInt,
    this.defaultValueString,
    this.elementDefaultValueString,
    this.defaultValueTime,
    this.elementDefaultValueTime,
    this.defaultValueUnsignedInt,
    this.elementDefaultValueUnsignedInt,
    this.defaultValueUri,
    this.elementDefaultValueUri,
    this.defaultValueUrl,
    this.elementDefaultValueUrl,
    this.defaultValueUuid,
    this.elementDefaultValueUuid,
    this.defaultValueAddress,
    this.defaultValueAge,
    this.defaultValueAnnotation,
    this.defaultValueAttachment,
    this.defaultValueCodeableConcept,
    this.defaultValueCoding,
    this.defaultValueContactPoint,
    this.defaultValueCount,
    this.defaultValueDistance,
    this.defaultValueDuration,
    this.defaultValueHumanName,
    this.defaultValueIdentifier,
    this.defaultValueMoney,
    this.defaultValuePeriod,
    this.defaultValueQuantity,
    this.defaultValueRange,
    this.defaultValueRatio,
    this.defaultValueReference,
    this.defaultValueSampledData,
    this.defaultValueSignature,
    this.defaultValueTiming,
    this.defaultValueContactDetail,
    this.defaultValueContributor,
    this.defaultValueDataRequirement,
    this.defaultValueExpression,
    this.defaultValueParameterDefinition,
    this.defaultValueRelatedArtifact,
    this.defaultValueTriggerDefinition,
    this.defaultValueUsageContext,
    this.defaultValueDosage,
    this.defaultValueMeta,
    this.element,
    this.elementElement,
    this.listMode,
    this.elementListMode,
    this.variable,
    this.elementVariable,
    this.condition,
    this.elementCondition,
    this.check,
    this.elementCheck,
    this.logMessage,
    this.elementLogMessage
    });

  factory StructureMap_Source.fromJson(Map<String, dynamic> json) => _$StructureMap_SourceFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_SourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureMap_Target {

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

  //  Type or variable this rule applies to.
  String context;

  //  Extensions for context
  Element elementContext;

  //  How to interpret the context.
  String contextType; // <code> enum: type/variable;

  //  Extensions for contextType
  Element elementContextType;

  //  Field to create in the context.
  String element;

  //  Extensions for element
  Element elementElement;

  //  Named context for field, if desired, and a field is specified.
  String variable;

  //  Extensions for variable
  Element elementVariable;

  //  If field is a list, how to manage the list.
  List<String> listMode; // <code> enum: first/share/last/collate> listMode;

  //  Extensions for listMode
  List<Element> elementListMode;

  //  Internal rule reference for shared list items.
  String listRuleId;

  //  Extensions for listRuleId
  Element elementListRuleId;

  //  How the data is copied / created.
  String transform; // <code> enum: create/copy/truncate/escape/cast/append/translate/reference/dateOp/uuid/pointer/evaluate/cc/c/qty/id/cp;

  //  Extensions for transform
  Element elementTransform;

  //  Parameters to the transform.
  List<StructureMap_Parameter> parameter;

StructureMap_Target(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.context,
    this.elementContext,
    this.contextType,
    this.elementContextType,
    this.element,
    this.elementElement,
    this.variable,
    this.elementVariable,
    this.listMode,
    this.elementListMode,
    this.listRuleId,
    this.elementListRuleId,
    this.transform,
    this.elementTransform,
    this.parameter
    });

  factory StructureMap_Target.fromJson(Map<String, dynamic> json) => _$StructureMap_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_TargetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureMap_Parameter {

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

  //  Parameter value - variable or literal.
  String valueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

  //  Extensions for valueId
  Element elementValueId;

  //  Parameter value - variable or literal.
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  Element elementValueString;

  //  Parameter value - variable or literal.
  bool valueBoolean; //  pattern: ^true|false$

  //  Extensions for valueBoolean
  Element elementValueBoolean;

  //  Parameter value - variable or literal.
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for valueInteger
  Element elementValueInteger;

  //  Parameter value - variable or literal.
  double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for valueDecimal
  Element elementValueDecimal;

StructureMap_Parameter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.valueId,
    this.elementValueId,
    this.valueString,
    this.elementValueString,
    this.valueBoolean,
    this.elementValueBoolean,
    this.valueInteger,
    this.elementValueInteger,
    this.valueDecimal,
    this.elementValueDecimal
    });

  factory StructureMap_Parameter.fromJson(Map<String, dynamic> json) => _$StructureMap_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_ParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureMap_Dependent {

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

  //  Name of a rule or group to apply.
  String name;

  //  Extensions for name
  Element elementName;

  //  Variable to pass to the rule or group.
  List<String> variable;

  //  Extensions for variable
  List<Element> elementVariable;

StructureMap_Dependent(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.variable,
    this.elementVariable
    });

  factory StructureMap_Dependent.fromJson(Map<String, dynamic> json) => _$StructureMap_DependentFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_DependentToJson(this);
}

