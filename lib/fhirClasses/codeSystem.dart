import 'package:hive/hive.dart';
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

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 143)
class CodeSystem {

  //  This is a CodeSystem resource
  @HiveField(0)
  final String resourceType= 'CodeSystem';

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

  //  An absolute URI that is used to identify this code system when it is
  // referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this code system is (or will be) published. This URL can be the
  // target of a canonical reference. It SHALL remain the same when the code
  // system is stored on different servers. This is used in
  // [Coding](datatypes.html#Coding).system.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  A formal identifier that is used to identify this code system when it
  // is represented in other formats, or referenced in a specification,
  // model, design or an instance.
  @HiveField(13)
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the code
  // system when it is referenced in a specification, model, design or
  // instance. This is an arbitrary value managed by the code system author
  // and is not expected to be globally unique. For example, it might be a
  // timestamp (e.g. yyyymmdd) if a managed version is not available. There
  // is also no expectation that versions can be placed in a lexicographical
  // sequence. This is used in [Coding](datatypes.html#Coding).version.
  @HiveField(14)
  String version;

  //  Extensions for version
  @HiveField(15)
  Element elementVersion;

  //  A natural language name identifying the code system. This name should
  // be usable as an identifier for the module by machine processing
  // applications such as code generation.
  @HiveField(16)
  String name;

  //  Extensions for name
  @HiveField(17)
  Element elementName;

  //  A short, descriptive, user-friendly title for the code system.
  @HiveField(18)
  String title;

  //  Extensions for title
  @HiveField(19)
  Element elementTitle;

  //  The date (and optionally time) when the code system resource was
  // created or revised.
  @HiveField(20)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(21)
  Element elementStatus;

  //  A Boolean value to indicate that this code system is authored for
  // testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  @HiveField(22)
  bool experimental;

  //  Extensions for experimental
  @HiveField(23)
  Element elementExperimental;

  //  The date  (and optionally time) when the code system was published.
  // The date must change when the business version changes and it must
  // change if the status code changes. In addition, it should change when
  // the substantive content of the code system changes.
  @HiveField(24)
  DateTime date;

  //  Extensions for date
  @HiveField(25)
  Element elementDate;

  //  The name of the organization or individual that published the code
  // system.
  @HiveField(26)
  String publisher;

  //  Extensions for publisher
  @HiveField(27)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(28)
  List<ContactDetail> contact;

  //  A free text natural language description of the code system from a
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
  // searching for appropriate code system instances.
  @HiveField(31)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the code system is intended to
  // be used.
  @HiveField(32)
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this code system is needed and why it has been
  // designed as it has.
  @HiveField(33)
  String purpose;

  //  Extensions for purpose
  @HiveField(34)
  Element elementPurpose;

  //  A copyright statement relating to the code system and/or its contents.
  // Copyright statements are generally legal restrictions on the use and
  // publishing of the code system.
  @HiveField(35)
  String copyright;

  //  Extensions for copyright
  @HiveField(36)
  Element elementCopyright;

  //  If code comparison is case sensitive when codes within this system are
  // compared to each other.
  @HiveField(37)
  bool caseSensitive;

  //  Extensions for caseSensitive
  @HiveField(38)
  Element elementCaseSensitive;

  //  Canonical reference to the value set that contains the entire code
  // system.
  @HiveField(39)
  String valueSet;

  //  The meaning of the hierarchy of concepts as represented in this
  // resource.
  @HiveField(40)
  String hierarchyMeaning; // <code> enum: grouped-by/is-a/part-of/classified-with;

  //  Extensions for hierarchyMeaning
  @HiveField(41)
  Element elementHierarchyMeaning;

  //  The code system defines a compositional (post-coordination) grammar.
  @HiveField(42)
  bool compositional;

  //  Extensions for compositional
  @HiveField(43)
  Element elementCompositional;

  //  This flag is used to signify that the code system does not commit to
  // concept permanence across versions. If true, a version must be
  // specified when referencing this code system.
  @HiveField(44)
  bool versionNeeded;

