import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
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
@HiveType(typeId: 626)
class TestScript {

  //  This is a TestScript resource
  @HiveField(0)
  final String resourceType= 'TestScript';

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

  //  An absolute URI that is used to identify this test script when it is
  // referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this test script is (or will be) published. This URL can be the
  // target of a canonical reference. It SHALL remain the same when the test
  // script is stored on different servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  A formal identifier that is used to identify this test script when it
  // is represented in other formats, or referenced in a specification,
  // model, design or an instance.
  @HiveField(13)
  Identifier identifier;

  //  The identifier that is used to identify this version of the test
  // script when it is referenced in a specification, model, design or
  // instance. This is an arbitrary value managed by the test script author
  // and is not expected to be globally unique. For example, it might be a
  // timestamp (e.g. yyyymmdd) if a managed version is not available. There
  // is also no expectation that versions can be placed in a lexicographical
  // sequence.
  @HiveField(14)
  String version;

  //  Extensions for version
  @HiveField(15)
  Element elementVersion;

  //  A natural language name identifying the test script. This name should
  // be usable as an identifier for the module by machine processing
  // applications such as code generation.
  @HiveField(16)
  String name;

  //  Extensions for name
  @HiveField(17)
  Element elementName;

  //  A short, descriptive, user-friendly title for the test script.
  @HiveField(18)
  String title;

  //  Extensions for title
  @HiveField(19)
  Element elementTitle;

  //  The status of this test script. Enables tracking the life-cycle of the
  // content.
  @HiveField(20)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(21)
  Element elementStatus;

  //  A Boolean value to indicate that this test script is authored for
  // testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  @HiveField(22)
  bool experimental;

  //  Extensions for experimental
  @HiveField(23)
  Element elementExperimental;

  //  The date  (and optionally time) when the test script was published.
  // The date must change when the business version changes and it must
  // change if the status code changes. In addition, it should change when
  // the substantive content of the test script changes.
  @HiveField(24)
  DateTime date;

  //  Extensions for date
  @HiveField(25)
  Element elementDate;

  //  The name of the organization or individual that published the test
  // script.
  @HiveField(26)
  String publisher;

  //  Extensions for publisher
  @HiveField(27)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(28)
  List<ContactDetail> contact;

  //  A free text natural language description of the test script from a
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
  // searching for appropriate test script instances.
  @HiveField(31)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the test script is intended to
  // be used.
  @HiveField(32)
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this test script is needed and why it has been
  // designed as it has.
  @HiveField(33)
  String purpose;

  //  Extensions for purpose
  @HiveField(34)
  Element elementPurpose;

  //  A copyright statement relating to the test script and/or its contents.
  // Copyright statements are generally legal restrictions on the use and
  // publishing of the test script.
  @HiveField(35)
  String copyright;

  //  Extensions for copyright
  @HiveField(36)
  Element elementCopyright;

  //  An abstract server used in operations within this test script in the
  // origin element.
  @HiveField(37)
  List<TestScript_Origin> origin;

  //  An abstract server used in operations within this test script in the
  // destination element.
  @HiveField(38)
  List<TestScript_Destination> destination;

  //  The required capability must exist and are assumed to function
  // correctly on the FHIR server being tested.
  @HiveField(39)
  TestScript_Metadata metadata;

  //  Fixture in the test script - by reference (uri). All fixtures are
  // required for the test script to execute.
  @HiveField(40)
  List<TestScript_Fixture> fixture;

  //  Reference to the profile to be used for validation.
  @HiveField(41)
  List<Reference> profile;

  //  Variable is set based either on element value in response body or on
  // header field value in the response headers.
  @HiveField(42)
  List<TestScript_Variable> variable;

  //  A series of required setup operations before tests are executed.
  @HiveField(43)
  TestScript_Setup setup;

  //  A test in this script.
  @HiveField(44)
  List<TestScript_Test> test;

  //  A series of operations required to clean up after all the tests are
  // executed (successfully or otherwise).
  @HiveField(45)
  TestScript_Teardown teardown;

TestScript(
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
    this.origin,
    this.destination,
    this.metadata,
    this.fixture,
    this.profile,
    this.variable,
    this.setup,
    this.test,
    this.teardown
    });

  factory TestScript.fromJson(Map<String, dynamic> json) => _$TestScriptFromJson(json);
  Map<String, dynamic> toJson() => _$TestScriptToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 627)
class TestScript_Origin {

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

  //  Abstract name given to an origin server in this test script.  The name
  // is provided as a number starting at 1.
  @HiveField(3)
  int index;

  //  Extensions for index
  @HiveField(4)
  Element elementIndex;

  //  The type of origin profile the test system supports.
  @HiveField(5)
  Coding profile;

TestScript_Origin(
  this.profile,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.index,
    this.elementIndex
    });

  factory TestScript_Origin.fromJson(Map<String, dynamic> json) => _$TestScript_OriginFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_OriginToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 628)
class TestScript_Destination {

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

  //  Abstract name given to a destination server in this test script.  The
  // name is provided as a number starting at 1.
  @HiveField(3)
  int index;

  //  Extensions for index
  @HiveField(4)
  Element elementIndex;

  //  The type of destination profile the test system supports.
  @HiveField(5)
  Coding profile;

TestScript_Destination(
  this.profile,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.index,
    this.elementIndex
    });

  factory TestScript_Destination.fromJson(Map<String, dynamic> json) => _$TestScript_DestinationFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_DestinationToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 629)
class TestScript_Metadata {

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

  //  A link to the FHIR specification that this test is covering.
  @HiveField(3)
  List<TestScript_Link> link;

  //  Capabilities that must exist and are assumed to function correctly on
  // the FHIR server being tested.
  @HiveField(4)
  List<TestScript_Capability> capability;

TestScript_Metadata(
  this.capability,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.link
    });

  factory TestScript_Metadata.fromJson(Map<String, dynamic> json) => _$TestScript_MetadataFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_MetadataToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 630)
class TestScript_Link {

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

  //  URL to a particular requirement or feature within the FHIR
  // specification.
  @HiveField(3)
  String url;

  //  Extensions for url
  @HiveField(4)
  Element elementUrl;

  //  Short description of the link.
  @HiveField(5)
  String description;

  //  Extensions for description
  @HiveField(6)
  Element elementDescription;

TestScript_Link(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.url,
    this.elementUrl,
    this.description,
    this.elementDescription
    });

  factory TestScript_Link.fromJson(Map<String, dynamic> json) => _$TestScript_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_LinkToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 631)
class TestScript_Capability {

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

  //  Whether or not the test execution will require the given capabilities
  // of the server in order for this test script to execute.
  @HiveField(3)
  bool required;

  //  Extensions for required
  @HiveField(4)
  Element elementRequired;

  //  Whether or not the test execution will validate the given capabilities
  // of the server in order for this test script to execute.
  @HiveField(5)
  bool validated;

  //  Extensions for validated
  @HiveField(6)
  Element elementValidated;

  //  Description of the capabilities that this test script is requiring the
  // server to support.
  @HiveField(7)
  String description;

  //  Extensions for description
  @HiveField(8)
  Element elementDescription;

  //  Which origin server these requirements apply to.
  @HiveField(9)
  List<int> origin;

  //  Extensions for origin
  @HiveField(10)
  List<Element> elementOrigin;

  //  Which server these requirements apply to.
  @HiveField(11)
  int destination;

  //  Extensions for destination
  @HiveField(12)
  Element elementDestination;

  //  Links to the FHIR specification that describes this interaction and
  // the resources involved in more detail.
  @HiveField(13)
  List<String> link;

  //  Extensions for link
  @HiveField(14)
  List<Element> elementLink;

