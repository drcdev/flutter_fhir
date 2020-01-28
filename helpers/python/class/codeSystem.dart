
part 'codeSystem.g.dart';

@JsonSerializable(explicitToJson: true)
class CodeSystem {
  
  // This is a CodeSystem 
  String resourcetype;

  // The logical id of the resource, as used in the URL for the resource. Once
  //  assigned, this value never changes.
  String id;

  // The metadata about the resource. This is content that is maintained by the
  //  infrastructure. Changes to the content might not always be associated with
  //  version changes to the resource.
  Meta meta;

  // A reference to a set of rules that were followed when the resource was
  //  constructed, and which must be understood when processing the content. Often,
  //  this is a reference to an implementation guide that defines the special rules
  //  along with other profiles etc.
  String implicitRules;

  // Extensions for implicitRules
  Element _implicitRules;

  // The base language in which the resource is written.
  String language;

  // Extensions for language
  Element _language;

  // A human-readable narrative that contains a summary of the resource and can
  //  be used to represent the content of the resource to a human. The narrative need
  //  not encode all the structured data, but is required to contain sufficient
  //  detail to make it "clinically safe" for a human to just read the narrative.
  //  Resource definitions may define what content should be represented in the
  //  narrative to ensure clinical safety.
  Narrative text;

  // These resources do not have an independent existence apart from the
  //  resource that contains them - they cannot be identified independently, and nor
  //  can they have their own independent transaction scope.
  List<ResourceList contained;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource and that modifies the understanding of the
  //  element that contains it and/or the understanding of the containing element's
  //  descendants. Usually modifier elements provide negation or qualification. To
  //  make the use of extensions safe and manageable, there is a strict set of
  //  governance applied to the definition and use of extensions. Though any
  //  implementer is allowed to define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // An absolute URI that is used to identify this code system when it is
  //  referenced in a specification, model, design or an instance; also called its
  //  canonical identifier. This SHOULD be globally unique and SHOULD be a literal
  //  address at which at which an authoritative instance of this code system is (or
  //  will be) published. This URL can be the target of a canonical reference. It
  //  SHALL remain the same when the code system is stored on different servers. This
  //  is used in [Coding](datatypes.html#Coding).system.
  String url;

  // Extensions for url
  Element _url;

  // A formal identifier that is used to identify this code system when it is
  //  represented in other formats, or referenced in a specification, model, design
  //  or an instance.
  List<Identifier identifier;

  // The identifier that is used to identify this version of the code system
  //  when it is referenced in a specification, model, design or instance. This is an
  //  arbitrary value managed by the code system author and is not expected to be
  //  globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a
  //  managed version is not available. There is also no expectation that versions
  //  can be placed in a lexicographical sequence. This is used in
  //  [Coding](datatypes.html#Coding).version.
  String version;

  // Extensions for version
  Element _version;

  // A natural language name identifying the code system. This name should be
  //  usable as an identifier for the module by machine processing applications such
  //  as code generation.
  String name;

  // Extensions for name
  Element _name;

  // A short, descriptive, user-friendly title for the code system.
  String title;

  // Extensions for title
  Element _title;

  // The date (and optionally time) when the code system resource was created or
  //  revised.Enum enum; // draftactiveretiredunknown status;

  // Extensions for status
  Element _status;

  // A Boolean value to indicate that this code system is authored for testing
  //  purposes (or education/evaluation/marketing) and is not intended to be used for
  //  genuine usage.
  bool experimental;

  // Extensions for experimental
  Element _experimental;

  // The date  (and optionally time) when the code system was published. The
  //  date must change when the business version changes and it must change if the
  //  status code changes. In addition, it should change when the substantive content
  //  of the code system changes.
  StringTime date;

  // Extensions for date
  Element _date;

  // The name of the organization or individual that published the code system.
  String publisher;

  // Extensions for publisher
  Element _publisher;

  // Contact details to assist a user in finding and communicating with the
  //  publisher.
  List<ContactDetail contact;

  // A free text natural language description of the code system from a
  //  consumer's perspective.
  String description;

  // Extensions for description
  Element _description;

