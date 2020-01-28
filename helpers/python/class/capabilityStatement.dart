
part 'capabilityStatement.g.dart';

@JsonSerializable(explicitToJson: true)
class CapabilityStatement {
  
  // This is a CapabilityStatement 
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

  // An absolute URI that is used to identify this capability statement when it
  //  is referenced in a specification, model, design or an instance; also called its
  //  canonical identifier. This SHOULD be globally unique and SHOULD be a literal
  //  address at which at which an authoritative instance of this capability
  //  statement is (or will be) published. This URL can be the target of a canonical
  //  reference. It SHALL remain the same when the capability statement is stored on
  //  different servers.
  String url;

  // Extensions for url
  Element _url;

  // The identifier that is used to identify this version of the capability
  //  statement when it is referenced in a specification, model, design or instance.
  //  This is an arbitrary value managed by the capability statement author and is
  //  not expected to be globally unique. For example, it might be a timestamp (e.g.
  //  yyyymmdd) if a managed version is not available. There is also no expectation
  //  that versions can be placed in a lexicographical sequence.
  String version;

  // Extensions for version
  Element _version;

  // A natural language name identifying the capability statement. This name
  //  should be usable as an identifier for the module by machine processing
  //  applications such as code generation.
  String name;

  // Extensions for name
  Element _name;

  // A short, descriptive, user-friendly title for the capability statement.
  String title;

  // Extensions for title
  Element _title;

  // The status of this capability statement. Enables tracking the life-cycle of
  //  the content.Enum enum; // draftactiveretiredunknown status;

  // Extensions for status
  Element _status;

  // A Boolean value to indicate that this capability statement is authored for
  //  testing purposes (or education/evaluation/marketing) and is not intended to be
  //  used for genuine usage.
  bool experimental;

  // Extensions for experimental
  Element _experimental;

  // The date  (and optionally time) when the capability statement was
  //  published. The date must change when the business version changes and it must
  //  change if the status code changes. In addition, it should change when the
  //  substantive content of the capability statement changes.
  StringTime date;

  // Extensions for date
  Element _date;

  // The name of the organization or individual that published the capability
  //  statement.
  String publisher;

  // Extensions for publisher
  Element _publisher;

  // Contact details to assist a user in finding and communicating with the
  //  publisher.
  List<ContactDetail contact;

  // A free text natural language description of the capability statement from a
  //  consumer's perspective. Typically, this is used when the capability statement
  //  describes a desired rather than an actual solution, for example as a formal
  //  expression of requirements as part of an RFP.
  String description;

  // Extensions for description
  Element _description;

  // The content was developed with a focus and intent of supporting the
  //  contexts that are listed. These contexts may be general categories (gender,
  //  age, ...) or may be references to specific programs (insurance plans, studies,
  //  ...) and may be used to assist with indexing and searching for appropriate
  //  capability statement instances.
  List<UsageContext useContext;

  // A legal or geographic region in which the capability statement is intended
  //  to be used.
  List<CodeableConcept jurisdiction;

  // Explanation of why this capability statement is needed and why it has been
  //  designed as it has.
  String purpose;

  // Extensions for purpose
  Element _purpose;

  // A copyright statement relating to the capability statement and/or its
  //  contents. Copyright statements are generally legal restrictions on the use and
  //  publishing of the capability statement.
  String copyright;

  // Extensions for copyright
  Element _copyright;

  // The way that this statement is intended to be used, to describe an actual
  //  running instance of software, a particular product (kind, not instance of
  //  software) or a class of implementation (e.g. a desired purchase).Enum enum; //
  //  instancecapabilityrequirements kind;

  // Extensions for kind
  Element _kind;

  // Reference to a canonical URL of another CapabilityStatement that this
  //  software implements. This capability statement is a published API description
  //  that corresponds to a business service. The server may actually implement a
  //  subset of the capability statement it claims to implement, so the capability
  //  statement must specify the full capability details.
  List<String instantiates;