  //  Minimum capabilities required of server for test script to execute
  // successfully.   If server does not meet at a minimum the referenced
  // capability statement, then all tests in this script are skipped.
  @HiveField(15)
  String capabilities;

TestScript_Capability(
  this.capabilities,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.required,
    this.elementRequired,
    this.validated,
    this.elementValidated,
    this.description,
    this.elementDescription,
    this.origin,
    this.elementOrigin,
    this.destination,
    this.elementDestination,
    this.link,
    this.elementLink
    });

  factory TestScript_Capability.fromJson(Map<String, dynamic> json) => _$TestScript_CapabilityFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_CapabilityToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 632)
class TestScript_Fixture {

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

  //  Whether or not to implicitly create the fixture during setup. If true,
  // the fixture is automatically created on each server being tested during
  // setup, therefore no create operation is required for this fixture in
  // the TestScript.setup section.
  @HiveField(3)
  bool autocreate;

  //  Extensions for autocreate
  @HiveField(4)
  Element elementAutocreate;

  //  Whether or not to implicitly delete the fixture during teardown. If
  // true, the fixture is automatically deleted on each server being tested
  // during teardown, therefore no delete operation is required for this
  // fixture in the TestScript.teardown section.
  @HiveField(5)
  bool autodelete;

  //  Extensions for autodelete
  @HiveField(6)
  Element elementAutodelete;

  //  Reference to the resource (containing the contents of the resource
  // needed for operations).
  @HiveField(7)
  Reference resource;

TestScript_Fixture(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.autocreate,
    this.elementAutocreate,
    this.autodelete,
    this.elementAutodelete,
    this.resource
    });

  factory TestScript_Fixture.fromJson(Map<String, dynamic> json) => _$TestScript_FixtureFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_FixtureToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 633)
class TestScript_Variable {

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

  //  Descriptive name for this variable.
  @HiveField(3)
  String name;

  //  Extensions for name
  @HiveField(4)
  Element elementName;

  //  A default, hard-coded, or user-defined value for this variable.
  @HiveField(5)
  String defaultValue;

  //  Extensions for defaultValue
  @HiveField(6)
  Element elementDefaultValue;

  //  A free text natural language description of the variable and its
  // purpose.
  @HiveField(7)
  String description;

  //  Extensions for description
  @HiveField(8)
  Element elementDescription;

  //  The FHIRPath expression to evaluate against the fixture body. When
  // variables are defined, only one of either expression, headerField or
  // path must be specified.
  @HiveField(9)
  String expression;

  //  Extensions for expression
  @HiveField(10)
  Element elementExpression;

  //  Will be used to grab the HTTP header field value from the headers that
  // sourceId is pointing to.
  @HiveField(11)
  String headerField;

  //  Extensions for headerField
  @HiveField(12)
  Element elementHeaderField;

  //  Displayable text string with hint help information to the user when
  // entering a default value.
  @HiveField(13)
  String hint;

  //  Extensions for hint
  @HiveField(14)
  Element elementHint;

  //  XPath or JSONPath to evaluate against the fixture body.  When
  // variables are defined, only one of either expression, headerField or
  // path must be specified.
  @HiveField(15)
  String path;

  //  Extensions for path
  @HiveField(16)
  Element elementPath;

  //  Fixture to evaluate the XPath/JSONPath expression or the headerField 
  // against within this variable.
  @HiveField(17)
  String sourceId;

  //  Extensions for sourceId
  @HiveField(18)
  Element elementSourceId;

TestScript_Variable(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.defaultValue,
    this.elementDefaultValue,
    this.description,
    this.elementDescription,
    this.expression,
    this.elementExpression,
    this.headerField,
    this.elementHeaderField,
    this.hint,
    this.elementHint,
    this.path,
    this.elementPath,
    this.sourceId,
    this.elementSourceId
    });

  factory TestScript_Variable.fromJson(Map<String, dynamic> json) => _$TestScript_VariableFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_VariableToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 634)
class TestScript_Setup {

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

  //  Action would contain either an operation or an assertion.
  @HiveField(3)
  List<TestScript_Action> action;

TestScript_Setup(
  this.action,
    {this.id,
    this.extension,
    this.modifierExtension
    });

  factory TestScript_Setup.fromJson(Map<String, dynamic> json) => _$TestScript_SetupFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_SetupToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 635)
class TestScript_Action {

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

  //  The operation to perform.
  @HiveField(3)
  TestScript_Operation operation;

  //  Evaluates the results of previous operations to determine if the
  // server under test behaves appropriately.
  @HiveField(4)
  TestScript_Assert asserts;

TestScript_Action(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.operation,
    this.asserts
    });

  factory TestScript_Action.fromJson(Map<String, dynamic> json) => _$TestScript_ActionFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 636)
class TestScript_Operation {

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

  //  Server interaction or operation type.
  @HiveField(3)
  Coding type;

  //  The type of the resource.  See
  // http://build.fhir.org/resourcelist.html.
  @HiveField(4)
  String resource;

  //  Extensions for resource
  @HiveField(5)
  Element elementResource;

  //  The label would be used for tracking/logging purposes by test engines.
  @HiveField(6)
  String label;

  //  Extensions for label
  @HiveField(7)
  Element elementLabel;

  //  The description would be used by test engines for tracking and
  // reporting purposes.
  @HiveField(8)
  String description;

  //  Extensions for description
  @HiveField(9)
  Element elementDescription;

  //  The mime-type to use for RESTful operation in the 'Accept' header.
  @HiveField(10)
  String accept;

  //  Extensions for accept
  @HiveField(11)
  Element elementAccept;

  //  The mime-type to use for RESTful operation in the 'Content-Type'
  // header.
  @HiveField(12)
  String contentType;

  //  Extensions for contentType
  @HiveField(13)
  Element elementContentType;

  //  The server where the request message is destined for.  Must be one of
  // the server numbers listed in TestScript.destination section.
  @HiveField(14)
  int destination;

  //  Extensions for destination
  @HiveField(15)
  Element elementDestination;

  //  Whether or not to implicitly send the request url in encoded format.
  // The default is true to match the standard RESTful client behavior. Set
  // to false when communicating with a server that does not support encoded
  // url paths.
  @HiveField(16)
  bool encodeRequestUrl;

  //  Extensions for encodeRequestUrl
  @HiveField(17)
  Element elementEncodeRequestUrl;

  //  The HTTP method the test engine MUST use for this operation regardless
  // of any other operation details.
  @HiveField(18)
  String method; // <code> enum: delete/get/options/patch/post/put/head;

  //  Extensions for method
  @HiveField(19)
  Element elementMethod;

  //  The server where the request message originates from.  Must be one of
  // the server numbers listed in TestScript.origin section.
  @HiveField(20)
  int origin;

  //  Extensions for origin
  @HiveField(21)
  Element elementOrigin;

  //  Path plus parameters after [type].  Used to set parts of the request
  // URL explicitly.
  @HiveField(22)
  String params;

  //  Extensions for params
  @HiveField(23)
  Element elementParams;

  //  Header elements would be used to set HTTP headers.
  @HiveField(24)
  List<TestScript_RequestHeader> requestHeader;

  //  The fixture id (maybe new) to map to the request.
  @HiveField(25)
  String requestId;

  //  Extensions for requestId
  @HiveField(26)
  Element elementRequestId;

  //  The fixture id (maybe new) to map to the response.
  @HiveField(27)
  String responseId;

  //  Extensions for responseId
  @HiveField(28)
  Element elementResponseId;

  //  The id of the fixture used as the body of a PUT or POST request.
  @HiveField(29)
  String sourceId;

  //  Extensions for sourceId
  @HiveField(30)
  Element elementSourceId;

  //  Id of fixture used for extracting the [id],  [type], and [vid] for GET
  // requests.
  @HiveField(31)
  String targetId;

  //  Extensions for targetId
  @HiveField(32)
  Element elementTargetId;

  //  Complete request URL.
  @HiveField(33)
  String url;

