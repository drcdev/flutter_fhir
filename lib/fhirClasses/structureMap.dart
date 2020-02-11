import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/dosage.dart';
import 'package:flutter_fhir/fhirClasses/triggerDefinition.dart';
import 'package:flutter_fhir/fhirClasses/relatedArtifact.dart';
import 'package:flutter_fhir/fhirClasses/parameterDefinition.dart';
import 'package:flutter_fhir/fhirClasses/expression.dart';
import 'package:flutter_fhir/fhirClasses/dataRequirement.dart';
import 'package:flutter_fhir/fhirClasses/contributor.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/signature.dart';
import 'package:flutter_fhir/fhirClasses/sampledData.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/humanName.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/distance.dart';
import 'package:flutter_fhir/fhirClasses/count.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 547)
class StructureMap {

  //  This is a StructureMap resource
  @HiveField(0)
  final String resourceType= 'StructureMap';

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

  //  An absolute URI that is used to identify this structure map when it is
  // referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this structure map is (or will be) published. This URL can be the
  // target of a canonical reference. It SHALL remain the same when the
  // structure map is stored on different servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  A formal identifier that is used to identify this structure map when
  // it is represented in other formats, or referenced in a specification,
  // model, design or an instance.
  @HiveField(13)
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the structure
  // map when it is referenced in a specification, model, design or
  // instance. This is an arbitrary value managed by the structure map
  // author and is not expected to be globally unique. For example, it might
  // be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  // There is also no expectation that versions can be placed in a
  // lexicographical sequence.
  @HiveField(14)
  String version;

  //  Extensions for version
  @HiveField(15)
  Element elementVersion;

  //  A natural language name identifying the structure map. This name
  // should be usable as an identifier for the module by machine processing
  // applications such as code generation.
  @HiveField(16)
  String name;

  //  Extensions for name
  @HiveField(17)
  Element elementName;

  //  A short, descriptive, user-friendly title for the structure map.
  @HiveField(18)
  String title;

  //  Extensions for title
  @HiveField(19)
  Element elementTitle;

  //  The status of this structure map. Enables tracking the life-cycle of
  // the content.
  @HiveField(20)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(21)
  Element elementStatus;

  //  A Boolean value to indicate that this structure map is authored for
  // testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  @HiveField(22)
  bool experimental;

  //  Extensions for experimental
  @HiveField(23)
  Element elementExperimental;

  //  The date  (and optionally time) when the structure map was published.
  // The date must change when the business version changes and it must
  // change if the status code changes. In addition, it should change when
  // the substantive content of the structure map changes.
  @HiveField(24)
  DateTime date;

  //  Extensions for date
  @HiveField(25)
  Element elementDate;

  //  The name of the organization or individual that published the
  // structure map.
  @HiveField(26)
  String publisher;

  //  Extensions for publisher
  @HiveField(27)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(28)
  List<ContactDetail> contact;

  //  A free text natural language description of the structure map from a
  // consumer's perspective.
  @HiveField(29)
  String description;

  //  Extensions for description
  @HiveField(30)
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate structure map instances.
  @HiveField(31)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the structure map is intended to
  // be used.
  @HiveField(32)
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this structure map is needed and why it has been
  // designed as it has.
  @HiveField(33)
  String purpose;

  //  Extensions for purpose
  @HiveField(34)
  Element elementPurpose;

  //  A copyright statement relating to the structure map and/or its
  // contents. Copyright statements are generally legal restrictions on the
  // use and publishing of the structure map.
  @HiveField(35)
  String copyright;

  //  Extensions for copyright
  @HiveField(36)
  Element elementCopyright;

  //  A structure definition used by this map. The structure definition may
  // describe instances that are converted, or the instances that are
  // produced.
  @HiveField(37)
  List<StructureMap_Structure> structure;

  //  Other maps used by this map (canonical URLs).
  @HiveField(38)
  List<String> import;

  //  Organizes the mapping into manageable chunks for human review/ease of
  // maintenance.
  @HiveField(39)
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
@HiveType(typeId: 548)
class StructureMap_Structure {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The canonical reference to the structure.
  @HiveField(3)
  String url;

  //  How the referenced structure is used in this mapping.
  @HiveField(4)
  String mode; // <code> enum: source/queried/target/produced;

  //  Extensions for mode
  @HiveField(5)
  Element elementMode;

  //  The name used for this type in the map.
  @HiveField(6)
  String alias;

  //  Extensions for alias
  @HiveField(7)
  Element elementAlias;

  //  Documentation that describes how the structure is used in the mapping.
  @HiveField(8)
  String documentation;

  //  Extensions for documentation
  @HiveField(9)
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
@HiveType(typeId: 549)
class StructureMap_Group {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A unique name for the group for the convenience of human readers.
  @HiveField(3)
  String name;

  //  Extensions for name
  @HiveField(4)
  Element elementName;

  //  Another group that this group adds rules to.
  @HiveField(5)
  String extend;

  //  Extensions for extends
  @HiveField(6)
  Element elementExtends;

  //  If this is the default rule set to apply for the source type or this
  // combination of types.
  @HiveField(7)
  String typeMode; // <code> enum: none/types/type-and-types;

  //  Extensions for typeMode
  @HiveField(8)
  Element elementTypeMode;

  //  Additional supporting documentation that explains the purpose of the
  // group and the types of mappings within it.
  @HiveField(9)
  String documentation;

  //  Extensions for documentation
  @HiveField(10)
  Element elementDocumentation;

  //  A name assigned to an instance of data. The instance must be provided
  // when the mapping is invoked.
  @HiveField(11)
  List<StructureMap_Input> input;

  //  Transform Rule from source to target.
  @HiveField(12)
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
@HiveType(typeId: 550)
class StructureMap_Input {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Name for this instance of data.
  @HiveField(3)
  String name;

  //  Extensions for name
  @HiveField(4)
  Element elementName;

  //  Type for this instance of data.
  @HiveField(5)
  String type;

  //  Extensions for type
  @HiveField(6)
  Element elementType;

  //  Mode for this instance of data.
  @HiveField(7)
  String mode; // <code> enum: source/target;

  //  Extensions for mode
  @HiveField(8)
  Element elementMode;

  //  Documentation for this instance of data.
  @HiveField(9)
  String documentation;

  //  Extensions for documentation
  @HiveField(10)
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
@HiveType(typeId: 551)
class StructureMap_Rule {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Name of the rule for internal references.
  @HiveField(3)
  String name;

  //  Extensions for name
  @HiveField(4)
  Element elementName;

  //  Source inputs to the mapping.
  @HiveField(5)
  List<StructureMap_Source> source;

  //  Content to create because of this mapping rule.
  @HiveField(6)
  List<StructureMap_Target> target;

  //  Rules contained in this rule.
  @HiveField(7)
  List<StructureMap_Rule> rule;

  //  Which other rules to apply in the context of this rule.
  @HiveField(8)
  List<StructureMap_Dependent> dependent;

  //  Documentation for this instance of data.
  @HiveField(9)
  String documentation;

  //  Extensions for documentation
  @HiveField(10)
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
@HiveType(typeId: 552)
class StructureMap_Source {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Type or variable this rule applies to.
  @HiveField(3)
  String context;

  //  Extensions for context
  @HiveField(4)
  Element elementContext;

  //  Specified minimum cardinality for the element. This is optional; if
  // present, it acts an implicit check on the input content.
  @HiveField(5)
  int min;

  //  Extensions for min
  @HiveField(6)
  Element elementMin;

  //  Specified maximum cardinality for the element - a number or a "*".
  // This is optional; if present, it acts an implicit check on the input
  // content (* just serves as documentation; it's the default value).
  @HiveField(7)
  String max;

  //  Extensions for max
  @HiveField(8)
  Element elementMax;

  //  Specified type for the element. This works as a condition on the
  // mapping - use for polymorphic elements.
  @HiveField(9)
  String type;

  //  Extensions for type
  @HiveField(10)
  Element elementType;

  //  A value to use if there is no existing value in the source object.
  @HiveField(11)
  String defaultValueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