  // Reference to a canonical URL of another CapabilityStatement that this
  //  software adds to. The capability statement automatically includes everything in
  //  the other statement, and it is not duplicated, though the server may repeat the
  //  same resources, interactions and operations to add additional details to them.
  List<String imports;

  // Software that is covered by this capability statement.  It is used when the
  //  capability statement describes the capabilities of a particular software
  //  version, independent of an installation.
  CapabilityStatement_Software software;

  // Identifies a specific implementation instance that is described by the
  //  capability statement - i.e. a particular installation, rather than the
  //  capabilities of a software program.
  CapabilityStatement_Implementation implementation;

  // The version of the FHIR specification that this CapabilityStatement
  //  describes (which SHALL be the same as the FHIR version of the
  //  CapabilityStatement itself). There is no default value.Enum enum; //
  // 
  //  0.010.050.060.110.0.800.0.810.0.820.4.00.5.01.0.01.0.11.0.21.1.01.4.01.6.01.8.03.0.03.0.13.3.03.5.04.0.04.0.1 fhirVersion;

  // Extensions for fhirVersion
  Element _fhirVersion;

  // A list of the formats supported by this implementation using their content
  //  types.
  List<String format;

  // Extensions for format
  List<Element _format;

  // A list of the patch formats supported by this implementation using their
  //  content types.
  List<String patchFormat;

  // Extensions for patchFormat
  List<Element _patchFormat;

  // A list of implementation guides that the server does (or should) support in
  //  their entirety.
  List<String implementationGuide;

  // A definition of the restful capabilities of the solution, if any.
  List<CapabilityStatement_Rest rest;

  // A description of the messaging capabilities of the solution.
  List<CapabilityStatement_Messaging messaging;