  // The content was developed with a focus and intent of supporting the
  //  contexts that are listed. These contexts may be general categories (gender,
  //  age, ...) or may be references to specific programs (insurance plans, studies,
  //  ...) and may be used to assist with indexing and searching for appropriate code
  //  system instances.
  List<UsageContext useContext;

  // A legal or geographic region in which the code system is intended to be
  //  used.
  List<CodeableConcept jurisdiction;

  // Explanation of why this code system is needed and why it has been designed
  //  as it has.
  String purpose;

  // Extensions for purpose
  Element _purpose;

  // A copyright statement relating to the code system and/or its contents.
  //  Copyright statements are generally legal restrictions on the use and publishing
  //  of the code system.
  String copyright;

  // Extensions for copyright
  Element _copyright;

  // If code comparison is case sensitive when codes within this system are
  //  compared to each other.
  bool caseSensitive;

  // Extensions for caseSensitive
  Element _caseSensitive;

  // Canonical reference to the value set that contains the entire code system.
  String valueSet;

  // The meaning of the hierarchy of concepts as represented in this
  //  resource.Enum enum; // grouped-byis-apart-ofclassified-with hierarchyMeaning;

  // Extensions for hierarchyMeaning
  Element _hierarchyMeaning;

  // The code system defines a compositional (post-coordination) grammar.
  bool compositional;

  // Extensions for compositional
  Element _compositional;

  // This flag is used to signify that the code system does not commit to
  //  concept permanence across versions. If true, a version must be specified when
  //  referencing this code system.
  bool versionNeeded;

  // Extensions for versionNeeded
  Element _versionNeeded;

  // The extent of the content of the code system (the concepts and codes it
  //  defines) are represented in this resource instance.Enum enum; //
  //  not-presentexamplefragmentcompletesupplement content;

  // Extensions for content
  Element _content;

  // The canonical URL of the code system that this code system supplement is
  //  adding designations and properties to.
  String supplements;

  // The total number of concepts defined by the code system. Where the code
  //  system has a compositional grammar, the basis of this count is defined by the
  //  system steward.
  int count;

  // Extensions for count
  Element _count;

  // A filter that can be used in a value set compose statement when selecting
  //  concepts using a filter.
  List<CodeSystem_Filter filter;

  // A property defines an additional slot through which additional information
  //  can be provided about a concept.
  List<CodeSystem_Property property;

  // Concepts that are in the code system. The concept definitions are
  //  inherently hierarchical, but the definitions must be consulted to determine
  //  what the meanings of the hierarchical relationships are.
  List<CodeSystem_Concept concept
CodeSystem(
      {this.resourceType,
this.id,
this.meta,
this.implicitRules,
this._implicitRules,
this.language,
this._language,
this.text,
this.contained,
this.extension,
this.modifierExtension,
this.url,
this._url,
this.identifier,
this.version,
this._version,
this.name,
this._name,
this.title,
this._title,
this.status,
this._status,
this.experimental,
this._experimental,
this.date,
this._date,
this.publisher,
this._publisher,
this.contact,
this.description,
this._description,
this.useContext,
this.jurisdiction,
this.purpose,
this._purpose,
this.copyright,
this._copyright,
this.caseSensitive,
this._caseSensitive,
this.valueSet,
this.hierarchyMeaning,
this._hierarchyMeaning,
this.compositional,
this._compositional,
this.versionNeeded,
this._versionNeeded,
this.content,
this._content,
this.supplements,
this.count,
this._count,
this.filter,
this.property,
this.concept});

  factory CodeSystem.fromJson(Map<String, dynamic> json) => _$CodeSystemFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Concept {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A code - a text symbol - that uniquely identifies the concept within the
  //  code system.
  String code;

  // Extensions for code
  Element _code;

  // A human readable string that is the recommended default way to present this
  //  concept to a user.
  String display;

  // Extensions for display
  Element _display;

  // The formal definition of the concept. The code system resource does not
  //  make formal definitions required, because of the prevalence of legacy systems.
  //  However, they are highly recommended, as without them there is no formal
  //  meaning associated with the concept.
  String definition;

  // Extensions for definition
  Element _definition;

  // Additional representations for the concept - other languages, aliases,
  //  specialized purposes, used for particular purposes, etc.
  List<CodeSystem_Designation designation;

  // A property value for this concept.
  List<CodeSystem_Property1 property;

  // Defines children of a concept to produce a hierarchy of concepts. The
  //  nature of the relationships is variable (is-a/contains/categorizes) - see
  //  hierarchyMeaning.
  List<CodeSystem_Concept concept
CodeSystem_Concept(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.display,
this._display,
this.definition,
this._definition,
this.designation,
this.property,
this.concept});