  //  Extensions for defaultValueBase64Binary
  @HiveField(12)
  Element elementDefaultValueBase64Binary;

  //  A value to use if there is no existing value in the source object.
  @HiveField(13)
  bool defaultValueBoolean; //  pattern: ^true|false$

  //  Extensions for defaultValueBoolean
  @HiveField(14)
  Element elementDefaultValueBoolean;

  //  A value to use if there is no existing value in the source object.
  @HiveField(15)
  String defaultValueCanonical; //  pattern: ^\S*$

  //  Extensions for defaultValueCanonical
  @HiveField(16)
  Element elementDefaultValueCanonical;

  //  A value to use if there is no existing value in the source object.
  @HiveField(17)
  String defaultValueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

  //  Extensions for defaultValueCode
  @HiveField(18)
  Element elementDefaultValueCode;

  //  A value to use if there is no existing value in the source object.
  @HiveField(19)
  String defaultValueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for defaultValueDate
  @HiveField(20)
  Element elementDefaultValueDate;

  //  A value to use if there is no existing value in the source object.
  @HiveField(21)
  String defaultValueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for defaultValueDateTime
  @HiveField(22)
  Element elementDefaultValueDateTime;

  //  A value to use if there is no existing value in the source object.
  double defaultValueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for defaultValueDecimal
  @HiveField(24)
  Element elementDefaultValueDecimal;

  //  A value to use if there is no existing value in the source object.
  @HiveField(25)
  String defaultValueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

  //  Extensions for defaultValueId
  @HiveField(26)
  Element elementDefaultValueId;

  //  A value to use if there is no existing value in the source object.
  @HiveField(27)
  String defaultValueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for defaultValueInstant
  @HiveField(28)
  Element elementDefaultValueInstant;

  //  A value to use if there is no existing value in the source object.
  int defaultValueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for defaultValueInteger
  @HiveField(30)
  Element elementDefaultValueInteger;

  //  A value to use if there is no existing value in the source object.
  @HiveField(31)
  String defaultValueMarkdown; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for defaultValueMarkdown
  @HiveField(32)
  Element elementDefaultValueMarkdown;

  //  A value to use if there is no existing value in the source object.
  @HiveField(33)
  String defaultValueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

  //  Extensions for defaultValueOid
  @HiveField(34)
  Element elementDefaultValueOid;

  //  A value to use if there is no existing value in the source object.
  int defaultValuePositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for defaultValuePositiveInt
  @HiveField(36)
  Element elementDefaultValuePositiveInt;

  //  A value to use if there is no existing value in the source object.
  @HiveField(37)
  String defaultValueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for defaultValueString
  @HiveField(38)
  Element elementDefaultValueString;

  //  A value to use if there is no existing value in the source object.
  @HiveField(39)
  String defaultValueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for defaultValueTime
  @HiveField(40)
  Element elementDefaultValueTime;

  //  A value to use if there is no existing value in the source object.
  int defaultValueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for defaultValueUnsignedInt
  @HiveField(42)
  Element elementDefaultValueUnsignedInt;

  //  A value to use if there is no existing value in the source object.
  @HiveField(43)
  String defaultValueUri; //  pattern: ^\S*$

  //  Extensions for defaultValueUri
  @HiveField(44)
  Element elementDefaultValueUri;

  //  A value to use if there is no existing value in the source object.
  @HiveField(45)
  String defaultValueUrl; //  pattern: ^\S*$

  //  Extensions for defaultValueUrl
  @HiveField(46)
  Element elementDefaultValueUrl;

  //  A value to use if there is no existing value in the source object.
  @HiveField(47)
  String defaultValueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

  //  Extensions for defaultValueUuid
  @HiveField(48)
  Element elementDefaultValueUuid;

  //  A value to use if there is no existing value in the source object.
  @HiveField(49)
  Address defaultValueAddress;

  //  A value to use if there is no existing value in the source object.
  @HiveField(50)
  Age defaultValueAge;

  //  A value to use if there is no existing value in the source object.
  @HiveField(51)
  Annotation defaultValueAnnotation;

  //  A value to use if there is no existing value in the source object.
  @HiveField(52)
  Attachment defaultValueAttachment;

  //  A value to use if there is no existing value in the source object.
  @HiveField(53)
  CodeableConcept defaultValueCodeableConcept;

  //  A value to use if there is no existing value in the source object.
  @HiveField(54)
  Coding defaultValueCoding;

  //  A value to use if there is no existing value in the source object.
  @HiveField(55)
  ContactPoint defaultValueContactPoint;

  //  A value to use if there is no existing value in the source object.
  @HiveField(56)
  Count defaultValueCount;

  //  A value to use if there is no existing value in the source object.
  @HiveField(57)
  Distance defaultValueDistance;

  //  A value to use if there is no existing value in the source object.
  @HiveField(58)
  Duration defaultValueDuration;

  //  A value to use if there is no existing value in the source object.
  @HiveField(59)
  HumanName defaultValueHumanName;

  //  A value to use if there is no existing value in the source object.
  @HiveField(60)
  Identifier defaultValueIdentifier;

  //  A value to use if there is no existing value in the source object.
  @HiveField(61)
  Money defaultValueMoney;

  //  A value to use if there is no existing value in the source object.
  @HiveField(62)
  Period defaultValuePeriod;

  //  A value to use if there is no existing value in the source object.
  @HiveField(63)
  Quantity defaultValueQuantity;

  //  A value to use if there is no existing value in the source object.
  @HiveField(64)
  Range defaultValueRange;

  //  A value to use if there is no existing value in the source object.
  @HiveField(65)
  Ratio defaultValueRatio;

  //  A value to use if there is no existing value in the source object.
  @HiveField(66)
  Reference defaultValueReference;

  //  A value to use if there is no existing value in the source object.
  @HiveField(67)
  SampledData defaultValueSampledData;

  //  A value to use if there is no existing value in the source object.
  @HiveField(68)
  Signature defaultValueSignature;

  //  A value to use if there is no existing value in the source object.
  @HiveField(69)
  Timing defaultValueTiming;

  //  A value to use if there is no existing value in the source object.
  @HiveField(70)
  ContactDetail defaultValueContactDetail;

  //  A value to use if there is no existing value in the source object.
  @HiveField(71)
  Contributor defaultValueContributor;

  //  A value to use if there is no existing value in the source object.
  @HiveField(72)
  DataRequirement defaultValueDataRequirement;

  //  A value to use if there is no existing value in the source object.
  @HiveField(73)
  Expression defaultValueExpression;

  //  A value to use if there is no existing value in the source object.
  @HiveField(74)
  ParameterDefinition defaultValueParameterDefinition;

  //  A value to use if there is no existing value in the source object.
  @HiveField(75)
  RelatedArtifact defaultValueRelatedArtifact;

  //  A value to use if there is no existing value in the source object.
  @HiveField(76)
  TriggerDefinition defaultValueTriggerDefinition;

  //  A value to use if there is no existing value in the source object.
  @HiveField(77)
  UsageContext defaultValueUsageContext;

  //  A value to use if there is no existing value in the source object.
  @HiveField(78)
  Dosage defaultValueDosage;

  //  A value to use if there is no existing value in the source object.
  @HiveField(79)
  Meta defaultValueMeta;

  //  Optional field for this source.
  @HiveField(80)
  String element;

  //  Extensions for element
  @HiveField(81)
  Element elementElement;

  //  How to handle the list mode for this element.
  @HiveField(82)
  String listMode; // <code> enum: first/not_first/last/not_last/only_one;

  //  Extensions for listMode
  @HiveField(83)
  Element elementListMode;

  //  Named context for field, if a field is specified.
  @HiveField(84)
  String variable;

  //  Extensions for variable
  @HiveField(85)
  Element elementVariable;

  //  FHIRPath expression  - must be true or the rule does not apply.
  @HiveField(86)
  String condition;

  //  Extensions for condition
  @HiveField(87)
  Element elementCondition;

  //  FHIRPath expression  - must be true or the mapping engine throws an
  // error instead of completing.
  @HiveField(88)
  String check;