  //  Extensions for url
  @HiveField(34)
  Element elementUrl;

TestScript_Operation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.resource,
    this.elementResource,
    this.label,
    this.elementLabel,
    this.description,
    this.elementDescription,
    this.accept,
    this.elementAccept,
    this.contentType,
    this.elementContentType,
    this.destination,
    this.elementDestination,
    this.encodeRequestUrl,
    this.elementEncodeRequestUrl,
    this.method,
    this.elementMethod,
    this.origin,
    this.elementOrigin,
    this.params,
    this.elementParams,
    this.requestHeader,
    this.requestId,
    this.elementRequestId,
    this.responseId,
    this.elementResponseId,
    this.sourceId,
    this.elementSourceId,
    this.targetId,
    this.elementTargetId,
    this.url,
    this.elementUrl
    });

  factory TestScript_Operation.fromJson(Map<String, dynamic> json) => _$TestScript_OperationFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_OperationToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 637)
class TestScript_RequestHeader {

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

  //  The HTTP header field e.g. "Accept".
  @HiveField(3)
  String field;

  //  Extensions for field
  @HiveField(4)
  Element elementField;

  //  The value of the header e.g. "application/fhir+xml".
  @HiveField(5)
  String value;

  //  Extensions for value
  @HiveField(6)
  Element elementValue;

TestScript_RequestHeader(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.field,
    this.elementField,
    this.value,
    this.elementValue
    });

  factory TestScript_RequestHeader.fromJson(Map<String, dynamic> json) => _$TestScript_RequestHeaderFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_RequestHeaderToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 638)
class TestScript_Assert {

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

  //  The label would be used for tracking/logging purposes by test engines.
  @HiveField(3)
  String label;

  //  Extensions for label
  @HiveField(4)
  Element elementLabel;

  //  The description would be used by test engines for tracking and
  // reporting purposes.
  @HiveField(5)
  String description;

  //  Extensions for description
  @HiveField(6)
  Element elementDescription;

  //  The direction to use for the assertion.
  @HiveField(7)
  String direction; // <code> enum: response/request;

  //  Extensions for direction
  @HiveField(8)
  Element elementDirection;

  //  Id of the source fixture used as the contents to be evaluated by
  // either the "source/expression" or "sourceId/path" definition.
  @HiveField(9)
  String compareToSourceId;

  //  Extensions for compareToSourceId
  @HiveField(10)
  Element elementCompareToSourceId;

  //  The FHIRPath expression to evaluate against the source fixture. When
  // compareToSourceId is defined, either compareToSourceExpression or
  // compareToSourcePath must be defined, but not both.
  @HiveField(11)
  String compareToSourceExpression;

  //  Extensions for compareToSourceExpression
  @HiveField(12)
  Element elementCompareToSourceExpression;

  //  XPath or JSONPath expression to evaluate against the source fixture.
  // When compareToSourceId is defined, either compareToSourceExpression or
  // compareToSourcePath must be defined, but not both.
  @HiveField(13)
  String compareToSourcePath;

  //  Extensions for compareToSourcePath
  @HiveField(14)
  Element elementCompareToSourcePath;

  //  The mime-type contents to compare against the request or response
  // message 'Content-Type' header.
  @HiveField(15)
  String contentType;

  //  Extensions for contentType
  @HiveField(16)
  Element elementContentType;

  //  The FHIRPath expression to be evaluated against the request or
  // response message contents - HTTP headers and payload.
  @HiveField(17)
  String expression;

  //  Extensions for expression
  @HiveField(18)
  Element elementExpression;

  //  The HTTP header field name e.g. 'Location'.
  @HiveField(19)
  String headerField;

  //  Extensions for headerField
  @HiveField(20)
  Element elementHeaderField;

  //  The ID of a fixture.  Asserts that the response contains at a minimum
  // the fixture specified by minimumId.
  @HiveField(21)
  String minimumId;

  //  Extensions for minimumId
  @HiveField(22)
  Element elementMinimumId;

  //  Whether or not the test execution performs validation on the bundle
  // navigation links.
  @HiveField(23)
  bool navigationLinks;

  //  Extensions for navigationLinks
  @HiveField(24)
  Element elementNavigationLinks;

  //  The operator type defines the conditional behavior of the assert. If
  // not defined, the default is equals.
  @HiveField(25)
  String operator; // <code> enum: equals/notEquals/in/notIn/greaterThan/lessThan/empty/notEmpty/contains/notContains/eval;

  //  Extensions for operator
  @HiveField(26)
  Element elementOperator;

  //  The XPath or JSONPath expression to be evaluated against the fixture
  // representing the response received from server.
  @HiveField(27)
  String path;

  //  Extensions for path
  @HiveField(28)
  Element elementPath;

  //  The request method or HTTP operation code to compare against that used
  // by the client system under test.
  @HiveField(29)
  String requestMethod; // <code> enum: delete/get/options/patch/post/put/head;

  //  Extensions for requestMethod
  @HiveField(30)
  Element elementRequestMethod;

  //  The value to use in a comparison against the request URL path string.
  @HiveField(31)
  String requestURL;

  //  Extensions for requestURL
  @HiveField(32)
  Element elementRequestURL;

  //  The type of the resource.  See
  // http://build.fhir.org/resourcelist.html.
  @HiveField(33)
  String resource;

  //  Extensions for resource
  @HiveField(34)
  Element elementResource;

  //  okay | created | noContent | notModified | bad | forbidden | notFound
  // | methodNotAllowed | conflict | gone | preconditionFailed |
  // unprocessable.
  @HiveField(35)
  String response; // <code> enum: okay/created/noContent/notModified/bad/forbidden/notFound/methodNotAllowed/conflict/gone/preconditionFailed/unprocessable;

  //  Extensions for response
  @HiveField(36)
  Element elementResponse;

  //  The value of the HTTP response code to be tested.
  @HiveField(37)
  String responseCode;

  //  Extensions for responseCode
  @HiveField(38)
  Element elementResponseCode;

  //  Fixture to evaluate the XPath/JSONPath expression or the headerField 
  // against.
  @HiveField(39)
  String sourceId;

  //  Extensions for sourceId
  @HiveField(40)
  Element elementSourceId;

  //  The ID of the Profile to validate against.
  @HiveField(41)
  String validateProfileId;

  //  Extensions for validateProfileId
  @HiveField(42)
  Element elementValidateProfileId;

  //  The value to compare to.
  @HiveField(43)
  String value;

  //  Extensions for value
  @HiveField(44)
  Element elementValue;

  //  Whether or not the test execution will produce a warning only on error
  // for this assert.
  @HiveField(45)
  bool warningOnly;

  //  Extensions for warningOnly
  @HiveField(46)
  Element elementWarningOnly;

TestScript_Assert(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.label,
    this.elementLabel,
    this.description,
    this.elementDescription,
    this.direction,
    this.elementDirection,
    this.compareToSourceId,
    this.elementCompareToSourceId,
    this.compareToSourceExpression,
    this.elementCompareToSourceExpression,
    this.compareToSourcePath,
    this.elementCompareToSourcePath,
    this.contentType,
    this.elementContentType,
    this.expression,
    this.elementExpression,
    this.headerField,
    this.elementHeaderField,
    this.minimumId,
    this.elementMinimumId,
    this.navigationLinks,
    this.elementNavigationLinks,
    this.operator,
    this.elementOperator,
    this.path,
    this.elementPath,
    this.requestMethod,
    this.elementRequestMethod,
    this.requestURL,
    this.elementRequestURL,
    this.resource,
    this.elementResource,
    this.response,
    this.elementResponse,
    this.responseCode,
    this.elementResponseCode,
    this.sourceId,
    this.elementSourceId,
    this.validateProfileId,
    this.elementValidateProfileId,
    this.value,
    this.elementValue,
    this.warningOnly,
    this.elementWarningOnly
    });

  factory TestScript_Assert.fromJson(Map<String, dynamic> json) => _$TestScript_AssertFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_AssertToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 639)
class TestScript_Test {

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

  //  The name of this test used for tracking/logging purposes by test
  // engines.
  @HiveField(3)
  String name;

  //  Extensions for name
  @HiveField(4)
  Element elementName;

  //  A short description of the test used by test engines for tracking and
  // reporting purposes.
  @HiveField(5)
  String description;