  factory CodeSystem_Concept.fromJson(Map<String, dynamic> json) => _$CodeSystem_ConceptFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_ConceptToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Designation {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The language this designation is defined for.
  String language;

  // Extensions for language
  Element _language;

  // A code that details how this designation would be used.
  Coding use;

  // The text value for this designation.
  String value;

  // Extensions for value
  Element _value
CodeSystem_Designation(
      {this.id,
this.extension,
this.modifierExtension,
this.language,
this._language,
this.use,
this.value,
this._value});

  factory CodeSystem_Designation.fromJson(Map<String, dynamic> json) => _$CodeSystem_DesignationFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_DesignationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Filter {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The code that identifies this filter when it is used as a filter in
  //  [[[ValueSet]]].compose.include.filter.
  String code;

  // Extensions for code
  Element _code;

  // A description of how or why the filter is used.
  String description;

  // Extensions for description
  Element _description;

  // A list of operators that can be used with the filter.
  List<String operator;

  // Extensions for operator
  List<Element _operator;

  // A description of what the value for the filter should be.
  String value;

  // Extensions for value
  Element _value
CodeSystem_Filter(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.description,
this._description,
this.operator,
this._operator,
this.value,
this._value});

  factory CodeSystem_Filter.fromJson(Map<String, dynamic> json) => _$CodeSystem_FilterFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_FilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Property {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A code that is used to identify the property. The code is used internally
  //  (in CodeSystem.concept.property.code) and also externally, such as in property
  //  filters.
  String code;

  // Extensions for code
  Element _code;

  // Reference to the formal meaning of the property. One possible source of
  //  meaning is the [Concept Properties](codesystem-concept-properties.html) code
  //  system.
  String uri;

  // Extensions for uri
  Element _uri;

  // A description of the property- why it is defined, and how its value might
  //  be used.
  String description;

  // Extensions for description
  Element _description;

  // The type of the property value. Properties of type "code" contain a code
  //  defined by the code system (e.g. a reference to another defined concept).Enum
  //  enum; // codeCodingstringintegerbooleandateTimedecimal type;

  // Extensions for type
  Element _type
CodeSystem_Property(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.uri,
this._uri,
this.description,
this._description,
this.type,
this._type});

  factory CodeSystem_Property.fromJson(Map<String, dynamic> json) => _$CodeSystem_PropertyFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_PropertyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Property1 {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A code that is a reference to CodeSystem.property.code.
  String code;

  // Extensions for code
  Element _code;

  // The value of this property. string valueCode;

  // Extensions for valueCode
  Element _valueCode;

  // The value of this property.
  Coding valueCoding;

  // The value of this property. string valueString;

  // Extensions for valueString
  Element _valueString;

  // The value of this property. number valueInteger;

  // Extensions for valueInteger
  Element _valueInteger;

  // The value of this property. boolean valueBoolean;

  // Extensions for valueBoolean
  Element _valueBoolean;

  // The value of this property. string valueDateTime;

  // Extensions for valueDateTime
  Element _valueDateTime;

  // The value of this property. number valueDecimal;

  // Extensions for valueDecimal
  Element _valueDecimal
CodeSystem_Property1(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.valueCode,
this._valueCode,
this.valueCoding,
this.valueString,
this._valueString,
this.valueInteger,
this._valueInteger,
this.valueBoolean,
this._valueBoolean,
this.valueDateTime,
this._valueDateTime,
this.valueDecimal,
this._valueDecimal});

  factory CodeSystem_Property1.fromJson(Map<String, dynamic> json) => _$CodeSystem_Property1FromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_Property1ToJson(this);
}