  //  Extensions for check
  @HiveField(89)
  Element elementCheck;

  //  A FHIRPath expression which specifies a message to put in the
  // transform log when content matching the source rule is found.
  @HiveField(90)
  String logMessage;

  //  Extensions for logMessage
  @HiveField(91)
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
@HiveType(typeId: 553)
class StructureMap_Target {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Type or variable this rule applies to.
  @HiveField(3)
  String context;

  //  Extensions for context
  @HiveField(4)
  Element elementContext;

  //  How to interpret the context.
  @HiveField(5)
  String contextType; // <code> enum: type/variable;

  //  Extensions for contextType
  @HiveField(6)
  Element elementContextType;

  //  Field to create in the context.
  @HiveField(7)
  String element;

  //  Extensions for element
  @HiveField(8)
  Element elementElement;

  //  Named context for field, if desired, and a field is specified.
  @HiveField(9)
  String variable;

  //  Extensions for variable
  @HiveField(10)
  Element elementVariable;

  //  If field is a list, how to manage the list.
  @HiveField(11)
  List<String> listMode; // <code> enum: first/share/last/collate> listMode;

  //  Extensions for listMode
  @HiveField(12)
  List<Element> elementListMode;

  //  Internal rule reference for shared list items.
  @HiveField(13)
  String listRuleId;

  //  Extensions for listRuleId
  @HiveField(14)
  Element elementListRuleId;

  //  How the data is copied / created.
  @HiveField(15)
  String transform; // <code> enum: create/copy/truncate/escape/cast/append/translate/reference/dateOp/uuid/pointer/evaluate/cc/c/qty/id/cp;

  //  Extensions for transform
  @HiveField(16)
  Element elementTransform;

  //  Parameters to the transform.
  @HiveField(17)
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
@HiveType(typeId: 554)
class StructureMap_Parameter {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Parameter value - variable or literal.
  @HiveField(3)
  String valueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

  //  Extensions for valueId
  @HiveField(4)
  Element elementValueId;

  //  Parameter value - variable or literal.
  @HiveField(5)
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  @HiveField(6)
  Element elementValueString;

  //  Parameter value - variable or literal.
  @HiveField(7)
  bool valueBoolean; //  pattern: ^true|false$

  //  Extensions for valueBoolean
  @HiveField(8)
  Element elementValueBoolean;

  //  Parameter value - variable or literal.
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for valueInteger
  @HiveField(10)
  Element elementValueInteger;

  //  Parameter value - variable or literal.
  double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for valueDecimal
  @HiveField(12)
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
@HiveType(typeId: 555)
class StructureMap_Dependent {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Name of a rule or group to apply.
  @HiveField(3)
  String name;

  //  Extensions for name
  @HiveField(4)
  Element elementName;

  //  Variable to pass to the rule or group.
  @HiveField(5)
  List<String> variable;

  //  Extensions for variable
  @HiveField(6)
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


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StructureMapAdapter extends TypeAdapter<StructureMap> {
  @override
  final typeId = 547;

  @override
  StructureMap read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureMap(
      (fields[39] as List)?.cast<StructureMap_Group>(),
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
      url: fields[11] as String,
      elementUrl: fields[12] as Element,
      identifier: (fields[13] as List)?.cast<Identifier>(),
      version: fields[14] as String,
      elementVersion: fields[15] as Element,
      name: fields[16] as String,
      elementName: fields[17] as Element,
      title: fields[18] as String,
      elementTitle: fields[19] as Element,
      status: fields[20] as String,
      elementStatus: fields[21] as Element,
      experimental: fields[22] as bool,
      elementExperimental: fields[23] as Element,
      date: fields[24] as DateTime,
      elementDate: fields[25] as Element,
      publisher: fields[26] as String,
      elementPublisher: fields[27] as Element,
      contact: (fields[28] as List)?.cast<ContactDetail>(),
      description: fields[29] as String,
      elementDescription: fields[30] as Element,
      useContext: (fields[31] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[32] as List)?.cast<CodeableConcept>(),
      purpose: fields[33] as String,
      elementPurpose: fields[34] as Element,
      copyright: fields[35] as String,
      elementCopyright: fields[36] as Element,
      structure: (fields[37] as List)?.cast<StructureMap_Structure>(),
      import: (fields[38] as List)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, StructureMap obj) {
    writer
      ..writeByte(40)
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
      ..write(obj.url)
      ..writeByte(12)
      ..write(obj.elementUrl)
      ..writeByte(13)
      ..write(obj.identifier)
      ..writeByte(14)
      ..write(obj.version)
      ..writeByte(15)
      ..write(obj.elementVersion)
      ..writeByte(16)
      ..write(obj.name)
      ..writeByte(17)
      ..write(obj.elementName)
      ..writeByte(18)
      ..write(obj.title)
      ..writeByte(19)
      ..write(obj.elementTitle)
      ..writeByte(20)
      ..write(obj.status)
      ..writeByte(21)
      ..write(obj.elementStatus)
      ..writeByte(22)
      ..write(obj.experimental)
      ..writeByte(23)
      ..write(obj.elementExperimental)
      ..writeByte(24)
      ..write(obj.date)
      ..writeByte(25)
      ..write(obj.elementDate)
      ..writeByte(26)
      ..write(obj.publisher)
      ..writeByte(27)
      ..write(obj.elementPublisher)
      ..writeByte(28)
      ..write(obj.contact)
      ..writeByte(29)
      ..write(obj.description)
      ..writeByte(30)
      ..write(obj.elementDescription)
      ..writeByte(31)
      ..write(obj.useContext)
      ..writeByte(32)
      ..write(obj.jurisdiction)
      ..writeByte(33)
      ..write(obj.purpose)
      ..writeByte(34)
      ..write(obj.elementPurpose)
      ..writeByte(35)
      ..write(obj.copyright)
      ..writeByte(36)
      ..write(obj.elementCopyright)
      ..writeByte(37)
      ..write(obj.structure)
      ..writeByte(38)
      ..write(obj.import)
      ..writeByte(39)
      ..write(obj.group);
  }
}

class StructureMap_StructureAdapter
    extends TypeAdapter<StructureMap_Structure> {
  @override
  final typeId = 548;

  @override
  StructureMap_Structure read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureMap_Structure(
      fields[3] as String,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      mode: fields[4] as String,
      elementMode: fields[5] as Element,
      alias: fields[6] as String,
      elementAlias: fields[7] as Element,
      documentation: fields[8] as String,
      elementDocumentation: fields[9] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, StructureMap_Structure obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.url)
      ..writeByte(4)
      ..write(obj.mode)
      ..writeByte(5)
      ..write(obj.elementMode)
      ..writeByte(6)
      ..write(obj.alias)
      ..writeByte(7)
      ..write(obj.elementAlias)
      ..writeByte(8)
      ..write(obj.documentation)
      ..writeByte(9)
      ..write(obj.elementDocumentation);
  }
}

class StructureMap_GroupAdapter extends TypeAdapter<StructureMap_Group> {
  @override
  final typeId = 549;

  @override
  StructureMap_Group read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureMap_Group(
      (fields[11] as List)?.cast<StructureMap_Input>(),
      (fields[12] as List)?.cast<StructureMap_Rule>(),
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      extend: fields[5] as String,
      elementExtends: fields[6] as Element,
      typeMode: fields[7] as String,
      elementTypeMode: fields[8] as Element,
      documentation: fields[9] as String,
      elementDocumentation: fields[10] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, StructureMap_Group obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.elementName)
      ..writeByte(5)
      ..write(obj.extend)
      ..writeByte(6)
      ..write(obj.elementExtends)
      ..writeByte(7)
      ..write(obj.typeMode)
      ..writeByte(8)
      ..write(obj.elementTypeMode)
      ..writeByte(9)
      ..write(obj.documentation)
      ..writeByte(10)
      ..write(obj.elementDocumentation)
      ..writeByte(11)
      ..write(obj.input)
      ..writeByte(12)
      ..write(obj.rule);
  }
}

class StructureMap_InputAdapter extends TypeAdapter<StructureMap_Input> {
  @override
  final typeId = 550;

