
part 'testScript.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript {
  
  // This is a TestScript 
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

  // An absolute URI that is used to identify this test script when it is
  //  referenced in a specification, model, design or an instance; also called its
  //  canonical identifier. This SHOULD be globally unique and SHOULD be a literal
  //  address at which at which an authoritative instance of this test script is (or
  //  will be) published. This URL can be the target of a canonical reference. It
  //  SHALL remain the same when the test script is stored on different servers.
  String url;

  // Extensions for url
  Element _url;

  // A formal identifier that is used to identify this test script when it is
  //  represented in other formats, or referenced in a specification, model, design
  //  or an instance.
  Identifier identifier;

  // The identifier that is used to identify this version of the test script
  //  when it is referenced in a specification, model, design or instance. This is an
  //  arbitrary value managed by the test script author and is not expected to be
  //  globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a
  //  managed version is not available. There is also no expectation that versions
  //  can be placed in a lexicographical sequence.
  String version;

  // Extensions for version
  Element _version;

  // A natural language name identifying the test script. This name should be
  //  usable as an identifier for the module by machine processing applications such
  //  as code generation.
  String name;

  // Extensions for name
  Element _name;

  // A short, descriptive, user-friendly title for the test script.
  String title;

  // Extensions for title
  Element _title;

  // The status of this test script. Enables tracking the life-cycle of the
  //  content.Enum enum; // draftactiveretiredunknown status;

  // Extensions for status
  Element _status;

  // A Boolean value to indicate that this test script is authored for testing
  //  purposes (or education/evaluation/marketing) and is not intended to be used for
  //  genuine usage.
  bool experimental;

  // Extensions for experimental
  Element _experimental;

  // The date  (and optionally time) when the test script was published. The
  //  date must change when the business version changes and it must change if the
  //  status code changes. In addition, it should change when the substantive content
  //  of the test script changes.
  StringTime date;

  // Extensions for date
  Element _date;

  // The name of the organization or individual that published the test script.
  String publisher;

  // Extensions for publisher
  Element _publisher;

  // Contact details to assist a user in finding and communicating with the
  //  publisher.
  List<ContactDetail contact;

  // A free text natural language description of the test script from a
  //  consumer's perspective.
  String description;

  // Extensions for description
  Element _description;

  // The content was developed with a focus and intent of supporting the
  //  contexts that are listed. These contexts may be general categories (gender,
  //  age, ...) or may be references to specific programs (insurance plans, studies,
  //  ...) and may be used to assist with indexing and searching for appropriate test
  //  script instances.
  List<UsageContext useContext;

  // A legal or geographic region in which the test script is intended to be
  //  used.
  List<CodeableConcept jurisdiction;

  // Explanation of why this test script is needed and why it has been designed
  //  as it has.
  String purpose;

  // Extensions for purpose
  Element _purpose;

  // A copyright statement relating to the test script and/or its contents.
  //  Copyright statements are generally legal restrictions on the use and publishing
  //  of the test script.
  String copyright;

  // Extensions for copyright
  Element _copyright;

  // An abstract server used in operations within this test script in the origin
  //  element.
  List<TestScript_Origin origin;

  // An abstract server used in operations within this test script in the
  //  destination element.
  List<TestScript_Destination destination;

  // The required capability must exist and are assumed to function correctly on
  //  the FHIR server being tested.
  TestScript_Metadata metadata;

  // Fixture in the test script - by reference (uri). All fixtures are required
  //  for the test script to execute.
  List<TestScript_Fixture fixture;

  // Reference to the profile to be used for validation.
  List<Reference profile;

  // Variable is set based either on element value in response body or on header
  //  field value in the response headers.
  List<TestScript_Variable variable;

  // A series of required setup operations before tests are executed.
  TestScript_Setup setup;

  // A test in this script.
  List<TestScript_Test test;

  // A series of operations required to clean up after all the tests are
  //  executed (successfully or otherwise).
  TestScript_Teardown teardown