  //  Extensions for description
  @HiveField(6)
  Element elementDescription;

  //  Action would contain either an operation or an assertion.
  @HiveField(7)
  List<TestScript_Action1> action;

TestScript_Test(
  this.action,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.description,
    this.elementDescription
    });

  factory TestScript_Test.fromJson(Map<String, dynamic> json) => _$TestScript_TestFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_TestToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 640)
class TestScript_Action1 {

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

  //  An operation would involve a REST request to a server.
  @HiveField(3)
  TestScript_Operation operation;

  //  Evaluates the results of previous operations to determine if the
  // server under test behaves appropriately.
  @HiveField(4)
  TestScript_Assert asserts;

TestScript_Action1(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.operation,
    this.asserts
    });

  factory TestScript_Action1.fromJson(Map<String, dynamic> json) => _$TestScript_Action1FromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_Action1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 641)
class TestScript_Teardown {

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

  //  The teardown action will only contain an operation.
  @HiveField(3)
  List<TestScript_Action2> action;

TestScript_Teardown(
  this.action,
    {this.id,
    this.extension,
    this.modifierExtension
    });

  factory TestScript_Teardown.fromJson(Map<String, dynamic> json) => _$TestScript_TeardownFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_TeardownToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 642)
class TestScript_Action2 {

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

  //  An operation would involve a REST request to a server.
  @HiveField(3)
  TestScript_Operation operation;

TestScript_Action2(
  this.operation,
    {this.id,
    this.extension,
    this.modifierExtension
    });

  factory TestScript_Action2.fromJson(Map<String, dynamic> json) => _$TestScript_Action2FromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_Action2ToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TestScriptAdapter extends TypeAdapter<TestScript> {
  @override
  final typeId = 626;

  @override
  TestScript read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript(
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
      identifier: fields[13] as Identifier,
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
      origin: (fields[37] as List)?.cast<TestScript_Origin>(),
      destination: (fields[38] as List)?.cast<TestScript_Destination>(),
      metadata: fields[39] as TestScript_Metadata,
      fixture: (fields[40] as List)?.cast<TestScript_Fixture>(),
      profile: (fields[41] as List)?.cast<Reference>(),
      variable: (fields[42] as List)?.cast<TestScript_Variable>(),
      setup: fields[43] as TestScript_Setup,
      test: (fields[44] as List)?.cast<TestScript_Test>(),
      teardown: fields[45] as TestScript_Teardown,
    );
  }

  @override
  void write(BinaryWriter writer, TestScript obj) {
    writer
      ..writeByte(46)
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
      ..write(obj.origin)
      ..writeByte(38)
      ..write(obj.destination)
      ..writeByte(39)
      ..write(obj.metadata)
      ..writeByte(40)
      ..write(obj.fixture)
      ..writeByte(41)
      ..write(obj.profile)
      ..writeByte(42)
      ..write(obj.variable)
      ..writeByte(43)
      ..write(obj.setup)
      ..writeByte(44)
      ..write(obj.test)
      ..writeByte(45)
      ..write(obj.teardown);
  }
}

class TestScript_OriginAdapter extends TypeAdapter<TestScript_Origin> {
  @override
  final typeId = 627;

  @override
  TestScript_Origin read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Origin(
      fields[5] as Coding,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      index: fields[3] as int,
      elementIndex: fields[4] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, TestScript_Origin obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.index)
      ..writeByte(4)
      ..write(obj.elementIndex)
      ..writeByte(5)
      ..write(obj.profile);
  }
}

class TestScript_DestinationAdapter
    extends TypeAdapter<TestScript_Destination> {
  @override
  final typeId = 628;

  @override
  TestScript_Destination read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Destination(
      fields[5] as Coding,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      index: fields[3] as int,
      elementIndex: fields[4] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, TestScript_Destination obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.index)
      ..writeByte(4)
      ..write(obj.elementIndex)
      ..writeByte(5)
      ..write(obj.profile);
  }
}

class TestScript_MetadataAdapter extends TypeAdapter<TestScript_Metadata> {
  @override
  final typeId = 629;

  @override
  TestScript_Metadata read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Metadata(
      (fields[4] as List)?.cast<TestScript_Capability>(),
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      link: (fields[3] as List)?.cast<TestScript_Link>(),
    );
  }

  @override
  void write(BinaryWriter writer, TestScript_Metadata obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.link)
      ..writeByte(4)
      ..write(obj.capability);
  }
}

class TestScript_LinkAdapter extends TypeAdapter<TestScript_Link> {
  @override
  final typeId = 630;

  @override
  TestScript_Link read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Link(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      url: fields[3] as String,
      elementUrl: fields[4] as Element,
      description: fields[5] as String,
      elementDescription: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, TestScript_Link obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.url)
      ..writeByte(4)
      ..write(obj.elementUrl)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.elementDescription);
  }
}

class TestScript_CapabilityAdapter extends TypeAdapter<TestScript_Capability> {
  @override
  final typeId = 631;

  @override
  TestScript_Capability read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Capability(
      fields[15] as String,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      required: fields[3] as bool,
      elementRequired: fields[4] as Element,
      validated: fields[5] as bool,
      elementValidated: fields[6] as Element,
      description: fields[7] as String,
      elementDescription: fields[8] as Element,
      origin: (fields[9] as List)?.cast<int>(),
      elementOrigin: (fields[10] as List)?.cast<Element>(),
      destination: fields[11] as int,
      elementDestination: fields[12] as Element,
      link: (fields[13] as List)?.cast<String>(),
      elementLink: (fields[14] as List)?.cast<Element>(),
    );
  }

  @override
  void write(BinaryWriter writer, TestScript_Capability obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.required)
      ..writeByte(4)
      ..write(obj.elementRequired)
      ..writeByte(5)
      ..write(obj.validated)
      ..writeByte(6)
      ..write(obj.elementValidated)
      ..writeByte(7)
      ..write(obj.description)
      ..writeByte(8)
      ..write(obj.elementDescription)
      ..writeByte(9)
      ..write(obj.origin)
      ..writeByte(10)
      ..write(obj.elementOrigin)
      ..writeByte(11)
      ..write(obj.destination)
      ..writeByte(12)
      ..write(obj.elementDestination)
      ..writeByte(13)
      ..write(obj.link)
      ..writeByte(14)
      ..write(obj.elementLink)
      ..writeByte(15)
      ..write(obj.capabilities);
  }
}

class TestScript_FixtureAdapter extends TypeAdapter<TestScript_Fixture> {
  @override
  final typeId = 632;

  @override
  TestScript_Fixture read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Fixture(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      autocreate: fields[3] as bool,
      elementAutocreate: fields[4] as Element,
      autodelete: fields[5] as bool,
      elementAutodelete: fields[6] as Element,
      resource: fields[7] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, TestScript_Fixture obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.autocreate)
      ..writeByte(4)
      ..write(obj.elementAutocreate)
      ..writeByte(5)
      ..write(obj.autodelete)
      ..writeByte(6)
      ..write(obj.elementAutodelete)
      ..writeByte(7)
      ..write(obj.resource);
  }
}

class TestScript_VariableAdapter extends TypeAdapter<TestScript_Variable> {
  @override
  final typeId = 633;

  @override
  TestScript_Variable read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Variable(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      defaultValue: fields[5] as String,
      elementDefaultValue: fields[6] as Element,
      description: fields[7] as String,
      elementDescription: fields[8] as Element,
      expression: fields[9] as String,
      elementExpression: fields[10] as Element,
      headerField: fields[11] as String,
      elementHeaderField: fields[12] as Element,
      hint: fields[13] as String,
      elementHint: fields[14] as Element,
      path: fields[15] as String,
      elementPath: fields[16] as Element,
      sourceId: fields[17] as String,
      elementSourceId: fields[18] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, TestScript_Variable obj) {
    writer
      ..writeByte(19)
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
      ..write(obj.defaultValue)
      ..writeByte(6)
      ..write(obj.elementDefaultValue)
      ..writeByte(7)
      ..write(obj.description)
      ..writeByte(8)
      ..write(obj.elementDescription)
      ..writeByte(9)
      ..write(obj.expression)
      ..writeByte(10)
      ..write(obj.elementExpression)
      ..writeByte(11)
      ..write(obj.headerField)
      ..writeByte(12)
      ..write(obj.elementHeaderField)
      ..writeByte(13)
      ..write(obj.hint)
      ..writeByte(14)
      ..write(obj.elementHint)
      ..writeByte(15)
      ..write(obj.path)
      ..writeByte(16)
      ..write(obj.elementPath)
      ..writeByte(17)
      ..write(obj.sourceId)
      ..writeByte(18)
      ..write(obj.elementSourceId);
  }
}