  @override
  StructureMap_Input read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureMap_Input(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      type: fields[5] as String,
      elementType: fields[6] as Element,
      mode: fields[7] as String,
      elementMode: fields[8] as Element,
      documentation: fields[9] as String,
      elementDocumentation: fields[10] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, StructureMap_Input obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.elementName)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.elementType)
      ..writeByte(7)
      ..write(obj.mode)
      ..writeByte(8)
      ..write(obj.elementMode)
      ..writeByte(9)
      ..write(obj.documentation)
      ..writeByte(10)
      ..write(obj.elementDocumentation);
  }
}

class StructureMap_RuleAdapter extends TypeAdapter<StructureMap_Rule> {
  @override
  final typeId = 551;

  @override
  StructureMap_Rule read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureMap_Rule(
      (fields[5] as List)?.cast<StructureMap_Source>(),
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      target: (fields[6] as List)?.cast<StructureMap_Target>(),
      rule: (fields[7] as List)?.cast<StructureMap_Rule>(),
      dependent: (fields[8] as List)?.cast<StructureMap_Dependent>(),
      documentation: fields[9] as String,
      elementDocumentation: fields[10] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, StructureMap_Rule obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.elementName)
      ..writeByte(5)
      ..write(obj.source)
      ..writeByte(6)
      ..write(obj.target)
      ..writeByte(7)
      ..write(obj.rule)
      ..writeByte(8)
      ..write(obj.dependent)
      ..writeByte(9)
      ..write(obj.documentation)
      ..writeByte(10)
      ..write(obj.elementDocumentation);
  }
}

class StructureMap_SourceAdapter extends TypeAdapter<StructureMap_Source> {
  @override
  final typeId = 552;

  @override
  StructureMap_Source read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureMap_Source(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      context: fields[3] as String,
      elementContext: fields[4] as Element,
      min: fields[5] as int,
      elementMin: fields[6] as Element,
      max: fields[7] as String,
      elementMax: fields[8] as Element,
      type: fields[9] as String,
      elementType: fields[10] as Element,
      defaultValueBase64Binary: fields[11] as String,
      elementDefaultValueBase64Binary: fields[12] as Element,
      defaultValueBoolean: fields[13] as bool,
      elementDefaultValueBoolean: fields[14] as Element,
      defaultValueCanonical: fields[15] as String,
      elementDefaultValueCanonical: fields[16] as Element,
      defaultValueCode: fields[17] as String,
      elementDefaultValueCode: fields[18] as Element,
      defaultValueDate: fields[19] as String,
      elementDefaultValueDate: fields[20] as Element,
      defaultValueDateTime: fields[21] as String,
      elementDefaultValueDateTime: fields[22] as Element,
      elementDefaultValueDecimal: fields[24] as Element,
      defaultValueId: fields[25] as String,
      elementDefaultValueId: fields[26] as Element,
      defaultValueInstant: fields[27] as String,
      elementDefaultValueInstant: fields[28] as Element,
      elementDefaultValueInteger: fields[30] as Element,
      defaultValueMarkdown: fields[31] as String,
      elementDefaultValueMarkdown: fields[32] as Element,
      defaultValueOid: fields[33] as String,
      elementDefaultValueOid: fields[34] as Element,
      elementDefaultValuePositiveInt: fields[36] as Element,
      defaultValueString: fields[37] as String,
      elementDefaultValueString: fields[38] as Element,
      defaultValueTime: fields[39] as String,
      elementDefaultValueTime: fields[40] as Element,
      elementDefaultValueUnsignedInt: fields[42] as Element,
      defaultValueUri: fields[43] as String,
      elementDefaultValueUri: fields[44] as Element,
      defaultValueUrl: fields[45] as String,
      elementDefaultValueUrl: fields[46] as Element,
      defaultValueUuid: fields[47] as String,
      elementDefaultValueUuid: fields[48] as Element,
      defaultValueAddress: fields[49] as Address,
      defaultValueAge: fields[50] as Age,
      defaultValueAnnotation: fields[51] as Annotation,
      defaultValueAttachment: fields[52] as Attachment,
      defaultValueCodeableConcept: fields[53] as CodeableConcept,
      defaultValueCoding: fields[54] as Coding,
      defaultValueContactPoint: fields[55] as ContactPoint,
      defaultValueCount: fields[56] as Count,
      defaultValueDistance: fields[57] as Distance,
      defaultValueDuration: fields[58] as Duration,
      defaultValueHumanName: fields[59] as HumanName,
      defaultValueIdentifier: fields[60] as Identifier,
      defaultValueMoney: fields[61] as Money,
      defaultValuePeriod: fields[62] as Period,
      defaultValueQuantity: fields[63] as Quantity,
      defaultValueRange: fields[64] as Range,
      defaultValueRatio: fields[65] as Ratio,
      defaultValueReference: fields[66] as Reference,
      defaultValueSampledData: fields[67] as SampledData,
      defaultValueSignature: fields[68] as Signature,
      defaultValueTiming: fields[69] as Timing,
      defaultValueContactDetail: fields[70] as ContactDetail,
      defaultValueContributor: fields[71] as Contributor,
      defaultValueDataRequirement: fields[72] as DataRequirement,
      defaultValueExpression: fields[73] as Expression,
      defaultValueParameterDefinition: fields[74] as ParameterDefinition,
      defaultValueRelatedArtifact: fields[75] as RelatedArtifact,
      defaultValueTriggerDefinition: fields[76] as TriggerDefinition,
      defaultValueUsageContext: fields[77] as UsageContext,
      defaultValueDosage: fields[78] as Dosage,
      defaultValueMeta: fields[79] as Meta,
      element: fields[80] as String,
      elementElement: fields[81] as Element,
      listMode: fields[82] as String,
      elementListMode: fields[83] as Element,
      variable: fields[84] as String,
      elementVariable: fields[85] as Element,
      condition: fields[86] as String,
      elementCondition: fields[87] as Element,
      check: fields[88] as String,
      elementCheck: fields[89] as Element,
      logMessage: fields[90] as String,
      elementLogMessage: fields[91] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, StructureMap_Source obj) {
    writer
      ..writeByte(88)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.context)
      ..writeByte(4)
      ..write(obj.elementContext)
      ..writeByte(5)
      ..write(obj.min)
      ..writeByte(6)
      ..write(obj.elementMin)
      ..writeByte(7)
      ..write(obj.max)
      ..writeByte(8)
      ..write(obj.elementMax)
      ..writeByte(9)
      ..write(obj.type)
      ..writeByte(10)
      ..write(obj.elementType)
      ..writeByte(11)
      ..write(obj.defaultValueBase64Binary)
      ..writeByte(12)
      ..write(obj.elementDefaultValueBase64Binary)
      ..writeByte(13)
      ..write(obj.defaultValueBoolean)
      ..writeByte(14)
      ..write(obj.elementDefaultValueBoolean)
      ..writeByte(15)
      ..write(obj.defaultValueCanonical)
      ..writeByte(16)
      ..write(obj.elementDefaultValueCanonical)
      ..writeByte(17)
      ..write(obj.defaultValueCode)
      ..writeByte(18)
      ..write(obj.elementDefaultValueCode)
      ..writeByte(19)
      ..write(obj.defaultValueDate)
      ..writeByte(20)
      ..write(obj.elementDefaultValueDate)
      ..writeByte(21)
      ..write(obj.defaultValueDateTime)
      ..writeByte(22)
      ..write(obj.elementDefaultValueDateTime)
      ..writeByte(24)
      ..write(obj.elementDefaultValueDecimal)
      ..writeByte(25)
      ..write(obj.defaultValueId)
      ..writeByte(26)
      ..write(obj.elementDefaultValueId)
      ..writeByte(27)
      ..write(obj.defaultValueInstant)
      ..writeByte(28)
      ..write(obj.elementDefaultValueInstant)
      ..writeByte(30)
      ..write(obj.elementDefaultValueInteger)
      ..writeByte(31)
      ..write(obj.defaultValueMarkdown)
      ..writeByte(32)
      ..write(obj.elementDefaultValueMarkdown)
      ..writeByte(33)
      ..write(obj.defaultValueOid)
      ..writeByte(34)
      ..write(obj.elementDefaultValueOid)
      ..writeByte(36)
      ..write(obj.elementDefaultValuePositiveInt)
      ..writeByte(37)
      ..write(obj.defaultValueString)
      ..writeByte(38)
      ..write(obj.elementDefaultValueString)
      ..writeByte(39)
      ..write(obj.defaultValueTime)
      ..writeByte(40)
      ..write(obj.elementDefaultValueTime)
      ..writeByte(42)
      ..write(obj.elementDefaultValueUnsignedInt)
      ..writeByte(43)
      ..write(obj.defaultValueUri)
      ..writeByte(44)
      ..write(obj.elementDefaultValueUri)
      ..writeByte(45)
      ..write(obj.defaultValueUrl)
      ..writeByte(46)
      ..write(obj.elementDefaultValueUrl)
      ..writeByte(47)
      ..write(obj.defaultValueUuid)
      ..writeByte(48)
      ..write(obj.elementDefaultValueUuid)
      ..writeByte(49)
      ..write(obj.defaultValueAddress)
      ..writeByte(50)
      ..write(obj.defaultValueAge)
      ..writeByte(51)
      ..write(obj.defaultValueAnnotation)
      ..writeByte(52)
      ..write(obj.defaultValueAttachment)
      ..writeByte(53)
      ..write(obj.defaultValueCodeableConcept)
      ..writeByte(54)
      ..write(obj.defaultValueCoding)
      ..writeByte(55)
      ..write(obj.defaultValueContactPoint)
      ..writeByte(56)
      ..write(obj.defaultValueCount)
      ..writeByte(57)
      ..write(obj.defaultValueDistance)
      ..writeByte(58)
      ..write(obj.defaultValueDuration)
      ..writeByte(59)
      ..write(obj.defaultValueHumanName)
      ..writeByte(60)
      ..write(obj.defaultValueIdentifier)
      ..writeByte(61)
      ..write(obj.defaultValueMoney)
      ..writeByte(62)
      ..write(obj.defaultValuePeriod)
      ..writeByte(63)
      ..write(obj.defaultValueQuantity)
      ..writeByte(64)
      ..write(obj.defaultValueRange)
      ..writeByte(65)
      ..write(obj.defaultValueRatio)
      ..writeByte(66)
      ..write(obj.defaultValueReference)
      ..writeByte(67)
      ..write(obj.defaultValueSampledData)
      ..writeByte(68)
      ..write(obj.defaultValueSignature)
      ..writeByte(69)
      ..write(obj.defaultValueTiming)
      ..writeByte(70)
      ..write(obj.defaultValueContactDetail)
      ..writeByte(71)
      ..write(obj.defaultValueContributor)
      ..writeByte(72)
      ..write(obj.defaultValueDataRequirement)
      ..writeByte(73)
      ..write(obj.defaultValueExpression)
      ..writeByte(74)
      ..write(obj.defaultValueParameterDefinition)
      ..writeByte(75)
      ..write(obj.defaultValueRelatedArtifact)
      ..writeByte(76)
      ..write(obj.defaultValueTriggerDefinition)
      ..writeByte(77)
      ..write(obj.defaultValueUsageContext)
      ..writeByte(78)
      ..write(obj.defaultValueDosage)
      ..writeByte(79)
      ..write(obj.defaultValueMeta)
      ..writeByte(80)
      ..write(obj.element)
      ..writeByte(81)
      ..write(obj.elementElement)
      ..writeByte(82)
      ..write(obj.listMode)
      ..writeByte(83)
      ..write(obj.elementListMode)
      ..writeByte(84)
      ..write(obj.variable)
      ..writeByte(85)
      ..write(obj.elementVariable)
      ..writeByte(86)
      ..write(obj.condition)
      ..writeByte(87)
      ..write(obj.elementCondition)
      ..writeByte(88)
      ..write(obj.check)
      ..writeByte(89)
      ..write(obj.elementCheck)
      ..writeByte(90)
      ..write(obj.logMessage)
      ..writeByte(91)
      ..write(obj.elementLogMessage);
  }
}

class StructureMap_TargetAdapter extends TypeAdapter<StructureMap_Target> {
  @override
  final typeId = 553;