TestScript(
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
this.origin,
this.destination,
this.metadata,
this.fixture,
this.profile,
this.variable,
this.setup,
this.test,
this.teardown});

  factory TestScript.fromJson(Map<String, dynamic> json) => _$TestScriptFromJson(json);
  Map<String, dynamic> toJson() => _$TestScriptToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Action {

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

  // The operation to perform.
  TestScript_Operation operation;

  // Evaluates the results of previous operations to determine if the server
  //  under test behaves appropriately.
  TestScript_Assert assert
TestScript_Action(
      {this.id,
this.extension,
this.modifierExtension,
this.operation,
this.assert});

  factory TestScript_Action.fromJson(Map<String, dynamic> json) => _$TestScript_ActionFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Action1 {

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

  // An operation would involve a REST request to a server.
  TestScript_Operation operation;

  // Evaluates the results of previous operations to determine if the server
  //  under test behaves appropriately.
  TestScript_Assert assert
TestScript_Action1(
      {this.id,
this.extension,
this.modifierExtension,
this.operation,
this.assert});

  factory TestScript_Action1.fromJson(Map<String, dynamic> json) => _$TestScript_Action1FromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_Action1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Action2 {

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

  // An operation would involve a REST request to a server.
  TestScript_Operation operation
TestScript_Action2(
      {this.id,
this.extension,
this.modifierExtension,
this.operation});

  factory TestScript_Action2.fromJson(Map<String, dynamic> json) => _$TestScript_Action2FromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_Action2ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Assert {

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

  // The label would be used for tracking/logging purposes by test engines.
  String label;

  // Extensions for label
  Element _label;

  // The description would be used by test engines for tracking and reporting
  //  purposes.
  String description;

  // Extensions for description
  Element _description;

  // The direction to use for the assertion.Enum enum; // responserequest
  //  direction;

  // Extensions for direction
  Element _direction;

  // Id of the source fixture used as the contents to be evaluated by either the
  //  "source/expression" or "sourceId/path" definition.
  String compareToSourceId;

  // Extensions for compareToSourceId
  Element _compareToSourceId;

  // The FHIRPath expression to evaluate against the source fixture. When
  //  compareToSourceId is defined, either compareToSourceExpression or
  //  compareToSourcePath must be defined, but not both.
  String compareToSourceExpression;

  // Extensions for compareToSourceExpression
  Element _compareToSourceExpression;

  // XPath or JSONPath expression to evaluate against the source fixture. When
  //  compareToSourceId is defined, either compareToSourceExpression or
  //  compareToSourcePath must be defined, but not both.
  String compareToSourcePath;

  // Extensions for compareToSourcePath
  Element _compareToSourcePath;

  // The mime-type contents to compare against the request or response message
  //  'Content-Type' header.
  String contentType;

  // Extensions for contentType
  Element _contentType;

  // The FHIRPath expression to be evaluated against the request or response
  //  message contents - HTTP headers and payload.
  String expression;

  // Extensions for expression
  Element _expression;

  // The HTTP header field name e.g. 'Location'.
  String headerField;

  // Extensions for headerField
  Element _headerField;

  // The ID of a fixture.  Asserts that the response contains at a minimum the
  //  fixture specified by minimumId.
  String minimumId;

  // Extensions for minimumId
  Element _minimumId;

  // Whether or not the test execution performs validation on the bundle
  //  navigation links.
  bool navigationLinks;

  // Extensions for navigationLinks
  Element _navigationLinks;

  // The operator type defines the conditional behavior of the assert. If not
  //  defined, the default is equals.Enum enum; //
  //  equalsnotEqualsinnotIngreaterThanlessThanemptynotEmptycontainsnotContainseval operator;

  // Extensions for operator
  Element _operator;

  // The XPath or JSONPath expression to be evaluated against the fixture
  //  representing the response received from server.
  String path;

  // Extensions for path
  Element _path;

  // The request method or HTTP operation code to compare against that used by
  //  the client system under test.Enum enum; // deletegetoptionspatchpostputhead
  //  requestMethod;

  // Extensions for requestMethod
  Element _requestMethod;

  // The value to use in a comparison against the request URL path string.
  String requestURL;

  // Extensions for requestURL
  Element _requestURL;

  // The type of the resource.  See http://build.fhir.org/resourcelist.html.
  String resource;

  // Extensions for resource
  Element _resource;

  // okay | created | noContent | notModified | bad | forbidden | notFound |
  //  methodNotAllowed | conflict | gone | preconditionFailed | unprocessable.Enum
  //  enum; //
  //  okaycreatednoContentnotModifiedbadforbiddennotFoundmethodNotAllowedconflictgonepreconditionFailedunprocessable response;

  // Extensions for response
  Element _response;

  // The value of the HTTP response code to be tested.
  String responseCode;

  // Extensions for responseCode
  Element _responseCode;

  // Fixture to evaluate the XPath/JSONPath expression or the headerField 
  //  against.
  String sourceId;

  // Extensions for sourceId
  Element _sourceId;

  // The ID of the Profile to validate against.
  String validateProfileId;

  // Extensions for validateProfileId
  Element _validateProfileId;

  // The value to compare to.
  String value;

  // Extensions for value
  Element _value;

  // Whether or not the test execution will produce a warning only on error for
  //  this assert.
  bool warningOnly;

  // Extensions for warningOnly
  Element _warningOnly
TestScript_Assert(
      {this.id,
this.extension,
this.modifierExtension,
this.label,
this._label,
this.description,
this._description,
this.direction,
this._direction,
this.compareToSourceId,
this._compareToSourceId,
this.compareToSourceExpression,
this._compareToSourceExpression,
this.compareToSourcePath,
this._compareToSourcePath,
this.contentType,
this._contentType,
this.expression,
this._expression,
this.headerField,
this._headerField,
this.minimumId,
this._minimumId,
this.navigationLinks,
this._navigationLinks,
this.operator,
this._operator,
this.path,
this._path,
this.requestMethod,
this._requestMethod,
this.requestURL,
this._requestURL,
this.resource,
this._resource,
this.response,
this._response,
this.responseCode,
this._responseCode,
this.sourceId,
this._sourceId,
this.validateProfileId,
this._validateProfileId,
this.value,
this._value,
this.warningOnly,
this._warningOnly});

  factory TestScript_Assert.fromJson(Map<String, dynamic> json) => _$TestScript_AssertFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_AssertToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Capability {

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

  // Whether or not the test execution will require the given capabilities of
  //  the server in order for this test script to execute.
  bool required;

  // Extensions for required
  Element _required;

  // Whether or not the test execution will validate the given capabilities of
  //  the server in order for this test script to execute.
  bool validated;

  // Extensions for validated
  Element _validated;

  // Description of the capabilities that this test script is requiring the
  //  server to support.
  String description;

  // Extensions for description
  Element _description;

  // Which origin server these requirements apply to.
  List<int origin;

  // Extensions for origin
  List<Element _origin;

  // Which server these requirements apply to.
  int destination;

  // Extensions for destination
  Element _destination;

  // Links to the FHIR specification that describes this interaction and the
  //  resources involved in more detail.
  List<String link;

  // Extensions for link
  List<Element _link;

  // Minimum capabilities required of server for test script to execute
  //  successfully.   If server does not meet at a minimum the referenced capability
  //  statement, then all tests in this script are skipped.
  String capabilities
TestScript_Capability(
      {this.id,
this.extension,
this.modifierExtension,
this.required,
this._required,
this.validated,
this._validated,
this.description,
this._description,
this.origin,
this._origin,
this.destination,
this._destination,
this.link,
this._link,
this.capabilities});

  factory TestScript_Capability.fromJson(Map<String, dynamic> json) => _$TestScript_CapabilityFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_CapabilityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Destination {

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

  // Abstract name given to a destination server in this test script.  The name
  //  is provided as a number starting at 1.
  int index;

  // Extensions for index
  Element _index;

  // The type of destination profile the test system supports.
  Coding profile
TestScript_Destination(
      {this.id,
this.extension,
this.modifierExtension,
this.index,
this._index,
this.profile});

  factory TestScript_Destination.fromJson(Map<String, dynamic> json) => _$TestScript_DestinationFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_DestinationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Fixture {

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

  // Whether or not to implicitly create the fixture during setup. If true, the
  //  fixture is automatically created on each server being tested during setup,
  //  therefore no create operation is required for this fixture in the
  //  TestScript.setup section.
  bool autocreate;

  // Extensions for autocreate
  Element _autocreate;

  // Whether or not to implicitly delete the fixture during teardown. If true,
  //  the fixture is automatically deleted on each server being tested during
  //  teardown, therefore no delete operation is required for this fixture in the
  //  TestScript.teardown section.
  bool autodelete;

  // Extensions for autodelete
  Element _autodelete;

  // Reference to the resource (containing the contents of the resource needed
  //  for operations).
  Reference resource
TestScript_Fixture(
      {this.id,
this.extension,
this.modifierExtension,
this.autocreate,
this._autocreate,
this.autodelete,
this._autodelete,
this.resource});

  factory TestScript_Fixture.fromJson(Map<String, dynamic> json) => _$TestScript_FixtureFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_FixtureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Link {

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

  // URL to a particular requirement or feature within the FHIR specification.
  String url;

  // Extensions for url
  Element _url;

  // Short description of the link.
  String description;

  // Extensions for description
  Element _description
TestScript_Link(
      {this.id,
this.extension,
this.modifierExtension,
this.url,
this._url,
this.description,
this._description});

  factory TestScript_Link.fromJson(Map<String, dynamic> json) => _$TestScript_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_LinkToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Metadata {

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

  // A link to the FHIR specification that this test is covering.
  List<TestScript_Link link;

  // Capabilities that must exist and are assumed to function correctly on the
  //  FHIR server being tested.
  List<TestScript_Capability capability
TestScript_Metadata(
      {this.id,
this.extension,
this.modifierExtension,
this.link,
this.capability});

  factory TestScript_Metadata.fromJson(Map<String, dynamic> json) => _$TestScript_MetadataFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_MetadataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Operation {

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

  // Server interaction or operation type.
  Coding type;

  // The type of the resource.  See http://build.fhir.org/resourcelist.html.
  String resource;

  // Extensions for resource
  Element _resource;

  // The label would be used for tracking/logging purposes by test engines.
  String label;

  // Extensions for label
  Element _label;

  // The description would be used by test engines for tracking and reporting
  //  purposes.
  String description;

  // Extensions for description
  Element _description;

  // The mime-type to use for RESTful operation in the 'Accept' header.
  String accept;

  // Extensions for accept
  Element _accept;

  // The mime-type to use for RESTful operation in the 'Content-Type' header.
  String contentType;

  // Extensions for contentType
  Element _contentType;

  // The server where the request message is destined for.  Must be one of the
  //  server numbers listed in TestScript.destination section.
  int destination;

  // Extensions for destination
  Element _destination;

  // Whether or not to implicitly send the request url in encoded format. The
  //  default is true to match the standard RESTful client behavior. Set to false
  //  when communicating with a server that does not support encoded url paths.
  bool encodeRequestUrl;

  // Extensions for encodeRequestUrl
  Element _encodeRequestUrl;

  // The HTTP method the test engine MUST use for this operation regardless of
  //  any other operation details.Enum enum; // deletegetoptionspatchpostputhead
  //  method;

  // Extensions for method
  Element _method;

  // The server where the request message originates from.  Must be one of the
  //  server numbers listed in TestScript.origin section.
  int origin;

  // Extensions for origin
  Element _origin;

  // Path plus parameters after [type].  Used to set parts of the request URL
  //  explicitly.
  String params;

  // Extensions for params
  Element _params;

  // Header elements would be used to set HTTP headers.
  List<TestScript_RequestHeader requestHeader;

  // The fixture id (maybe new) to map to the request.
  String requestId;

  // Extensions for requestId
  Element _requestId;

  // The fixture id (maybe new) to map to the response.
  String responseId;

  // Extensions for responseId
  Element _responseId;

  // The id of the fixture used as the body of a PUT or POST request.
  String sourceId;

  // Extensions for sourceId
  Element _sourceId;

  // Id of fixture used for extracting the [id],  [type], and [vid] for GET
  //  requests.
  String targetId;

  // Extensions for targetId
  Element _targetId;

  // Complete request URL.
  String url;

  // Extensions for url
  Element _url
TestScript_Operation(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.resource,
this._resource,
this.label,
this._label,
this.description,
this._description,
this.accept,
this._accept,
this.contentType,
this._contentType,
this.destination,
this._destination,
this.encodeRequestUrl,
this._encodeRequestUrl,
this.method,
this._method,
this.origin,
this._origin,
this.params,
this._params,
this.requestHeader,
this.requestId,
this._requestId,
this.responseId,
this._responseId,
this.sourceId,
this._sourceId,
this.targetId,
this._targetId,
this.url,
this._url});

  factory TestScript_Operation.fromJson(Map<String, dynamic> json) => _$TestScript_OperationFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_OperationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Origin {

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

  // Abstract name given to an origin server in this test script.  The name is
  //  provided as a number starting at 1.
  int index;

  // Extensions for index
  Element _index;

  // The type of origin profile the test system supports.
  Coding profile
TestScript_Origin(
      {this.id,
this.extension,
this.modifierExtension,
this.index,
this._index,
this.profile});

  factory TestScript_Origin.fromJson(Map<String, dynamic> json) => _$TestScript_OriginFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_OriginToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_RequestHeader {

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

  // The HTTP header field e.g. "Accept".
  String field;

  // Extensions for field
  Element _field;

  // The value of the header e.g. "application/fhir+xml".
  String value;

  // Extensions for value
  Element _value
TestScript_RequestHeader(
      {this.id,
this.extension,
this.modifierExtension,
this.field,
this._field,
this.value,
this._value});

  factory TestScript_RequestHeader.fromJson(Map<String, dynamic> json) => _$TestScript_RequestHeaderFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_RequestHeaderToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Setup {

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

  // Action would contain either an operation or an assertion.
  List<TestScript_Action action
TestScript_Setup(
      {this.id,
this.extension,
this.modifierExtension,
this.action});

  factory TestScript_Setup.fromJson(Map<String, dynamic> json) => _$TestScript_SetupFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_SetupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Teardown {

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

  // The teardown action will only contain an operation.
  List<TestScript_Action2 action
TestScript_Teardown(
      {this.id,
this.extension,
this.modifierExtension,
this.action});

  factory TestScript_Teardown.fromJson(Map<String, dynamic> json) => _$TestScript_TeardownFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_TeardownToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Test {

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

  // The name of this test used for tracking/logging purposes by test engines.
  String name;

  // Extensions for name
  Element _name;

  // A short description of the test used by test engines for tracking and
  //  reporting purposes.
  String description;

  // Extensions for description
  Element _description;

  // Action would contain either an operation or an assertion.
  List<TestScript_Action1 action
TestScript_Test(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.description,
this._description,
this.action});

  factory TestScript_Test.fromJson(Map<String, dynamic> json) => _$TestScript_TestFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_TestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Variable {

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

  // Descriptive name for this variable.
  String name;

  // Extensions for name
  Element _name;

  // A default, hard-coded, or user-defined value for this variable.
  String defaultValue;

  // Extensions for defaultValue
  Element _defaultValue;

  // A free text natural language description of the variable and its purpose.
  String description;

  // Extensions for description
  Element _description;

  // The FHIRPath expression to evaluate against the fixture body. When
  //  variables are defined, only one of either expression, headerField or path must
  //  be specified.
  String expression;

  // Extensions for expression
  Element _expression;

  // Will be used to grab the HTTP header field value from the headers that
  //  sourceId is pointing to.
  String headerField;

  // Extensions for headerField
  Element _headerField;

  // Displayable text string with hint help information to the user when
  //  entering a default value.
  String hint;

  // Extensions for hint
  Element _hint;

  // XPath or JSONPath to evaluate against the fixture body.  When variables are
  //  defined, only one of either expression, headerField or path must be specified.
  String path;

  // Extensions for path
  Element _path;

  // Fixture to evaluate the XPath/JSONPath expression or the headerField 
  //  against within this variable.
  String sourceId;

  // Extensions for sourceId
  Element _sourceId
TestScript_Variable(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.defaultValue,
this._defaultValue,
this.description,
this._description,
this.expression,
this._expression,
this.headerField,
this._headerField,
this.hint,
this._hint,
this.path,
this._path,
this.sourceId,
this._sourceId});

  factory TestScript_Variable.fromJson(Map<String, dynamic> json) => _$TestScript_VariableFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_VariableToJson(this);
}
