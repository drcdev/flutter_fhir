part 'testScript.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript {

TestScript resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
Narrative text;
List<ResourceList> contained;
List<Extension> extension;
List<Extension> modifierExtension;
String url;
Element _url;
Identifier identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String copyright;
Element _copyright;
List<TestScript_Origin> origin;
List<TestScript_Destination> destination;
TestScript_Metadata metadata;
List<TestScript_Fixture> fixture;
List<Reference> profile;
List<TestScript_Variable> variable;
TestScript_Setup setup;
List<TestScript_Test> test;
TestScript_Teardown teardown;

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
      this.teardown,
      });

  factory TestScript.fromJson(Map<String, dynamic> json) => _$TestScriptFromJson(json);
  Map<String, dynamic> toJson() _$TestScriptToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Origin {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int index;
Element _index;
Coding profile;

TestScript_Origin(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.index,
      this._index,
      this.profile,
      });

  factory TestScript_Origin.fromJson(Map<String, dynamic> json) => _$TestScript_OriginFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_OriginToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Destination {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int index;
Element _index;
Coding profile;

TestScript_Destination(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.index,
      this._index,
      this.profile,
      });

  factory TestScript_Destination.fromJson(Map<String, dynamic> json) => _$TestScript_DestinationFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_DestinationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Metadata {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<TestScript_Link> link;
List<TestScript_Capability> capability;

TestScript_Metadata(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.link,
      this.capability,
      });

  factory TestScript_Metadata.fromJson(Map<String, dynamic> json) => _$TestScript_MetadataFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_MetadataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Link {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String url;
Element _url;
String description;
Element _description;

TestScript_Link(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.url,
      this._url,
      this.description,
      this._description,
      });

  factory TestScript_Link.fromJson(Map<String, dynamic> json) => _$TestScript_LinkFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_LinkToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Capability {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool required;
Element _required;
bool validated;
Element _validated;
String description;
Element _description;
List<int> origin;
List<Element> _origin;
int destination;
Element _destination;
List<String> link;
List<Element> _link;
String capabilities;

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
      this.capabilities,
      });

  factory TestScript_Capability.fromJson(Map<String, dynamic> json) => _$TestScript_CapabilityFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_CapabilityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Fixture {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool autocreate;
Element _autocreate;
bool autodelete;
Element _autodelete;
Reference resource;

TestScript_Fixture(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.autocreate,
      this._autocreate,
      this.autodelete,
      this._autodelete,
      this.resource,
      });

  factory TestScript_Fixture.fromJson(Map<String, dynamic> json) => _$TestScript_FixtureFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_FixtureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Variable {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String defaultValue;
Element _defaultValue;
String description;
Element _description;
String expression;
Element _expression;
String headerField;
Element _headerField;
String hint;
Element _hint;
String path;
Element _path;
String sourceId;
Element _sourceId;

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
      this._sourceId,
      });

  factory TestScript_Variable.fromJson(Map<String, dynamic> json) => _$TestScript_VariableFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_VariableToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Setup {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<TestScript_Action> action;

TestScript_Setup(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.action,
      });

  factory TestScript_Setup.fromJson(Map<String, dynamic> json) => _$TestScript_SetupFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_SetupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Action {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
TestScript_Operation operation;
TestScript_Assert assert;

TestScript_Action(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.operation,
      this.assert,
      });

  factory TestScript_Action.fromJson(Map<String, dynamic> json) => _$TestScript_ActionFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Operation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Coding type;
String resource;
Element _resource;
String label;
Element _label;
String description;
Element _description;
String accept;
Element _accept;
String contentType;
Element _contentType;
int destination;
Element _destination;
bool encodeRequestUrl;
Element _encodeRequestUrl;
String method; // <code> enum: delete/get/options/patch/post/put/head;
Element _method;
int origin;
Element _origin;
String params;
Element _params;
List<TestScript_RequestHeader> requestHeader;
String requestId;
Element _requestId;
String responseId;
Element _responseId;
String sourceId;
Element _sourceId;
String targetId;
Element _targetId;
String url;
Element _url;

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
      this._url,
      });

  factory TestScript_Operation.fromJson(Map<String, dynamic> json) => _$TestScript_OperationFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_OperationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_RequestHeader {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String field;
Element _field;
String value;
Element _value;

TestScript_RequestHeader(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.field,
      this._field,
      this.value,
      this._value,
      });

  factory TestScript_RequestHeader.fromJson(Map<String, dynamic> json) => _$TestScript_RequestHeaderFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_RequestHeaderToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Assert {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String label;
Element _label;
String description;
Element _description;
String direction; // <code> enum: response/request;
Element _direction;
String compareToSourceId;
Element _compareToSourceId;
String compareToSourceExpression;
Element _compareToSourceExpression;
String compareToSourcePath;
Element _compareToSourcePath;
String contentType;
Element _contentType;
String expression;
Element _expression;
String headerField;
Element _headerField;
String minimumId;
Element _minimumId;
bool navigationLinks;
Element _navigationLinks;
String operator; // <code> enum: equals/notEquals/in/notIn/greaterThan/lessThan/empty/notEmpty/contains/notContains/eval;
Element _operator;
String path;
Element _path;
String requestMethod; // <code> enum: delete/get/options/patch/post/put/head;
Element _requestMethod;
String requestURL;
Element _requestURL;
String resource;
Element _resource;
String response; // <code> enum: okay/created/noContent/notModified/bad/forbidden/notFound/methodNotAllowed/conflict/gone/preconditionFailed/unprocessable;
Element _response;
String responseCode;
Element _responseCode;
String sourceId;
Element _sourceId;
String validateProfileId;
Element _validateProfileId;
String value;
Element _value;
bool warningOnly;
Element _warningOnly;

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
      this._warningOnly,
      });

  factory TestScript_Assert.fromJson(Map<String, dynamic> json) => _$TestScript_AssertFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_AssertToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Test {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String description;
Element _description;
List<TestScript_Action1> action;

TestScript_Test(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.description,
      this._description,
      this.action,
      });

  factory TestScript_Test.fromJson(Map<String, dynamic> json) => _$TestScript_TestFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_TestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Action1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
TestScript_Operation operation;
TestScript_Assert assert;

TestScript_Action1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.operation,
      this.assert,
      });

  factory TestScript_Action1.fromJson(Map<String, dynamic> json) => _$TestScript_Action1FromJson(json);
  Map<String, dynamic> toJson() _$TestScript_Action1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Teardown {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<TestScript_Action2> action;

TestScript_Teardown(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.action,
      });

  factory TestScript_Teardown.fromJson(Map<String, dynamic> json) => _$TestScript_TeardownFromJson(json);
  Map<String, dynamic> toJson() _$TestScript_TeardownToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Action2 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
TestScript_Operation operation;

TestScript_Action2(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.operation,
      });

  factory TestScript_Action2.fromJson(Map<String, dynamic> json) => _$TestScript_Action2FromJson(json);
  Map<String, dynamic> toJson() _$TestScript_Action2ToJson(this);
}