class TestScript_SetupAdapter extends TypeAdapter<TestScript_Setup> {
  @override
  final typeId = 634;

  @override
  TestScript_Setup read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Setup(
      (fields[3] as List)?.cast<TestScript_Action>(),
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
    );
  }

  @override
  void write(BinaryWriter writer, TestScript_Setup obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.action);
  }
}

class TestScript_ActionAdapter extends TypeAdapter<TestScript_Action> {
  @override
  final typeId = 635;

  @override
  TestScript_Action read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Action(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      operation: fields[3] as TestScript_Operation,
      asserts: fields[4] as TestScript_Assert,
    );
  }

  @override
  void write(BinaryWriter writer, TestScript_Action obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.operation)
      ..writeByte(4)
      ..write(obj.asserts);
  }
}

class TestScript_OperationAdapter extends TypeAdapter<TestScript_Operation> {
  @override
  final typeId = 636;

  @override
  TestScript_Operation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Operation(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as Coding,
      resource: fields[4] as String,
      elementResource: fields[5] as Element,
      label: fields[6] as String,
      elementLabel: fields[7] as Element,
      description: fields[8] as String,
      elementDescription: fields[9] as Element,
      accept: fields[10] as String,
      elementAccept: fields[11] as Element,
      contentType: fields[12] as String,
      elementContentType: fields[13] as Element,
      destination: fields[14] as int,
      elementDestination: fields[15] as Element,
      encodeRequestUrl: fields[16] as bool,
      elementEncodeRequestUrl: fields[17] as Element,
      method: fields[18] as String,
      elementMethod: fields[19] as Element,
      origin: fields[20] as int,
      elementOrigin: fields[21] as Element,
      params: fields[22] as String,
      elementParams: fields[23] as Element,
      requestHeader: (fields[24] as List)?.cast<TestScript_RequestHeader>(),
      requestId: fields[25] as String,
      elementRequestId: fields[26] as Element,
      responseId: fields[27] as String,
      elementResponseId: fields[28] as Element,
      sourceId: fields[29] as String,
      elementSourceId: fields[30] as Element,
      targetId: fields[31] as String,
      elementTargetId: fields[32] as Element,
      url: fields[33] as String,
      elementUrl: fields[34] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, TestScript_Operation obj) {
    writer
      ..writeByte(35)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.resource)
      ..writeByte(5)
      ..write(obj.elementResource)
      ..writeByte(6)
      ..write(obj.label)
      ..writeByte(7)
      ..write(obj.elementLabel)
      ..writeByte(8)
      ..write(obj.description)
      ..writeByte(9)
      ..write(obj.elementDescription)
      ..writeByte(10)
      ..write(obj.accept)
      ..writeByte(11)
      ..write(obj.elementAccept)
      ..writeByte(12)
      ..write(obj.contentType)
      ..writeByte(13)
      ..write(obj.elementContentType)
      ..writeByte(14)
      ..write(obj.destination)
      ..writeByte(15)
      ..write(obj.elementDestination)
      ..writeByte(16)
      ..write(obj.encodeRequestUrl)
      ..writeByte(17)
      ..write(obj.elementEncodeRequestUrl)
      ..writeByte(18)
      ..write(obj.method)
      ..writeByte(19)
      ..write(obj.elementMethod)
      ..writeByte(20)
      ..write(obj.origin)
      ..writeByte(21)
      ..write(obj.elementOrigin)
      ..writeByte(22)
      ..write(obj.params)
      ..writeByte(23)
      ..write(obj.elementParams)
      ..writeByte(24)
      ..write(obj.requestHeader)
      ..writeByte(25)
      ..write(obj.requestId)
      ..writeByte(26)
      ..write(obj.elementRequestId)
      ..writeByte(27)
      ..write(obj.responseId)
      ..writeByte(28)
      ..write(obj.elementResponseId)
      ..writeByte(29)
      ..write(obj.sourceId)
      ..writeByte(30)
      ..write(obj.elementSourceId)
      ..writeByte(31)
      ..write(obj.targetId)
      ..writeByte(32)
      ..write(obj.elementTargetId)
      ..writeByte(33)
      ..write(obj.url)
      ..writeByte(34)
      ..write(obj.elementUrl);
  }
}

class TestScript_RequestHeaderAdapter
    extends TypeAdapter<TestScript_RequestHeader> {
  @override
  final typeId = 637;

  @override
  TestScript_RequestHeader read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_RequestHeader(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      field: fields[3] as String,
      elementField: fields[4] as Element,
      value: fields[5] as String,
      elementValue: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, TestScript_RequestHeader obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.field)
      ..writeByte(4)
      ..write(obj.elementField)
      ..writeByte(5)
      ..write(obj.value)
      ..writeByte(6)
      ..write(obj.elementValue);
  }
}

class TestScript_AssertAdapter extends TypeAdapter<TestScript_Assert> {
  @override
  final typeId = 638;

  @override
  TestScript_Assert read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Assert(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      label: fields[3] as String,
      elementLabel: fields[4] as Element,
      description: fields[5] as String,
      elementDescription: fields[6] as Element,
      direction: fields[7] as String,
      elementDirection: fields[8] as Element,
      compareToSourceId: fields[9] as String,
      elementCompareToSourceId: fields[10] as Element,
      compareToSourceExpression: fields[11] as String,
      elementCompareToSourceExpression: fields[12] as Element,
      compareToSourcePath: fields[13] as String,
      elementCompareToSourcePath: fields[14] as Element,
      contentType: fields[15] as String,
      elementContentType: fields[16] as Element,
      expression: fields[17] as String,
      elementExpression: fields[18] as Element,
      headerField: fields[19] as String,
      elementHeaderField: fields[20] as Element,
      minimumId: fields[21] as String,
      elementMinimumId: fields[22] as Element,
      navigationLinks: fields[23] as bool,
      elementNavigationLinks: fields[24] as Element,
      operator: fields[25] as String,
      elementOperator: fields[26] as Element,
      path: fields[27] as String,
      elementPath: fields[28] as Element,
      requestMethod: fields[29] as String,
      elementRequestMethod: fields[30] as Element,
      requestURL: fields[31] as String,
      elementRequestURL: fields[32] as Element,
      resource: fields[33] as String,
      elementResource: fields[34] as Element,
      response: fields[35] as String,
      elementResponse: fields[36] as Element,
      responseCode: fields[37] as String,
      elementResponseCode: fields[38] as Element,
      sourceId: fields[39] as String,
      elementSourceId: fields[40] as Element,
      validateProfileId: fields[41] as String,
      elementValidateProfileId: fields[42] as Element,
      value: fields[43] as String,
      elementValue: fields[44] as Element,
      warningOnly: fields[45] as bool,
      elementWarningOnly: fields[46] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, TestScript_Assert obj) {
    writer
      ..writeByte(47)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.label)
      ..writeByte(4)
      ..write(obj.elementLabel)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.elementDescription)
      ..writeByte(7)
      ..write(obj.direction)
      ..writeByte(8)
      ..write(obj.elementDirection)
      ..writeByte(9)
      ..write(obj.compareToSourceId)
      ..writeByte(10)
      ..write(obj.elementCompareToSourceId)
      ..writeByte(11)
      ..write(obj.compareToSourceExpression)
      ..writeByte(12)
      ..write(obj.elementCompareToSourceExpression)
      ..writeByte(13)
      ..write(obj.compareToSourcePath)
      ..writeByte(14)
      ..write(obj.elementCompareToSourcePath)
      ..writeByte(15)
      ..write(obj.contentType)
      ..writeByte(16)
      ..write(obj.elementContentType)
      ..writeByte(17)
      ..write(obj.expression)
      ..writeByte(18)
      ..write(obj.elementExpression)
      ..writeByte(19)
      ..write(obj.headerField)
      ..writeByte(20)
      ..write(obj.elementHeaderField)
      ..writeByte(21)
      ..write(obj.minimumId)
      ..writeByte(22)
      ..write(obj.elementMinimumId)
      ..writeByte(23)
      ..write(obj.navigationLinks)
      ..writeByte(24)
      ..write(obj.elementNavigationLinks)
      ..writeByte(25)
      ..write(obj.operator)
      ..writeByte(26)
      ..write(obj.elementOperator)
      ..writeByte(27)
      ..write(obj.path)
      ..writeByte(28)
      ..write(obj.elementPath)
      ..writeByte(29)
      ..write(obj.requestMethod)
      ..writeByte(30)
      ..write(obj.elementRequestMethod)
      ..writeByte(31)
      ..write(obj.requestURL)
      ..writeByte(32)
      ..write(obj.elementRequestURL)
      ..writeByte(33)
      ..write(obj.resource)
      ..writeByte(34)
      ..write(obj.elementResource)
      ..writeByte(35)
      ..write(obj.response)
      ..writeByte(36)
      ..write(obj.elementResponse)
      ..writeByte(37)
      ..write(obj.responseCode)
      ..writeByte(38)
      ..write(obj.elementResponseCode)
      ..writeByte(39)
      ..write(obj.sourceId)
      ..writeByte(40)
      ..write(obj.elementSourceId)
      ..writeByte(41)
      ..write(obj.validateProfileId)
      ..writeByte(42)
      ..write(obj.elementValidateProfileId)
      ..writeByte(43)
      ..write(obj.value)
      ..writeByte(44)
      ..write(obj.elementValue)
      ..writeByte(45)
      ..write(obj.warningOnly)
      ..writeByte(46)
      ..write(obj.elementWarningOnly);
  }
}