  @override
  StructureMap_Target read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureMap_Target(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      context: fields[3] as String,
      elementContext: fields[4] as Element,
      contextType: fields[5] as String,
      elementContextType: fields[6] as Element,
      element: fields[7] as String,
      elementElement: fields[8] as Element,
      variable: fields[9] as String,
      elementVariable: fields[10] as Element,
      listMode: (fields[11] as List)?.cast<String>(),
      elementListMode: (fields[12] as List)?.cast<Element>(),
      listRuleId: fields[13] as String,
      elementListRuleId: fields[14] as Element,
      transform: fields[15] as String,
      elementTransform: fields[16] as Element,
      parameter: (fields[17] as List)?.cast<StructureMap_Parameter>(),
    );
  }

  @override
  void write(BinaryWriter writer, StructureMap_Target obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.context)
      ..writeByte(4)
      ..write(obj.elementContext)
      ..writeByte(5)
      ..write(obj.contextType)
      ..writeByte(6)
      ..write(obj.elementContextType)
      ..writeByte(7)
      ..write(obj.element)
      ..writeByte(8)
      ..write(obj.elementElement)
      ..writeByte(9)
      ..write(obj.variable)
      ..writeByte(10)
      ..write(obj.elementVariable)
      ..writeByte(11)
      ..write(obj.listMode)
      ..writeByte(12)
      ..write(obj.elementListMode)
      ..writeByte(13)
      ..write(obj.listRuleId)
      ..writeByte(14)
      ..write(obj.elementListRuleId)
      ..writeByte(15)
      ..write(obj.transform)
      ..writeByte(16)
      ..write(obj.elementTransform)
      ..writeByte(17)
      ..write(obj.parameter);
  }
}

class StructureMap_ParameterAdapter
    extends TypeAdapter<StructureMap_Parameter> {
  @override
  final typeId = 554;

  @override
  StructureMap_Parameter read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureMap_Parameter(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      valueId: fields[3] as String,
      elementValueId: fields[4] as Element,
      valueString: fields[5] as String,
      elementValueString: fields[6] as Element,
      valueBoolean: fields[7] as bool,
      elementValueBoolean: fields[8] as Element,
      elementValueInteger: fields[10] as Element,
      elementValueDecimal: fields[12] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, StructureMap_Parameter obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.valueId)
      ..writeByte(4)
      ..write(obj.elementValueId)
      ..writeByte(5)
      ..write(obj.valueString)
      ..writeByte(6)
      ..write(obj.elementValueString)
      ..writeByte(7)
      ..write(obj.valueBoolean)
      ..writeByte(8)
      ..write(obj.elementValueBoolean)
      ..writeByte(10)
      ..write(obj.elementValueInteger)
      ..writeByte(12)
      ..write(obj.elementValueDecimal);
  }
}