  // A document definition.
  List<CapabilityStatement_Document document
CapabilityStatement(
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
this.kind,
this._kind,
this.instantiates,
this.imports,
this.software,
this.implementation,
this.fhirVersion,
this._fhirVersion,
this.format,
this._format,
this.patchFormat,
this._patchFormat,
this.implementationGuide,
this.rest,
this.messaging,
this.document});

  factory CapabilityStatement.fromJson(Map<String, dynamic> json) => _$CapabilityStatementFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatementToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Document {

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

  // Mode of this document declaration - whether an application is a producer or
  //  consumer.Enum enum; // producerconsumer mode;

  // Extensions for mode
  Element _mode;

  // A description of how the application supports or uses the specified
  //  document profile.  For example, when documents are created, what action is
  //  taken with consumed documents, etc.
  String documentation;

  // Extensions for documentation
  Element _documentation;

  // A profile on the document Bundle that constrains which resources are
  //  present, and their contents.
  String profile
CapabilityStatement_Document(
      {this.id,
this.extension,
this.modifierExtension,
this.mode,
this._mode,
this.documentation,
this._documentation,
this.profile});

  factory CapabilityStatement_Document.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_DocumentFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_DocumentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Endpoint {

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

  // A list of the messaging transport protocol(s) identifiers, supported by
  //  this endpoint.
  Coding protocol;

  // The network address of the endpoint. For solutions that do not use network
  //  addresses for routing, it can be just an identifier.
  String address;

  // Extensions for address
  Element _address
CapabilityStatement_Endpoint(
      {this.id,
this.extension,
this.modifierExtension,
this.protocol,
this.address,
this._address});

  factory CapabilityStatement_Endpoint.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_EndpointFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_EndpointToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Implementation {

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

  // Information about the specific installation that this capability statement
  //  relates to.
  String description;

  // Extensions for description
  Element _description;

  // An absolute base URL for the implementation.  This forms the base for REST
  //  interfaces as well as the mailbox and document interfaces.
  String url;

  // Extensions for url
  Element _url;

  // The organization responsible for the management of the instance and
  //  oversight of the data on the server at the specified URL.
  Reference custodian
CapabilityStatement_Implementation(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.url,
this._url,
this.custodian});

  factory CapabilityStatement_Implementation.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_ImplementationFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_ImplementationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Interaction {

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

  // Coded identifier of the operation, supported by the system resource.Enum
  //  enum; //
  //  readvreadupdatepatchdeletehistory-instancehistory-typecreatesearch-type code;

  // Extensions for code
  Element _code;

  // Guidance specific to the implementation of this operation, such as 'delete
  //  is a logical delete' or 'updates are only allowed with version id' or 'creates
  //  permitted from pre-authorized certificates only'.
  String documentation;

  // Extensions for documentation
  Element _documentation
CapabilityStatement_Interaction(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.documentation,
this._documentation});

  factory CapabilityStatement_Interaction.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_InteractionFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_InteractionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Interaction1 {

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

  // A coded identifier of the operation, supported by the system.Enum enum; //
  //  transactionbatchsearch-systemhistory-system code;

  // Extensions for code
  Element _code;

  // Guidance specific to the implementation of this operation, such as
  //  limitations on the kind of transactions allowed, or information about system
  //  wide search is implemented.
  String documentation;

  // Extensions for documentation
  Element _documentation
CapabilityStatement_Interaction1(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.documentation,
this._documentation});

  factory CapabilityStatement_Interaction1.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_Interaction1FromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_Interaction1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Messaging {

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

  // An endpoint (network accessible address) to which messages and/or replies
  //  are to be sent.
  List<CapabilityStatement_Endpoint endpoint;

  // Length if the receiver's reliable messaging cache in minutes (if a
  //  receiver) or how long the cache length on the receiver should be (if a sender).
  int reliableCache;

  // Extensions for reliableCache
  Element _reliableCache;

  // Documentation about the system's messaging capabilities for this endpoint
  //  not otherwise documented by the capability statement.  For example, the process
  //  for becoming an authorized messaging exchange partner.
  String documentation;

  // Extensions for documentation
  Element _documentation;

  // References to message definitions for messages this system can send or
  //  receive.
  List<CapabilityStatement_SupportedMessage supportedMessage
CapabilityStatement_Messaging(
      {this.id,
this.extension,
this.modifierExtension,
this.endpoint,
this.reliableCache,
this._reliableCache,
this.documentation,
this._documentation,
this.supportedMessage});

  factory CapabilityStatement_Messaging.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_MessagingFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_MessagingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Operation {

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

  // The name of the operation or query. For an operation, this is the name 
  //  prefixed with $ and used in the URL. For a query, this is the name used in the
  //  _query parameter when the query is called.
  String name;

  // Extensions for name
  Element _name;

  // Where the formal definition can be found. If a server references the base
  //  definition of an Operation (i.e. from the specification itself such as
  //  ```http://hl7.org/fhir/OperationDefinition/ValueSet-expand```), that means it
  //  supports the full capabilities of the operation - e.g. both GET and POST
  //  invocation.  If it only supports a subset, it must define its own custom
  //  [[[OperationDefinition]]] with a 'base' of the original OperationDefinition. 
  //  The custom definition would describe the specific subset of functionality supported.
  String definition;

  // Documentation that describes anything special about the operation behavior,
  //  possibly detailing different behavior for system, type and instance-level
  //  invocation of the operation.
  String documentation;

  // Extensions for documentation
  Element _documentation
CapabilityStatement_Operation(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.definition,
this.documentation,
this._documentation});

  factory CapabilityStatement_Operation.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_OperationFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_OperationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Resource {

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

  // A type of resource exposed via the restful interface.
  String type;

  // Extensions for type
  Element _type;

  // A specification of the profile that describes the solution's overall
  //  support for the resource, including any constraints on cardinality, bindings,
  //  lengths or other limitations. See further discussion in [Using
  //  Profiles](profiling.html#profile-uses).
  String profile;

  // A list of profiles that represent different use cases supported by the
  //  system. For a server, "supported by the system" means the system hosts/produces
  //  a set of resources that are conformant to a particular profile, and allows
  //  clients that use its services to search using this profile and to find
  //  appropriate data. For a client, it means the system will search by this profile
  //  and process data according to the guidance implicit in the profile. See further
  //  discussion in [Using Profiles](profiling.html#profile-uses).
  List<String supportedProfile;

  // Additional information about the resource type used by the system.
  String documentation;

  // Extensions for documentation
  Element _documentation;

  // Identifies a restful operation supported by the solution.
  List<CapabilityStatement_Interaction interaction;

  // This field is set to no-version to specify that the system does not support
  //  (server) or use (client) versioning for this resource type. If this has some
  //  other value, the server must at least correctly track and populate the
  //  versionId meta-property on resources. If the value is 'versioned-update', then
  //  the server supports all the versioning features, including using e-tags for
  //  version integrity in the API.Enum enum; // no-versionversionedversioned-update versioning;

  // Extensions for versioning
  Element _versioning;

  // A flag for whether the server is able to return past versions as part of
  //  the vRead operation.
  bool readHistory;

  // Extensions for readHistory
  Element _readHistory;

  // A flag to indicate that the server allows or needs to allow the client to
  //  create new identities on the server (that is, the client PUTs to a location
  //  where there is no existing resource). Allowing this operation means that the
  //  server allows the client to create new identities on the server.
  bool updateCreate;

  // Extensions for updateCreate
  Element _updateCreate;

  // A flag that indicates that the server supports conditional create.
  bool conditionalCreate;

  // Extensions for conditionalCreate
  Element _conditionalCreate;

  // A code that indicates how the server supports conditional read.Enum enum;
  //  // not-supportedmodified-sincenot-matchfull-support conditionalRead;

  // Extensions for conditionalRead
  Element _conditionalRead;

  // A flag that indicates that the server supports conditional update.
  bool conditionalUpdate;

  // Extensions for conditionalUpdate
  Element _conditionalUpdate;

  // A code that indicates how the server supports conditional delete.Enum enum;
  //  // not-supportedsinglemultiple conditionalDelete;

  // Extensions for conditionalDelete
  Element _conditionalDelete
  
  List< referencePolicy;

  // Extensions for referencePolicy
  List<Element _referencePolicy;

  // A list of _include values supported by the server.
  List<String searchInclude;

  // Extensions for searchInclude
  List<Element _searchInclude;

  // A list of _revinclude (reverse include) values supported by the server.
  List<String searchRevInclude;

  // Extensions for searchRevInclude
  List<Element _searchRevInclude;

  // Search parameters for implementations to support and/or make use of -
  //  either references to ones defined in the specification, or additional ones
  //  defined for/by the implementation.
  List<CapabilityStatement_SearchParam searchParam;

  // Definition of an operation or a named query together with its parameters
  //  and their meaning and type. Consult the definition of the operation for details
  //  about how to invoke the operation, and the parameters.
  List<CapabilityStatement_Operation operation
CapabilityStatement_Resource(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.profile,
this.supportedProfile,
this.documentation,
this._documentation,
this.interaction,
this.versioning,
this._versioning,
this.readHistory,
this._readHistory,
this.updateCreate,
this._updateCreate,
this.conditionalCreate,
this._conditionalCreate,
this.conditionalRead,
this._conditionalRead,
this.conditionalUpdate,
this._conditionalUpdate,
this.conditionalDelete,
this._conditionalDelete,
this.referencePolicy,
this._referencePolicy,
this.searchInclude,
this._searchInclude,
this.searchRevInclude,
this._searchRevInclude,
this.searchParam,
this.operation});

  factory CapabilityStatement_Resource.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_ResourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Rest {

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

  // Identifies whether this portion of the statement is describing the ability
  //  to initiate or receive restful operations.Enum enum; // clientserver mode;

  // Extensions for mode
  Element _mode;

  // Information about the system's restful capabilities that apply across all
  //  applications, such as security.
  String documentation;

  // Extensions for documentation
  Element _documentation;

  // Information about security implementation from an interface perspective -
  //  what a client needs to know.
  CapabilityStatement_Security security;

  // A specification of the restful capabilities of the solution for a specific
  //  resource type.
  List<CapabilityStatement_Resource resource;

  // A specification of restful operations supported by the system.
  List<CapabilityStatement_Interaction1 interaction;

  // Search parameters that are supported for searching all resources for
  //  implementations to support and/or make use of - either references to ones
  //  defined in the specification, or additional ones defined for/by the implementation.
  List<CapabilityStatement_SearchParam searchParam;

  // Definition of an operation or a named query together with its parameters
  //  and their meaning and type.
  List<CapabilityStatement_Operation operation;

  // An absolute URI which is a reference to the definition of a compartment
  //  that the system supports. The reference is to a CompartmentDefinition resource
  //  by its canonical URL .
  List<String compartment
CapabilityStatement_Rest(
      {this.id,
this.extension,
this.modifierExtension,
this.mode,
this._mode,
this.documentation,
this._documentation,
this.security,
this.resource,
this.interaction,
this.searchParam,
this.operation,
this.compartment});

  factory CapabilityStatement_Rest.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_RestFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_RestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_SearchParam {

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

  // The name of the search parameter used in the interface.
  String name;

  // Extensions for name
  Element _name;

  // An absolute URI that is a formal reference to where this parameter was
  //  first defined, so that a client can be confident of the meaning of the search
  //  parameter (a reference to [[[SearchParameter.url]]]). This element SHALL be
  //  populated if the search parameter refers to a SearchParameter defined by the
  //  FHIR core specification or externally defined IGs.
  String definition;

  // The type of value a search parameter refers to, and how the content is
  //  interpreted.Enum enum; //
  //  numberdatestringtokenreferencecompositequantityurispecial type;

  // Extensions for type
  Element _type;

  // This allows documentation of any distinct behaviors about how the search
  //  parameter is used.  For example, text matching algorithms.
  String documentation;

  // Extensions for documentation
  Element _documentation
CapabilityStatement_SearchParam(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.definition,
this.type,
this._type,
this.documentation,
this._documentation});

  factory CapabilityStatement_SearchParam.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SearchParamFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_SearchParamToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Security {

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

  // Server adds CORS headers when responding to requests - this enables
  //  Javascript applications to use the server.
  bool cors;

  // Extensions for cors
  Element _cors;

  // Types of security services that are supported/required by the system.
  List<CodeableConcept service;

  // General description of how security works.
  String description;

  // Extensions for description
  Element _description
CapabilityStatement_Security(
      {this.id,
this.extension,
this.modifierExtension,
this.cors,
this._cors,
this.service,
this.description,
this._description});

  factory CapabilityStatement_Security.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SecurityFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_SecurityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Software {

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

  // Name the software is known by.
  String name;

  // Extensions for name
  Element _name;

  // The version identifier for the software covered by this statement.
  String version;

  // Extensions for version
  Element _version;

  // Date this version of the software was released.
  StringTime releaseDate;

  // Extensions for releaseDate
  Element _releaseDate
CapabilityStatement_Software(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.version,
this._version,
this.releaseDate,
this._releaseDate});

  factory CapabilityStatement_Software.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SoftwareFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_SoftwareToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_SupportedMessage {

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

  // The mode of this event declaration - whether application is sender or
  //  receiver.Enum enum; // senderreceiver mode;

  // Extensions for mode
  Element _mode;

  // Points to a message definition that identifies the messaging event, message
  //  structure, allowed responses, etc.
  String definition
CapabilityStatement_SupportedMessage(
      {this.id,
this.extension,
this.modifierExtension,
this.mode,
this._mode,
this.definition});

  factory CapabilityStatement_SupportedMessage.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SupportedMessageFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_SupportedMessageToJson(this);
}