class TestScript_TestAdapter extends TypeAdapter<TestScript_Test> {
  @override
  final typeId = 639;

  @override
  TestScript_Test read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Test(
      (fields[7] as List)?.cast<TestScript_Action1>(),
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      description: fields[5] as String,
      elementDescription: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, TestScript_Test obj) {
    writer
      ..writeByte(8)
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
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.elementDescription)
      ..writeByte(7)
      ..write(obj.action);
  }
}

class TestScript_Action1Adapter extends TypeAdapter<TestScript_Action1> {
  @override
  final typeId = 640;

  @override
  TestScript_Action1 read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Action1(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      operation: fields[3] as TestScript_Operation,
      asserts: fields[4] as TestScript_Assert,
    );
  }

  @override
  void write(BinaryWriter writer, TestScript_Action1 obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.operation)
      ..writeByte(4)
      ..write(obj.asserts);
  }
}

class TestScript_TeardownAdapter extends TypeAdapter<TestScript_Teardown> {
  @override
  final typeId = 641;

  @override
  TestScript_Teardown read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Teardown(
      (fields[3] as List)?.cast<TestScript_Action2>(),
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
    );
  }

  @override
  void write(BinaryWriter writer, TestScript_Teardown obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.action);
  }
}

class TestScript_Action2Adapter extends TypeAdapter<TestScript_Action2> {
  @override
  final typeId = 642;