  //  Extensions for versionNeeded
  @HiveField(45)
  Element elementVersionNeeded;

  //  The extent of the content of the code system (the concepts and codes
  // it defines) are represented in this resource instance.
  @HiveField(46)
  String content; // <code> enum: not-present/example/fragment/complete/supplement;

  //  Extensions for content
  @HiveField(47)
  Element elementContent;

  //  The canonical URL of the code system that this code system supplement
  // is adding designations and properties to.
  @HiveField(48)
  String supplements;

  //  The total number of concepts defined by the code system. Where the
  // code system has a compositional grammar, the basis of this count is
  // defined by the system steward.
  @HiveField(49)
  int count;

  //  Extensions for count
  @HiveField(50)
  Element elementCount;

  //  A filter that can be used in a value set compose statement when
  // selecting concepts using a filter.
  @HiveField(51)
  List<CodeSystem_Filter> filter;

  //  A property defines an additional slot through which additional
  // information can be provided about a concept.
  @HiveField(52)
  List<CodeSystem_Property> property;

  //  Concepts that are in the code system. The concept definitions are
  // inherently hierarchical, but the definitions must be consulted to
  // determine what the meanings of the hierarchical relationships are.
  @HiveField(53)
  List<CodeSystem_Concept> concept;

CodeSystem(
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
    this.caseSensitive,
    this.elementCaseSensitive,
    this.valueSet,
    this.hierarchyMeaning,
    this.elementHierarchyMeaning,
    this.compositional,
    this.elementCompositional,
    this.versionNeeded,
    this.elementVersionNeeded,
    this.content,
    this.elementContent,
    this.supplements,
    this.count,
    this.elementCount,
    this.filter,
    this.property,
    this.concept
    });

  factory CodeSystem.fromJson(Map<String, dynamic> json) => _$CodeSystemFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Filter {

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

  //  The code that identifies this filter when it is used as a filter in
  // [[[ValueSet]]].compose.include.filter.
  String code;

  //  Extensions for code
  Element elementCode;

  //  A description of how or why the filter is used.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  A list of operators that can be used with the filter.
  List<String> operator;

  //  Extensions for operator
  List<Element> elementOperator;

  //  A description of what the value for the filter should be.
  String value;

  //  Extensions for value
  Element elementValue;

CodeSystem_Filter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.description,
    this.elementDescription,
    this.operator,
    this.elementOperator,
    this.value,
    this.elementValue
    });

  factory CodeSystem_Filter.fromJson(Map<String, dynamic> json) => _$CodeSystem_FilterFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_FilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Property {

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

  //  A code that is used to identify the property. The code is used
  // internally (in CodeSystem.concept.property.code) and also externally,
  // such as in property filters.
  String code;

  //  Extensions for code
  Element elementCode;

  //  Reference to the formal meaning of the property. One possible source
  // of meaning is the [Concept
  // Properties](codesystem-concept-properties.html) code system.
  String uri;

  //  Extensions for uri
  Element elementUri;

  //  A description of the property- why it is defined, and how its value
  // might be used.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  The type of the property value. Properties of type "code" contain a
  // code defined by the code system (e.g. a reference to another defined
  // concept).
  String type; // <code> enum: code/Coding/string/integer/boolean/dateTime/decimal;

  //  Extensions for type
  Element elementType;

CodeSystem_Property(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.uri,
    this.elementUri,
    this.description,
    this.elementDescription,
    this.type,
    this.elementType
    });

  factory CodeSystem_Property.fromJson(Map<String, dynamic> json) => _$CodeSystem_PropertyFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_PropertyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Concept {

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

  //  A code - a text symbol - that uniquely identifies the concept within
  // the code system.
  String code;

  //  Extensions for code
  Element elementCode;

  //  A human readable string that is the recommended default way to present
  // this concept to a user.
  String display;

  //  Extensions for display
  Element elementDisplay;

  //  The formal definition of the concept. The code system resource does
  // not make formal definitions required, because of the prevalence of
  // legacy systems. However, they are highly recommended, as without them
  // there is no formal meaning associated with the concept.
  String definition;

  //  Extensions for definition
  Element elementDefinition;

  //  Additional representations for the concept - other languages, aliases,
  // specialized purposes, used for particular purposes, etc.
  List<CodeSystem_Designation> designation;

  //  A property value for this concept.
  List<CodeSystem_Property1> property;

  //  Defines children of a concept to produce a hierarchy of concepts. The
  // nature of the relationships is variable (is-a/contains/categorizes) -
  // see hierarchyMeaning.
  List<CodeSystem_Concept> concept;

CodeSystem_Concept(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.display,
    this.elementDisplay,
    this.definition,
    this.elementDefinition,
    this.designation,
    this.property,
    this.concept
    });

  factory CodeSystem_Concept.fromJson(Map<String, dynamic> json) => _$CodeSystem_ConceptFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_ConceptToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Designation {

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

  //  The language this designation is defined for.
  String language;

  //  Extensions for language
  Element elementLanguage;

  //  A code that details how this designation would be used.
  Coding use;

  //  The text value for this designation.
  String value;

  //  Extensions for value
  Element elementValue;

CodeSystem_Designation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.language,
    this.elementLanguage,
    this.use,
    this.value,
    this.elementValue
    });

  factory CodeSystem_Designation.fromJson(Map<String, dynamic> json) => _$CodeSystem_DesignationFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_DesignationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Property1 {

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

  //  A code that is a reference to CodeSystem.property.code.
  String code;

  //  Extensions for code
  Element elementCode;

  //  The value of this property.
  String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

  //  Extensions for valueCode
  Element elementValueCode;

  //  The value of this property.
  Coding valueCoding;

  //  The value of this property.
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  Element elementValueString;

  //  The value of this property.
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for valueInteger
  Element elementValueInteger;

  //  The value of this property.
  bool valueBoolean; //  pattern: ^true|false$

  //  Extensions for valueBoolean
  Element elementValueBoolean;

  //  The value of this property.
  String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for valueDateTime
  Element elementValueDateTime;

  //  The value of this property.
  double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for valueDecimal
  Element elementValueDecimal;

CodeSystem_Property1(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.valueCode,
    this.elementValueCode,
    this.valueCoding,
    this.valueString,
    this.elementValueString,
    this.valueInteger,
    this.elementValueInteger,
    this.valueBoolean,
    this.elementValueBoolean,
    this.valueDateTime,
    this.elementValueDateTime,
    this.valueDecimal,
    this.elementValueDecimal
    });

  factory CodeSystem_Property1.fromJson(Map<String, dynamic> json) => _$CodeSystem_Property1FromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_Property1ToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CodeSystemAdapter extends TypeAdapter<CodeSystem> {
  @override
  final typeId = 143;

  @override
  CodeSystem read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CodeSystem(
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
      caseSensitive: fields[37] as bool,
      elementCaseSensitive: fields[38] as Element,
      valueSet: fields[39] as String,
      hierarchyMeaning: fields[40] as String,
      elementHierarchyMeaning: fields[41] as Element,
      compositional: fields[42] as bool,
      elementCompositional: fields[43] as Element,
      versionNeeded: fields[44] as bool,
      elementVersionNeeded: fields[45] as Element,
      content: fields[46] as String,
      elementContent: fields[47] as Element,
      supplements: fields[48] as String,
      count: fields[49] as int,
      elementCount: fields[50] as Element,
      filter: (fields[51] as List)?.cast<CodeSystem_Filter>(),
      property: (fields[52] as List)?.cast<CodeSystem_Property>(),
      concept: (fields[53] as List)?.cast<CodeSystem_Concept>(),
    );
  }

  @override
  void write(BinaryWriter writer, CodeSystem obj) {
    writer
      ..writeByte(54)
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
      ..write(obj.caseSensitive)
      ..writeByte(38)
      ..write(obj.elementCaseSensitive)
      ..writeByte(39)
      ..write(obj.valueSet)
      ..writeByte(40)
      ..write(obj.hierarchyMeaning)
      ..writeByte(41)
      ..write(obj.elementHierarchyMeaning)
      ..writeByte(42)
      ..write(obj.compositional)
      ..writeByte(43)
      ..write(obj.elementCompositional)
      ..writeByte(44)
      ..write(obj.versionNeeded)
      ..writeByte(45)
      ..write(obj.elementVersionNeeded)
      ..writeByte(46)
      ..write(obj.content)
      ..writeByte(47)
      ..write(obj.elementContent)
      ..writeByte(48)
      ..write(obj.supplements)
      ..writeByte(49)
      ..write(obj.count)
      ..writeByte(50)
      ..write(obj.elementCount)
      ..writeByte(51)
      ..write(obj.filter)
      ..writeByte(52)
      ..write(obj.property)
      ..writeByte(53)
      ..write(obj.concept);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeSystem _$CodeSystemFromJson(Map<String, dynamic> json) {
  return CodeSystem(
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
    caseSensitive: json['caseSensitive'] as bool,
    elementCaseSensitive: json['elementCaseSensitive'] == null
        ? null
        : Element.fromJson(
            json['elementCaseSensitive'] as Map<String, dynamic>),
    valueSet: json['valueSet'] as String,
    hierarchyMeaning: json['hierarchyMeaning'] as String,
    elementHierarchyMeaning: json['elementHierarchyMeaning'] == null
        ? null
        : Element.fromJson(
            json['elementHierarchyMeaning'] as Map<String, dynamic>),
    compositional: json['compositional'] as bool,
    elementCompositional: json['elementCompositional'] == null
        ? null
        : Element.fromJson(
            json['elementCompositional'] as Map<String, dynamic>),
    versionNeeded: json['versionNeeded'] as bool,
    elementVersionNeeded: json['elementVersionNeeded'] == null
        ? null
        : Element.fromJson(
            json['elementVersionNeeded'] as Map<String, dynamic>),
    content: json['content'] as String,
    elementContent: json['elementContent'] == null
        ? null
        : Element.fromJson(json['elementContent'] as Map<String, dynamic>),
    supplements: json['supplements'] as String,
    count: json['count'] as int,
    elementCount: json['elementCount'] == null
        ? null
        : Element.fromJson(json['elementCount'] as Map<String, dynamic>),
    filter: (json['filter'] as List)
        ?.map((e) => e == null
            ? null
            : CodeSystem_Filter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    property: (json['property'] as List)
        ?.map((e) => e == null
            ? null
            : CodeSystem_Property.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    concept: (json['concept'] as List)
        ?.map((e) => e == null
            ? null
            : CodeSystem_Concept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CodeSystemToJson(CodeSystem instance) =>
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
      'caseSensitive': instance.caseSensitive,
      'elementCaseSensitive': instance.elementCaseSensitive?.toJson(),
      'valueSet': instance.valueSet,
      'hierarchyMeaning': instance.hierarchyMeaning,
      'elementHierarchyMeaning': instance.elementHierarchyMeaning?.toJson(),
      'compositional': instance.compositional,
      'elementCompositional': instance.elementCompositional?.toJson(),
      'versionNeeded': instance.versionNeeded,
      'elementVersionNeeded': instance.elementVersionNeeded?.toJson(),
      'content': instance.content,
      'elementContent': instance.elementContent?.toJson(),
      'supplements': instance.supplements,
      'count': instance.count,
      'elementCount': instance.elementCount?.toJson(),
      'filter': instance.filter?.map((e) => e?.toJson())?.toList(),
      'property': instance.property?.map((e) => e?.toJson())?.toList(),
      'concept': instance.concept?.map((e) => e?.toJson())?.toList(),
    };

CodeSystem_Filter _$CodeSystem_FilterFromJson(Map<String, dynamic> json) {
  return CodeSystem_Filter(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    operator: (json['operator'] as List)?.map((e) => e as String)?.toList(),
    elementOperator: (json['elementOperator'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CodeSystem_FilterToJson(CodeSystem_Filter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'operator': instance.operator,
      'elementOperator':
          instance.elementOperator?.map((e) => e?.toJson())?.toList(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
    };

CodeSystem_Property _$CodeSystem_PropertyFromJson(Map<String, dynamic> json) {
  return CodeSystem_Property(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    uri: json['uri'] as String,
    elementUri: json['elementUri'] == null
        ? null
        : Element.fromJson(json['elementUri'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CodeSystem_PropertyToJson(
        CodeSystem_Property instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'uri': instance.uri,
      'elementUri': instance.elementUri?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
    };

CodeSystem_Concept _$CodeSystem_ConceptFromJson(Map<String, dynamic> json) {
  return CodeSystem_Concept(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    display: json['display'] as String,
    elementDisplay: json['elementDisplay'] == null
        ? null
        : Element.fromJson(json['elementDisplay'] as Map<String, dynamic>),
    definition: json['definition'] as String,
    elementDefinition: json['elementDefinition'] == null
        ? null
        : Element.fromJson(json['elementDefinition'] as Map<String, dynamic>),
    designation: (json['designation'] as List)
        ?.map((e) => e == null
            ? null
            : CodeSystem_Designation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    property: (json['property'] as List)
        ?.map((e) => e == null
            ? null
            : CodeSystem_Property1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    concept: (json['concept'] as List)
        ?.map((e) => e == null
            ? null
            : CodeSystem_Concept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CodeSystem_ConceptToJson(CodeSystem_Concept instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'display': instance.display,
      'elementDisplay': instance.elementDisplay?.toJson(),
      'definition': instance.definition,
      'elementDefinition': instance.elementDefinition?.toJson(),
      'designation': instance.designation?.map((e) => e?.toJson())?.toList(),
      'property': instance.property?.map((e) => e?.toJson())?.toList(),
      'concept': instance.concept?.map((e) => e?.toJson())?.toList(),
    };

CodeSystem_Designation _$CodeSystem_DesignationFromJson(
    Map<String, dynamic> json) {
  return CodeSystem_Designation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    use: json['use'] == null
        ? null
        : Coding.fromJson(json['use'] as Map<String, dynamic>),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CodeSystem_DesignationToJson(
        CodeSystem_Designation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'use': instance.use?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
    };

CodeSystem_Property1 _$CodeSystem_Property1FromJson(Map<String, dynamic> json) {
  return CodeSystem_Property1(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    valueCode: json['valueCode'] as String,
    elementValueCode: json['elementValueCode'] == null
        ? null
        : Element.fromJson(json['elementValueCode'] as Map<String, dynamic>),
    valueCoding: json['valueCoding'] == null
        ? null
        : Coding.fromJson(json['valueCoding'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    elementValueInteger: json['elementValueInteger'] == null
        ? null
        : Element.fromJson(json['elementValueInteger'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueDateTime: json['valueDateTime'] as String,
    elementValueDateTime: json['elementValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementValueDateTime'] as Map<String, dynamic>),
    valueDecimal: (json['valueDecimal'] as num)?.toDouble(),
    elementValueDecimal: json['elementValueDecimal'] == null
        ? null
        : Element.fromJson(json['elementValueDecimal'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CodeSystem_Property1ToJson(
        CodeSystem_Property1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'valueCode': instance.valueCode,
      'elementValueCode': instance.elementValueCode?.toJson(),
      'valueCoding': instance.valueCoding?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueInteger': instance.valueInteger,
      'elementValueInteger': instance.elementValueInteger?.toJson(),
      'valueBoolean': instance.valueBoolean,
      'elementValueBoolean': instance.elementValueBoolean?.toJson(),
      'valueDateTime': instance.valueDateTime,
      'elementValueDateTime': instance.elementValueDateTime?.toJson(),
      'valueDecimal': instance.valueDecimal,
      'elementValueDecimal': instance.elementValueDecimal?.toJson(),
    };