class StructureMap_DependentAdapter
    extends TypeAdapter<StructureMap_Dependent> {
  @override
  final typeId = 555;

  @override
  StructureMap_Dependent read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureMap_Dependent(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      variable: (fields[5] as List)?.cast<String>(),
      elementVariable: (fields[6] as List)?.cast<Element>(),
    );
  }

  @override
  void write(BinaryWriter writer, StructureMap_Dependent obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.elementName)
      ..writeByte(5)
      ..write(obj.variable)
      ..writeByte(6)
      ..write(obj.elementVariable);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StructureMap _$StructureMapFromJson(Map<String, dynamic> json) {
  return StructureMap(
    (json['group'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Group.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    experimental: json['experimental'] as bool,
    elementExperimental: json['elementExperimental'] == null
        ? null
        : Element.fromJson(json['elementExperimental'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    publisher: json['publisher'] as String,
    elementPublisher: json['elementPublisher'] == null
        ? null
        : Element.fromJson(json['elementPublisher'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    useContext: (json['useContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    purpose: json['purpose'] as String,
    elementPurpose: json['elementPurpose'] == null
        ? null
        : Element.fromJson(json['elementPurpose'] as Map<String, dynamic>),
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
    structure: (json['structure'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Structure.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    import: (json['import'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$StructureMapToJson(StructureMap instance) =>
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
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'experimental': instance.experimental,
      'elementExperimental': instance.elementExperimental?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'publisher': instance.publisher,
      'elementPublisher': instance.elementPublisher?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'purpose': instance.purpose,
      'elementPurpose': instance.elementPurpose?.toJson(),
      'copyright': instance.copyright,
      'elementCopyright': instance.elementCopyright?.toJson(),
      'structure': instance.structure?.map((e) => e?.toJson())?.toList(),
      'import': instance.import,
      'group': instance.group?.map((e) => e?.toJson())?.toList(),
    };

StructureMap_Structure _$StructureMap_StructureFromJson(
    Map<String, dynamic> json) {
  return StructureMap_Structure(
    json['url'] as String,
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    alias: json['alias'] as String,
    elementAlias: json['elementAlias'] == null
        ? null
        : Element.fromJson(json['elementAlias'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureMap_StructureToJson(
        StructureMap_Structure instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'url': instance.url,
      'mode': instance.mode,
      'elementMode': instance.elementMode?.toJson(),
      'alias': instance.alias,
      'elementAlias': instance.elementAlias?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
    };

StructureMap_Group _$StructureMap_GroupFromJson(Map<String, dynamic> json) {
  return StructureMap_Group(
    (json['input'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Input.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['rule'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Rule.fromJson(e as Map<String, dynamic>))
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
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    extend: json['extend'] as String,
    elementExtends: json['elementExtends'] == null
        ? null
        : Element.fromJson(json['elementExtends'] as Map<String, dynamic>),
    typeMode: json['typeMode'] as String,
    elementTypeMode: json['elementTypeMode'] == null
        ? null
        : Element.fromJson(json['elementTypeMode'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureMap_GroupToJson(StructureMap_Group instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'extend': instance.extend,
      'elementExtends': instance.elementExtends?.toJson(),
      'typeMode': instance.typeMode,
      'elementTypeMode': instance.elementTypeMode?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
      'input': instance.input?.map((e) => e?.toJson())?.toList(),
      'rule': instance.rule?.map((e) => e?.toJson())?.toList(),
    };

StructureMap_Input _$StructureMap_InputFromJson(Map<String, dynamic> json) {
  return StructureMap_Input(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureMap_InputToJson(StructureMap_Input instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'mode': instance.mode,
      'elementMode': instance.elementMode?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
    };

StructureMap_Rule _$StructureMap_RuleFromJson(Map<String, dynamic> json) {
  return StructureMap_Rule(
    (json['source'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Source.fromJson(e as Map<String, dynamic>))
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
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    target: (json['target'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Target.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rule: (json['rule'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Rule.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dependent: (json['dependent'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Dependent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureMap_RuleToJson(StructureMap_Rule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'source': instance.source?.map((e) => e?.toJson())?.toList(),
      'target': instance.target?.map((e) => e?.toJson())?.toList(),
      'rule': instance.rule?.map((e) => e?.toJson())?.toList(),
      'dependent': instance.dependent?.map((e) => e?.toJson())?.toList(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
    };

StructureMap_Source _$StructureMap_SourceFromJson(Map<String, dynamic> json) {
  return StructureMap_Source(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    context: json['context'] as String,
    elementContext: json['elementContext'] == null
        ? null
        : Element.fromJson(json['elementContext'] as Map<String, dynamic>),
    min: json['min'] as int,
    elementMin: json['elementMin'] == null
        ? null
        : Element.fromJson(json['elementMin'] as Map<String, dynamic>),
    max: json['max'] as String,
    elementMax: json['elementMax'] == null
        ? null
        : Element.fromJson(json['elementMax'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    defaultValueBase64Binary: json['defaultValueBase64Binary'] as String,
    elementDefaultValueBase64Binary: json['elementDefaultValueBase64Binary'] ==
            null
        ? null
        : Element.fromJson(
            json['elementDefaultValueBase64Binary'] as Map<String, dynamic>),
    defaultValueBoolean: json['defaultValueBoolean'] as bool,
    elementDefaultValueBoolean: json['elementDefaultValueBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueBoolean'] as Map<String, dynamic>),
    defaultValueCanonical: json['defaultValueCanonical'] as String,
    elementDefaultValueCanonical: json['elementDefaultValueCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueCanonical'] as Map<String, dynamic>),
    defaultValueCode: json['defaultValueCode'] as String,
    elementDefaultValueCode: json['elementDefaultValueCode'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueCode'] as Map<String, dynamic>),
    defaultValueDate: json['defaultValueDate'] as String,
    elementDefaultValueDate: json['elementDefaultValueDate'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueDate'] as Map<String, dynamic>),
    defaultValueDateTime: json['defaultValueDateTime'] as String,
    elementDefaultValueDateTime: json['elementDefaultValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueDateTime'] as Map<String, dynamic>),
    defaultValueDecimal: (json['defaultValueDecimal'] as num)?.toDouble(),
    elementDefaultValueDecimal: json['elementDefaultValueDecimal'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueDecimal'] as Map<String, dynamic>),
    defaultValueId: json['defaultValueId'] as String,
    elementDefaultValueId: json['elementDefaultValueId'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueId'] as Map<String, dynamic>),
    defaultValueInstant: json['defaultValueInstant'] as String,
    elementDefaultValueInstant: json['elementDefaultValueInstant'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueInstant'] as Map<String, dynamic>),
    defaultValueInteger: json['defaultValueInteger'] as int,
    elementDefaultValueInteger: json['elementDefaultValueInteger'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueInteger'] as Map<String, dynamic>),
    defaultValueMarkdown: json['defaultValueMarkdown'] as String,
    elementDefaultValueMarkdown: json['elementDefaultValueMarkdown'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueMarkdown'] as Map<String, dynamic>),
    defaultValueOid: json['defaultValueOid'] as String,
    elementDefaultValueOid: json['elementDefaultValueOid'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueOid'] as Map<String, dynamic>),
    defaultValuePositiveInt: json['defaultValuePositiveInt'] as int,
    elementDefaultValuePositiveInt:
        json['elementDefaultValuePositiveInt'] == null
            ? null
            : Element.fromJson(
                json['elementDefaultValuePositiveInt'] as Map<String, dynamic>),
    defaultValueString: json['defaultValueString'] as String,
    elementDefaultValueString: json['elementDefaultValueString'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueString'] as Map<String, dynamic>),
    defaultValueTime: json['defaultValueTime'] as String,
    elementDefaultValueTime: json['elementDefaultValueTime'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueTime'] as Map<String, dynamic>),
    defaultValueUnsignedInt: json['defaultValueUnsignedInt'] as int,
    elementDefaultValueUnsignedInt:
        json['elementDefaultValueUnsignedInt'] == null
            ? null
            : Element.fromJson(
                json['elementDefaultValueUnsignedInt'] as Map<String, dynamic>),
    defaultValueUri: json['defaultValueUri'] as String,
    elementDefaultValueUri: json['elementDefaultValueUri'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueUri'] as Map<String, dynamic>),
    defaultValueUrl: json['defaultValueUrl'] as String,
    elementDefaultValueUrl: json['elementDefaultValueUrl'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueUrl'] as Map<String, dynamic>),
    defaultValueUuid: json['defaultValueUuid'] as String,
    elementDefaultValueUuid: json['elementDefaultValueUuid'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueUuid'] as Map<String, dynamic>),
    defaultValueAddress: json['defaultValueAddress'] == null
        ? null
        : Address.fromJson(json['defaultValueAddress'] as Map<String, dynamic>),
    defaultValueAge: json['defaultValueAge'] == null
        ? null
        : Age.fromJson(json['defaultValueAge'] as Map<String, dynamic>),
    defaultValueAnnotation: json['defaultValueAnnotation'] == null
        ? null
        : Annotation.fromJson(
            json['defaultValueAnnotation'] as Map<String, dynamic>),
    defaultValueAttachment: json['defaultValueAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['defaultValueAttachment'] as Map<String, dynamic>),
    defaultValueCodeableConcept: json['defaultValueCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['defaultValueCodeableConcept'] as Map<String, dynamic>),
    defaultValueCoding: json['defaultValueCoding'] == null
        ? null
        : Coding.fromJson(json['defaultValueCoding'] as Map<String, dynamic>),
    defaultValueContactPoint: json['defaultValueContactPoint'] == null
        ? null
        : ContactPoint.fromJson(
            json['defaultValueContactPoint'] as Map<String, dynamic>),
    defaultValueCount: json['defaultValueCount'] == null
        ? null
        : Count.fromJson(json['defaultValueCount'] as Map<String, dynamic>),
    defaultValueDistance: json['defaultValueDistance'] == null
        ? null
        : Distance.fromJson(
            json['defaultValueDistance'] as Map<String, dynamic>),
    defaultValueDuration: json['defaultValueDuration'] == null
        ? null
        : Duration.fromJson(
            json['defaultValueDuration'] as Map<String, dynamic>),
    defaultValueHumanName: json['defaultValueHumanName'] == null
        ? null
        : HumanName.fromJson(
            json['defaultValueHumanName'] as Map<String, dynamic>),
    defaultValueIdentifier: json['defaultValueIdentifier'] == null
        ? null
        : Identifier.fromJson(
            json['defaultValueIdentifier'] as Map<String, dynamic>),
    defaultValueMoney: json['defaultValueMoney'] == null
        ? null
        : Money.fromJson(json['defaultValueMoney'] as Map<String, dynamic>),
    defaultValuePeriod: json['defaultValuePeriod'] == null
        ? null
        : Period.fromJson(json['defaultValuePeriod'] as Map<String, dynamic>),
    defaultValueQuantity: json['defaultValueQuantity'] == null
        ? null
        : Quantity.fromJson(
            json['defaultValueQuantity'] as Map<String, dynamic>),
    defaultValueRange: json['defaultValueRange'] == null
        ? null
        : Range.fromJson(json['defaultValueRange'] as Map<String, dynamic>),
    defaultValueRatio: json['defaultValueRatio'] == null
        ? null
        : Ratio.fromJson(json['defaultValueRatio'] as Map<String, dynamic>),
    defaultValueReference: json['defaultValueReference'] == null
        ? null
        : Reference.fromJson(
            json['defaultValueReference'] as Map<String, dynamic>),
    defaultValueSampledData: json['defaultValueSampledData'] == null
        ? null
        : SampledData.fromJson(
            json['defaultValueSampledData'] as Map<String, dynamic>),
    defaultValueSignature: json['defaultValueSignature'] == null
        ? null
        : Signature.fromJson(
            json['defaultValueSignature'] as Map<String, dynamic>),
    defaultValueTiming: json['defaultValueTiming'] == null
        ? null
        : Timing.fromJson(json['defaultValueTiming'] as Map<String, dynamic>),
    defaultValueContactDetail: json['defaultValueContactDetail'] == null
        ? null
        : ContactDetail.fromJson(
            json['defaultValueContactDetail'] as Map<String, dynamic>),
    defaultValueContributor: json['defaultValueContributor'] == null
        ? null
        : Contributor.fromJson(
            json['defaultValueContributor'] as Map<String, dynamic>),
    defaultValueDataRequirement: json['defaultValueDataRequirement'] == null
        ? null
        : DataRequirement.fromJson(
            json['defaultValueDataRequirement'] as Map<String, dynamic>),
    defaultValueExpression: json['defaultValueExpression'] == null
        ? null
        : Expression.fromJson(
            json['defaultValueExpression'] as Map<String, dynamic>),
    defaultValueParameterDefinition: json['defaultValueParameterDefinition'] ==
            null
        ? null
        : ParameterDefinition.fromJson(
            json['defaultValueParameterDefinition'] as Map<String, dynamic>),
    defaultValueRelatedArtifact: json['defaultValueRelatedArtifact'] == null
        ? null
        : RelatedArtifact.fromJson(
            json['defaultValueRelatedArtifact'] as Map<String, dynamic>),
    defaultValueTriggerDefinition: json['defaultValueTriggerDefinition'] == null
        ? null
        : TriggerDefinition.fromJson(
            json['defaultValueTriggerDefinition'] as Map<String, dynamic>),
    defaultValueUsageContext: json['defaultValueUsageContext'] == null
        ? null
        : UsageContext.fromJson(
            json['defaultValueUsageContext'] as Map<String, dynamic>),
    defaultValueDosage: json['defaultValueDosage'] == null
        ? null
        : Dosage.fromJson(json['defaultValueDosage'] as Map<String, dynamic>),
    defaultValueMeta: json['defaultValueMeta'] == null
        ? null
        : Meta.fromJson(json['defaultValueMeta'] as Map<String, dynamic>),
    element: json['element'] as String,
    elementElement: json['elementElement'] == null
        ? null
        : Element.fromJson(json['elementElement'] as Map<String, dynamic>),
    listMode: json['listMode'] as String,
    elementListMode: json['elementListMode'] == null
        ? null
        : Element.fromJson(json['elementListMode'] as Map<String, dynamic>),
    variable: json['variable'] as String,
    elementVariable: json['elementVariable'] == null
        ? null
        : Element.fromJson(json['elementVariable'] as Map<String, dynamic>),
    condition: json['condition'] as String,
    elementCondition: json['elementCondition'] == null
        ? null
        : Element.fromJson(json['elementCondition'] as Map<String, dynamic>),
    check: json['check'] as String,
    elementCheck: json['elementCheck'] == null
        ? null
        : Element.fromJson(json['elementCheck'] as Map<String, dynamic>),
    logMessage: json['logMessage'] as String,
    elementLogMessage: json['elementLogMessage'] == null
        ? null
        : Element.fromJson(json['elementLogMessage'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureMap_SourceToJson(
        StructureMap_Source instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'context': instance.context,
      'elementContext': instance.elementContext?.toJson(),
      'min': instance.min,
      'elementMin': instance.elementMin?.toJson(),
      'max': instance.max,
      'elementMax': instance.elementMax?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'defaultValueBase64Binary': instance.defaultValueBase64Binary,
      'elementDefaultValueBase64Binary':
          instance.elementDefaultValueBase64Binary?.toJson(),
      'defaultValueBoolean': instance.defaultValueBoolean,
      'elementDefaultValueBoolean':
          instance.elementDefaultValueBoolean?.toJson(),
      'defaultValueCanonical': instance.defaultValueCanonical,
      'elementDefaultValueCanonical':
          instance.elementDefaultValueCanonical?.toJson(),
      'defaultValueCode': instance.defaultValueCode,
      'elementDefaultValueCode': instance.elementDefaultValueCode?.toJson(),
      'defaultValueDate': instance.defaultValueDate,
      'elementDefaultValueDate': instance.elementDefaultValueDate?.toJson(),
      'defaultValueDateTime': instance.defaultValueDateTime,
      'elementDefaultValueDateTime':
          instance.elementDefaultValueDateTime?.toJson(),
      'defaultValueDecimal': instance.defaultValueDecimal,
      'elementDefaultValueDecimal':
          instance.elementDefaultValueDecimal?.toJson(),
      'defaultValueId': instance.defaultValueId,
      'elementDefaultValueId': instance.elementDefaultValueId?.toJson(),
      'defaultValueInstant': instance.defaultValueInstant,
      'elementDefaultValueInstant':
          instance.elementDefaultValueInstant?.toJson(),
      'defaultValueInteger': instance.defaultValueInteger,
      'elementDefaultValueInteger':
          instance.elementDefaultValueInteger?.toJson(),
      'defaultValueMarkdown': instance.defaultValueMarkdown,
      'elementDefaultValueMarkdown':
          instance.elementDefaultValueMarkdown?.toJson(),
      'defaultValueOid': instance.defaultValueOid,
      'elementDefaultValueOid': instance.elementDefaultValueOid?.toJson(),
      'defaultValuePositiveInt': instance.defaultValuePositiveInt,
      'elementDefaultValuePositiveInt':
          instance.elementDefaultValuePositiveInt?.toJson(),
      'defaultValueString': instance.defaultValueString,
      'elementDefaultValueString': instance.elementDefaultValueString?.toJson(),
      'defaultValueTime': instance.defaultValueTime,
      'elementDefaultValueTime': instance.elementDefaultValueTime?.toJson(),
      'defaultValueUnsignedInt': instance.defaultValueUnsignedInt,
      'elementDefaultValueUnsignedInt':
          instance.elementDefaultValueUnsignedInt?.toJson(),
      'defaultValueUri': instance.defaultValueUri,
      'elementDefaultValueUri': instance.elementDefaultValueUri?.toJson(),
      'defaultValueUrl': instance.defaultValueUrl,
      'elementDefaultValueUrl': instance.elementDefaultValueUrl?.toJson(),
      'defaultValueUuid': instance.defaultValueUuid,
      'elementDefaultValueUuid': instance.elementDefaultValueUuid?.toJson(),
      'defaultValueAddress': instance.defaultValueAddress?.toJson(),
      'defaultValueAge': instance.defaultValueAge?.toJson(),
      'defaultValueAnnotation': instance.defaultValueAnnotation?.toJson(),
      'defaultValueAttachment': instance.defaultValueAttachment?.toJson(),
      'defaultValueCodeableConcept':
          instance.defaultValueCodeableConcept?.toJson(),
      'defaultValueCoding': instance.defaultValueCoding?.toJson(),
      'defaultValueContactPoint': instance.defaultValueContactPoint?.toJson(),
      'defaultValueCount': instance.defaultValueCount?.toJson(),
      'defaultValueDistance': instance.defaultValueDistance?.toJson(),
      'defaultValueDuration': instance.defaultValueDuration?.toJson(),
      'defaultValueHumanName': instance.defaultValueHumanName?.toJson(),
      'defaultValueIdentifier': instance.defaultValueIdentifier?.toJson(),
      'defaultValueMoney': instance.defaultValueMoney?.toJson(),
      'defaultValuePeriod': instance.defaultValuePeriod?.toJson(),
      'defaultValueQuantity': instance.defaultValueQuantity?.toJson(),
      'defaultValueRange': instance.defaultValueRange?.toJson(),
      'defaultValueRatio': instance.defaultValueRatio?.toJson(),
      'defaultValueReference': instance.defaultValueReference?.toJson(),
      'defaultValueSampledData': instance.defaultValueSampledData?.toJson(),
      'defaultValueSignature': instance.defaultValueSignature?.toJson(),
      'defaultValueTiming': instance.defaultValueTiming?.toJson(),
      'defaultValueContactDetail': instance.defaultValueContactDetail?.toJson(),
      'defaultValueContributor': instance.defaultValueContributor?.toJson(),
      'defaultValueDataRequirement':
          instance.defaultValueDataRequirement?.toJson(),
      'defaultValueExpression': instance.defaultValueExpression?.toJson(),
      'defaultValueParameterDefinition':
          instance.defaultValueParameterDefinition?.toJson(),
      'defaultValueRelatedArtifact':
          instance.defaultValueRelatedArtifact?.toJson(),
      'defaultValueTriggerDefinition':
          instance.defaultValueTriggerDefinition?.toJson(),
      'defaultValueUsageContext': instance.defaultValueUsageContext?.toJson(),
      'defaultValueDosage': instance.defaultValueDosage?.toJson(),
      'defaultValueMeta': instance.defaultValueMeta?.toJson(),
      'element': instance.element,
      'elementElement': instance.elementElement?.toJson(),
      'listMode': instance.listMode,
      'elementListMode': instance.elementListMode?.toJson(),
      'variable': instance.variable,
      'elementVariable': instance.elementVariable?.toJson(),
      'condition': instance.condition,
      'elementCondition': instance.elementCondition?.toJson(),
      'check': instance.check,
      'elementCheck': instance.elementCheck?.toJson(),
      'logMessage': instance.logMessage,
      'elementLogMessage': instance.elementLogMessage?.toJson(),
    };

StructureMap_Target _$StructureMap_TargetFromJson(Map<String, dynamic> json) {
  return StructureMap_Target(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    context: json['context'] as String,
    elementContext: json['elementContext'] == null
        ? null
        : Element.fromJson(json['elementContext'] as Map<String, dynamic>),
    contextType: json['contextType'] as String,
    elementContextType: json['elementContextType'] == null
        ? null
        : Element.fromJson(json['elementContextType'] as Map<String, dynamic>),
    element: json['element'] as String,
    elementElement: json['elementElement'] == null
        ? null
        : Element.fromJson(json['elementElement'] as Map<String, dynamic>),
    variable: json['variable'] as String,
    elementVariable: json['elementVariable'] == null
        ? null
        : Element.fromJson(json['elementVariable'] as Map<String, dynamic>),
    listMode: (json['listMode'] as List)?.map((e) => e as String)?.toList(),
    elementListMode: (json['elementListMode'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    listRuleId: json['listRuleId'] as String,
    elementListRuleId: json['elementListRuleId'] == null
        ? null
        : Element.fromJson(json['elementListRuleId'] as Map<String, dynamic>),
    transform: json['transform'] as String,
    elementTransform: json['elementTransform'] == null
        ? null
        : Element.fromJson(json['elementTransform'] as Map<String, dynamic>),
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StructureMap_TargetToJson(
        StructureMap_Target instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'context': instance.context,
      'elementContext': instance.elementContext?.toJson(),
      'contextType': instance.contextType,
      'elementContextType': instance.elementContextType?.toJson(),
      'element': instance.element,
      'elementElement': instance.elementElement?.toJson(),
      'variable': instance.variable,
      'elementVariable': instance.elementVariable?.toJson(),
      'listMode': instance.listMode,
      'elementListMode':
          instance.elementListMode?.map((e) => e?.toJson())?.toList(),
      'listRuleId': instance.listRuleId,
      'elementListRuleId': instance.elementListRuleId?.toJson(),
      'transform': instance.transform,
      'elementTransform': instance.elementTransform?.toJson(),
      'parameter': instance.parameter?.map((e) => e?.toJson())?.toList(),
    };

StructureMap_Parameter _$StructureMap_ParameterFromJson(
    Map<String, dynamic> json) {
  return StructureMap_Parameter(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valueId: json['valueId'] as String,
    elementValueId: json['elementValueId'] == null
        ? null
        : Element.fromJson(json['elementValueId'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    elementValueInteger: json['elementValueInteger'] == null
        ? null
        : Element.fromJson(json['elementValueInteger'] as Map<String, dynamic>),
    valueDecimal: (json['valueDecimal'] as num)?.toDouble(),
    elementValueDecimal: json['elementValueDecimal'] == null
        ? null
        : Element.fromJson(json['elementValueDecimal'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureMap_ParameterToJson(
        StructureMap_Parameter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'valueId': instance.valueId,
      'elementValueId': instance.elementValueId?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueBoolean': instance.valueBoolean,
      'elementValueBoolean': instance.elementValueBoolean?.toJson(),
      'valueInteger': instance.valueInteger,
      'elementValueInteger': instance.elementValueInteger?.toJson(),
      'valueDecimal': instance.valueDecimal,
      'elementValueDecimal': instance.elementValueDecimal?.toJson(),
    };

StructureMap_Dependent _$StructureMap_DependentFromJson(
    Map<String, dynamic> json) {
  return StructureMap_Dependent(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    variable: (json['variable'] as List)?.map((e) => e as String)?.toList(),
    elementVariable: (json['elementVariable'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StructureMap_DependentToJson(
        StructureMap_Dependent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'variable': instance.variable,
      'elementVariable':
          instance.elementVariable?.map((e) => e?.toJson())?.toList(),
    };