  @override
  TestScript_Action2 read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Action2(
      fields[3] as TestScript_Operation,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
    );
  }

  @override
  void write(BinaryWriter writer, TestScript_Action2 obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.operation);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestScript _$TestScriptFromJson(Map<String, dynamic> json) {
  return TestScript(
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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
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
    origin: (json['origin'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Origin.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    destination: (json['destination'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Destination.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    metadata: json['metadata'] == null
        ? null
        : TestScript_Metadata.fromJson(
            json['metadata'] as Map<String, dynamic>),
    fixture: (json['fixture'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Fixture.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    profile: (json['profile'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    variable: (json['variable'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Variable.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    setup: json['setup'] == null
        ? null
        : TestScript_Setup.fromJson(json['setup'] as Map<String, dynamic>),
    test: (json['test'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Test.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    teardown: json['teardown'] == null
        ? null
        : TestScript_Teardown.fromJson(
            json['teardown'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScriptToJson(TestScript instance) =>
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
      'identifier': instance.identifier?.toJson(),
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
      'origin': instance.origin?.map((e) => e?.toJson())?.toList(),
      'destination': instance.destination?.map((e) => e?.toJson())?.toList(),
      'metadata': instance.metadata?.toJson(),
      'fixture': instance.fixture?.map((e) => e?.toJson())?.toList(),
      'profile': instance.profile?.map((e) => e?.toJson())?.toList(),
      'variable': instance.variable?.map((e) => e?.toJson())?.toList(),
      'setup': instance.setup?.toJson(),
      'test': instance.test?.map((e) => e?.toJson())?.toList(),
      'teardown': instance.teardown?.toJson(),
    };

TestScript_Origin _$TestScript_OriginFromJson(Map<String, dynamic> json) {
  return TestScript_Origin(
    json['profile'] == null
        ? null
        : Coding.fromJson(json['profile'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    index: json['index'] as int,
    elementIndex: json['elementIndex'] == null
        ? null
        : Element.fromJson(json['elementIndex'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_OriginToJson(TestScript_Origin instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'index': instance.index,
      'elementIndex': instance.elementIndex?.toJson(),
      'profile': instance.profile?.toJson(),
    };

TestScript_Destination _$TestScript_DestinationFromJson(
    Map<String, dynamic> json) {
  return TestScript_Destination(
    json['profile'] == null
        ? null
        : Coding.fromJson(json['profile'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    index: json['index'] as int,
    elementIndex: json['elementIndex'] == null
        ? null
        : Element.fromJson(json['elementIndex'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_DestinationToJson(
        TestScript_Destination instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'index': instance.index,
      'elementIndex': instance.elementIndex?.toJson(),
      'profile': instance.profile?.toJson(),
    };

TestScript_Metadata _$TestScript_MetadataFromJson(Map<String, dynamic> json) {
  return TestScript_Metadata(
    (json['capability'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Capability.fromJson(e as Map<String, dynamic>))
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
    link: (json['link'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Link.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TestScript_MetadataToJson(
        TestScript_Metadata instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'link': instance.link?.map((e) => e?.toJson())?.toList(),
      'capability': instance.capability?.map((e) => e?.toJson())?.toList(),
    };

TestScript_Link _$TestScript_LinkFromJson(Map<String, dynamic> json) {
  return TestScript_Link(
    id: json['id'] as String,
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
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_LinkToJson(TestScript_Link instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
    };

TestScript_Capability _$TestScript_CapabilityFromJson(
    Map<String, dynamic> json) {
  return TestScript_Capability(
    json['capabilities'] as String,
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    required: json['required'] as bool,
    elementRequired: json['elementRequired'] == null
        ? null
        : Element.fromJson(json['elementRequired'] as Map<String, dynamic>),
    validated: json['validated'] as bool,
    elementValidated: json['elementValidated'] == null
        ? null
        : Element.fromJson(json['elementValidated'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    origin: (json['origin'] as List)?.map((e) => e as int)?.toList(),
    elementOrigin: (json['elementOrigin'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    destination: json['destination'] as int,
    elementDestination: json['elementDestination'] == null
        ? null
        : Element.fromJson(json['elementDestination'] as Map<String, dynamic>),
    link: (json['link'] as List)?.map((e) => e as String)?.toList(),
    elementLink: (json['elementLink'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TestScript_CapabilityToJson(
        TestScript_Capability instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'required': instance.required,
      'elementRequired': instance.elementRequired?.toJson(),
      'validated': instance.validated,
      'elementValidated': instance.elementValidated?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'origin': instance.origin,
      'elementOrigin':
          instance.elementOrigin?.map((e) => e?.toJson())?.toList(),
      'destination': instance.destination,
      'elementDestination': instance.elementDestination?.toJson(),
      'link': instance.link,
      'elementLink': instance.elementLink?.map((e) => e?.toJson())?.toList(),
      'capabilities': instance.capabilities,
    };

TestScript_Fixture _$TestScript_FixtureFromJson(Map<String, dynamic> json) {
  return TestScript_Fixture(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    autocreate: json['autocreate'] as bool,
    elementAutocreate: json['elementAutocreate'] == null
        ? null
        : Element.fromJson(json['elementAutocreate'] as Map<String, dynamic>),
    autodelete: json['autodelete'] as bool,
    elementAutodelete: json['elementAutodelete'] == null
        ? null
        : Element.fromJson(json['elementAutodelete'] as Map<String, dynamic>),
    resource: json['resource'] == null
        ? null
        : Reference.fromJson(json['resource'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_FixtureToJson(TestScript_Fixture instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'autocreate': instance.autocreate,
      'elementAutocreate': instance.elementAutocreate?.toJson(),
      'autodelete': instance.autodelete,
      'elementAutodelete': instance.elementAutodelete?.toJson(),
      'resource': instance.resource?.toJson(),
    };

TestScript_Variable _$TestScript_VariableFromJson(Map<String, dynamic> json) {
  return TestScript_Variable(
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
    defaultValue: json['defaultValue'] as String,
    elementDefaultValue: json['elementDefaultValue'] == null
        ? null
        : Element.fromJson(json['elementDefaultValue'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
    headerField: json['headerField'] as String,
    elementHeaderField: json['elementHeaderField'] == null
        ? null
        : Element.fromJson(json['elementHeaderField'] as Map<String, dynamic>),
    hint: json['hint'] as String,
    elementHint: json['elementHint'] == null
        ? null
        : Element.fromJson(json['elementHint'] as Map<String, dynamic>),
    path: json['path'] as String,
    elementPath: json['elementPath'] == null
        ? null
        : Element.fromJson(json['elementPath'] as Map<String, dynamic>),
    sourceId: json['sourceId'] as String,
    elementSourceId: json['elementSourceId'] == null
        ? null
        : Element.fromJson(json['elementSourceId'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_VariableToJson(
        TestScript_Variable instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'defaultValue': instance.defaultValue,
      'elementDefaultValue': instance.elementDefaultValue?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'expression': instance.expression,
      'elementExpression': instance.elementExpression?.toJson(),
      'headerField': instance.headerField,
      'elementHeaderField': instance.elementHeaderField?.toJson(),
      'hint': instance.hint,
      'elementHint': instance.elementHint?.toJson(),
      'path': instance.path,
      'elementPath': instance.elementPath?.toJson(),
      'sourceId': instance.sourceId,
      'elementSourceId': instance.elementSourceId?.toJson(),
    };

TestScript_Setup _$TestScript_SetupFromJson(Map<String, dynamic> json) {
  return TestScript_Setup(
    (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Action.fromJson(e as Map<String, dynamic>))
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
  );
}

Map<String, dynamic> _$TestScript_SetupToJson(TestScript_Setup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'action': instance.action?.map((e) => e?.toJson())?.toList(),
    };

TestScript_Action _$TestScript_ActionFromJson(Map<String, dynamic> json) {
  return TestScript_Action(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    operation: json['operation'] == null
        ? null
        : TestScript_Operation.fromJson(
            json['operation'] as Map<String, dynamic>),
    asserts: json['asserts'] == null
        ? null
        : TestScript_Assert.fromJson(json['asserts'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_ActionToJson(TestScript_Action instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'operation': instance.operation?.toJson(),
      'asserts': instance.asserts?.toJson(),
    };

TestScript_Operation _$TestScript_OperationFromJson(Map<String, dynamic> json) {
  return TestScript_Operation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : Coding.fromJson(json['type'] as Map<String, dynamic>),
    resource: json['resource'] as String,
    elementResource: json['elementResource'] == null
        ? null
        : Element.fromJson(json['elementResource'] as Map<String, dynamic>),
    label: json['label'] as String,
    elementLabel: json['elementLabel'] == null
        ? null
        : Element.fromJson(json['elementLabel'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    accept: json['accept'] as String,
    elementAccept: json['elementAccept'] == null
        ? null
        : Element.fromJson(json['elementAccept'] as Map<String, dynamic>),
    contentType: json['contentType'] as String,
    elementContentType: json['elementContentType'] == null
        ? null
        : Element.fromJson(json['elementContentType'] as Map<String, dynamic>),
    destination: json['destination'] as int,
    elementDestination: json['elementDestination'] == null
        ? null
        : Element.fromJson(json['elementDestination'] as Map<String, dynamic>),
    encodeRequestUrl: json['encodeRequestUrl'] as bool,
    elementEncodeRequestUrl: json['elementEncodeRequestUrl'] == null
        ? null
        : Element.fromJson(
            json['elementEncodeRequestUrl'] as Map<String, dynamic>),
    method: json['method'] as String,
    elementMethod: json['elementMethod'] == null
        ? null
        : Element.fromJson(json['elementMethod'] as Map<String, dynamic>),
    origin: json['origin'] as int,
    elementOrigin: json['elementOrigin'] == null
        ? null
        : Element.fromJson(json['elementOrigin'] as Map<String, dynamic>),
    params: json['params'] as String,
    elementParams: json['elementParams'] == null
        ? null
        : Element.fromJson(json['elementParams'] as Map<String, dynamic>),
    requestHeader: (json['requestHeader'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_RequestHeader.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    requestId: json['requestId'] as String,
    elementRequestId: json['elementRequestId'] == null
        ? null
        : Element.fromJson(json['elementRequestId'] as Map<String, dynamic>),
    responseId: json['responseId'] as String,
    elementResponseId: json['elementResponseId'] == null
        ? null
        : Element.fromJson(json['elementResponseId'] as Map<String, dynamic>),
    sourceId: json['sourceId'] as String,
    elementSourceId: json['elementSourceId'] == null
        ? null
        : Element.fromJson(json['elementSourceId'] as Map<String, dynamic>),
    targetId: json['targetId'] as String,
    elementTargetId: json['elementTargetId'] == null
        ? null
        : Element.fromJson(json['elementTargetId'] as Map<String, dynamic>),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_OperationToJson(
        TestScript_Operation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'resource': instance.resource,
      'elementResource': instance.elementResource?.toJson(),
      'label': instance.label,
      'elementLabel': instance.elementLabel?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'accept': instance.accept,
      'elementAccept': instance.elementAccept?.toJson(),
      'contentType': instance.contentType,
      'elementContentType': instance.elementContentType?.toJson(),
      'destination': instance.destination,
      'elementDestination': instance.elementDestination?.toJson(),
      'encodeRequestUrl': instance.encodeRequestUrl,
      'elementEncodeRequestUrl': instance.elementEncodeRequestUrl?.toJson(),
      'method': instance.method,
      'elementMethod': instance.elementMethod?.toJson(),
      'origin': instance.origin,
      'elementOrigin': instance.elementOrigin?.toJson(),
      'params': instance.params,
      'elementParams': instance.elementParams?.toJson(),
      'requestHeader':
          instance.requestHeader?.map((e) => e?.toJson())?.toList(),
      'requestId': instance.requestId,
      'elementRequestId': instance.elementRequestId?.toJson(),
      'responseId': instance.responseId,
      'elementResponseId': instance.elementResponseId?.toJson(),
      'sourceId': instance.sourceId,
      'elementSourceId': instance.elementSourceId?.toJson(),
      'targetId': instance.targetId,
      'elementTargetId': instance.elementTargetId?.toJson(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
    };

TestScript_RequestHeader _$TestScript_RequestHeaderFromJson(
    Map<String, dynamic> json) {
  return TestScript_RequestHeader(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    field: json['field'] as String,
    elementField: json['elementField'] == null
        ? null
        : Element.fromJson(json['elementField'] as Map<String, dynamic>),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_RequestHeaderToJson(
        TestScript_RequestHeader instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'field': instance.field,
      'elementField': instance.elementField?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
    };

TestScript_Assert _$TestScript_AssertFromJson(Map<String, dynamic> json) {
  return TestScript_Assert(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    label: json['label'] as String,
    elementLabel: json['elementLabel'] == null
        ? null
        : Element.fromJson(json['elementLabel'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    direction: json['direction'] as String,
    elementDirection: json['elementDirection'] == null
        ? null
        : Element.fromJson(json['elementDirection'] as Map<String, dynamic>),
    compareToSourceId: json['compareToSourceId'] as String,
    elementCompareToSourceId: json['elementCompareToSourceId'] == null
        ? null
        : Element.fromJson(
            json['elementCompareToSourceId'] as Map<String, dynamic>),
    compareToSourceExpression: json['compareToSourceExpression'] as String,
    elementCompareToSourceExpression:
        json['elementCompareToSourceExpression'] == null
            ? null
            : Element.fromJson(json['elementCompareToSourceExpression']
                as Map<String, dynamic>),
    compareToSourcePath: json['compareToSourcePath'] as String,
    elementCompareToSourcePath: json['elementCompareToSourcePath'] == null
        ? null
        : Element.fromJson(
            json['elementCompareToSourcePath'] as Map<String, dynamic>),
    contentType: json['contentType'] as String,
    elementContentType: json['elementContentType'] == null
        ? null
        : Element.fromJson(json['elementContentType'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
    headerField: json['headerField'] as String,
    elementHeaderField: json['elementHeaderField'] == null
        ? null
        : Element.fromJson(json['elementHeaderField'] as Map<String, dynamic>),
    minimumId: json['minimumId'] as String,
    elementMinimumId: json['elementMinimumId'] == null
        ? null
        : Element.fromJson(json['elementMinimumId'] as Map<String, dynamic>),
    navigationLinks: json['navigationLinks'] as bool,
    elementNavigationLinks: json['elementNavigationLinks'] == null
        ? null
        : Element.fromJson(
            json['elementNavigationLinks'] as Map<String, dynamic>),
    operator: json['operator'] as String,
    elementOperator: json['elementOperator'] == null
        ? null
        : Element.fromJson(json['elementOperator'] as Map<String, dynamic>),
    path: json['path'] as String,
    elementPath: json['elementPath'] == null
        ? null
        : Element.fromJson(json['elementPath'] as Map<String, dynamic>),
    requestMethod: json['requestMethod'] as String,
    elementRequestMethod: json['elementRequestMethod'] == null
        ? null
        : Element.fromJson(
            json['elementRequestMethod'] as Map<String, dynamic>),
    requestURL: json['requestURL'] as String,
    elementRequestURL: json['elementRequestURL'] == null
        ? null
        : Element.fromJson(json['elementRequestURL'] as Map<String, dynamic>),
    resource: json['resource'] as String,
    elementResource: json['elementResource'] == null
        ? null
        : Element.fromJson(json['elementResource'] as Map<String, dynamic>),
    response: json['response'] as String,
    elementResponse: json['elementResponse'] == null
        ? null
        : Element.fromJson(json['elementResponse'] as Map<String, dynamic>),
    responseCode: json['responseCode'] as String,
    elementResponseCode: json['elementResponseCode'] == null
        ? null
        : Element.fromJson(json['elementResponseCode'] as Map<String, dynamic>),
    sourceId: json['sourceId'] as String,
    elementSourceId: json['elementSourceId'] == null
        ? null
        : Element.fromJson(json['elementSourceId'] as Map<String, dynamic>),
    validateProfileId: json['validateProfileId'] as String,
    elementValidateProfileId: json['elementValidateProfileId'] == null
        ? null
        : Element.fromJson(
            json['elementValidateProfileId'] as Map<String, dynamic>),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
    warningOnly: json['warningOnly'] as bool,
    elementWarningOnly: json['elementWarningOnly'] == null
        ? null
        : Element.fromJson(json['elementWarningOnly'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_AssertToJson(TestScript_Assert instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'label': instance.label,
      'elementLabel': instance.elementLabel?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'direction': instance.direction,
      'elementDirection': instance.elementDirection?.toJson(),
      'compareToSourceId': instance.compareToSourceId,
      'elementCompareToSourceId': instance.elementCompareToSourceId?.toJson(),
      'compareToSourceExpression': instance.compareToSourceExpression,
      'elementCompareToSourceExpression':
          instance.elementCompareToSourceExpression?.toJson(),
      'compareToSourcePath': instance.compareToSourcePath,
      'elementCompareToSourcePath':
          instance.elementCompareToSourcePath?.toJson(),
      'contentType': instance.contentType,
      'elementContentType': instance.elementContentType?.toJson(),
      'expression': instance.expression,
      'elementExpression': instance.elementExpression?.toJson(),
      'headerField': instance.headerField,
      'elementHeaderField': instance.elementHeaderField?.toJson(),
      'minimumId': instance.minimumId,
      'elementMinimumId': instance.elementMinimumId?.toJson(),
      'navigationLinks': instance.navigationLinks,
      'elementNavigationLinks': instance.elementNavigationLinks?.toJson(),
      'operator': instance.operator,
      'elementOperator': instance.elementOperator?.toJson(),
      'path': instance.path,
      'elementPath': instance.elementPath?.toJson(),
      'requestMethod': instance.requestMethod,
      'elementRequestMethod': instance.elementRequestMethod?.toJson(),
      'requestURL': instance.requestURL,
      'elementRequestURL': instance.elementRequestURL?.toJson(),
      'resource': instance.resource,
      'elementResource': instance.elementResource?.toJson(),
      'response': instance.response,
      'elementResponse': instance.elementResponse?.toJson(),
      'responseCode': instance.responseCode,
      'elementResponseCode': instance.elementResponseCode?.toJson(),
      'sourceId': instance.sourceId,
      'elementSourceId': instance.elementSourceId?.toJson(),
      'validateProfileId': instance.validateProfileId,
      'elementValidateProfileId': instance.elementValidateProfileId?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
      'warningOnly': instance.warningOnly,
      'elementWarningOnly': instance.elementWarningOnly?.toJson(),
    };

TestScript_Test _$TestScript_TestFromJson(Map<String, dynamic> json) {
  return TestScript_Test(
    (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Action1.fromJson(e as Map<String, dynamic>))
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
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_TestToJson(TestScript_Test instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'action': instance.action?.map((e) => e?.toJson())?.toList(),
    };

TestScript_Action1 _$TestScript_Action1FromJson(Map<String, dynamic> json) {
  return TestScript_Action1(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    operation: json['operation'] == null
        ? null
        : TestScript_Operation.fromJson(
            json['operation'] as Map<String, dynamic>),
    asserts: json['asserts'] == null
        ? null
        : TestScript_Assert.fromJson(json['asserts'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestScript_Action1ToJson(TestScript_Action1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'operation': instance.operation?.toJson(),
      'asserts': instance.asserts?.toJson(),
    };

TestScript_Teardown _$TestScript_TeardownFromJson(Map<String, dynamic> json) {
  return TestScript_Teardown(
    (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Action2.fromJson(e as Map<String, dynamic>))
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
  );
}

Map<String, dynamic> _$TestScript_TeardownToJson(
        TestScript_Teardown instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'action': instance.action?.map((e) => e?.toJson())?.toList(),
    };

TestScript_Action2 _$TestScript_Action2FromJson(Map<String, dynamic> json) {
  return TestScript_Action2(
    json['operation'] == null
        ? null
        : TestScript_Operation.fromJson(
            json['operation'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TestScript_Action2ToJson(TestScript_Action2 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'operation': instance.operation?.toJson(),
    };
