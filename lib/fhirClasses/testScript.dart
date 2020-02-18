import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class TestScript {
  static Future<TestScript> newInstance({
    String resourceType,
    String id,
    Meta meta,
    String implicitRules,
    Element elementImplicitRules,
    String language,
    Element elementLanguage,
    Narrative text,
    List<dynamic> contained,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String url,
    Element elementUrl,
    Identifier identifier,
    String version,
    Element elementVersion,
    String name,
    Element elementName,
    String title,
    Element elementTitle,
    String status,
    Element elementStatus,
    bool experimental,
    Element elementExperimental,
    DateTime date,
    Element elementDate,
    String publisher,
    Element elementPublisher,
    List<ContactDetail> contact,
    String description,
    Element elementDescription,
    List<UsageContext> useContext,
    List<CodeableConcept> jurisdiction,
    String purpose,
    Element elementPurpose,
    String copyright,
    Element elementCopyright,
    List<TestScript_Origin> origin,
    List<TestScript_Destination> destination,
    TestScript_Metadata metadata,
    List<TestScript_Fixture> fixture,
    List<Reference> profile,
    List<TestScript_Variable> variable,
    TestScript_Setup setup,
    List<TestScript_Test> test,
    TestScript_Teardown teardown,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript newTestScript = new TestScript(
      resourceType: 'TestScript',
      id: id ?? await fhirDb.newResourceId('TestScript'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      url: url,
      elementUrl: elementUrl,
      identifier: identifier,
      version: version,
      elementVersion: elementVersion,
      name: name,
      elementName: elementName,
      title: title,
      elementTitle: elementTitle,
      status: status,
      elementStatus: elementStatus,
      experimental: experimental,
      elementExperimental: elementExperimental,
      date: date,
      elementDate: elementDate,
      publisher: publisher,
      elementPublisher: elementPublisher,
      contact: contact,
      description: description,
      elementDescription: elementDescription,
      useContext: useContext,
      jurisdiction: jurisdiction,
      purpose: purpose,
      elementPurpose: elementPurpose,
      copyright: copyright,
      elementCopyright: elementCopyright,
      origin: origin,
      destination: destination,
      metadata: metadata,
      fixture: fixture,
      profile: profile,
      variable: variable,
      setup: setup,
      test: test,
      teardown: teardown,
    );
    newTestScript.meta.createdAt = DateTime.now();
    newTestScript.meta.lastUpdated = newTestScript.meta.createdAt;
    int saved = await fhirDb.saveResource(newTestScript);
    return newTestScript;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saveed = await fhirDb.saveResource(this);
  }

  String resourceType = 'TestScript';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String url;
  Element elementUrl;
  Identifier identifier;
  String version;
  Element elementVersion;
  String name;
  Element elementName;
  String title;
  Element elementTitle;
  String status;
  Element elementStatus;
  bool experimental;
  Element elementExperimental;
  DateTime date;
  Element elementDate;
  String publisher;
  Element elementPublisher;
  List<ContactDetail> contact;
  String description;
  Element elementDescription;
  List<UsageContext> useContext;
  List<CodeableConcept> jurisdiction;
  String purpose;
  Element elementPurpose;
  String copyright;
  Element elementCopyright;
  List<TestScript_Origin> origin;
  List<TestScript_Destination> destination;
  TestScript_Metadata metadata;
  List<TestScript_Fixture> fixture;
  List<Reference> profile;
  List<TestScript_Variable> variable;
  TestScript_Setup setup;
  List<TestScript_Test> test;
  TestScript_Teardown teardown;

  TestScript({
    @required this.resourceType,
    this.id,
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
    this.teardown,
  });

  factory TestScript.fromJson(Map<String, dynamic> json) =>
      _$TestScriptFromJson(json);
  Map<String, dynamic> toJson() => _$TestScriptToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Origin {
  static Future<TestScript_Origin> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    int index,
    Element elementIndex,
    Coding profile,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript_Origin newTestScript_Origin = new TestScript_Origin(
      id: id ?? await fhirDb.newResourceId('TestScript_Origin'),
      extension: extension,
      modifierExtension: modifierExtension,
      index: index,
      elementIndex: elementIndex,
      profile: profile,
    );
    return newTestScript_Origin;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int index;
  Element elementIndex;
  Coding profile;

  TestScript_Origin({
    this.id,
    this.extension,
    this.modifierExtension,
    this.index,
    this.elementIndex,
    @required this.profile,
  });

  factory TestScript_Origin.fromJson(Map<String, dynamic> json) =>
      _$TestScript_OriginFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_OriginToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Destination {
  static Future<TestScript_Destination> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    int index,
    Element elementIndex,
    Coding profile,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript_Destination newTestScript_Destination =
        new TestScript_Destination(
      id: id ?? await fhirDb.newResourceId('TestScript_Destination'),
      extension: extension,
      modifierExtension: modifierExtension,
      index: index,
      elementIndex: elementIndex,
      profile: profile,
    );
    return newTestScript_Destination;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int index;
  Element elementIndex;
  Coding profile;

  TestScript_Destination({
    this.id,
    this.extension,
    this.modifierExtension,
    this.index,
    this.elementIndex,
    @required this.profile,
  });

  factory TestScript_Destination.fromJson(Map<String, dynamic> json) =>
      _$TestScript_DestinationFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_DestinationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Metadata {
  static Future<TestScript_Metadata> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<TestScript_Link> link,
    List<TestScript_Capability> capability,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript_Metadata newTestScript_Metadata = new TestScript_Metadata(
      id: id ?? await fhirDb.newResourceId('TestScript_Metadata'),
      extension: extension,
      modifierExtension: modifierExtension,
      link: link,
      capability: capability,
    );
    return newTestScript_Metadata;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<TestScript_Link> link;
  List<TestScript_Capability> capability;

  TestScript_Metadata({
    this.id,
    this.extension,
    this.modifierExtension,
    this.link,
    @required this.capability,
  });

  factory TestScript_Metadata.fromJson(Map<String, dynamic> json) =>
      _$TestScript_MetadataFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_MetadataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Link {
  static Future<TestScript_Link> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String url,
    Element elementUrl,
    String description,
    Element elementDescription,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript_Link newTestScript_Link = new TestScript_Link(
      id: id ?? await fhirDb.newResourceId('TestScript_Link'),
      extension: extension,
      modifierExtension: modifierExtension,
      url: url,
      elementUrl: elementUrl,
      description: description,
      elementDescription: elementDescription,
    );
    return newTestScript_Link;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String url;
  Element elementUrl;
  String description;
  Element elementDescription;

  TestScript_Link({
    this.id,
    this.extension,
    this.modifierExtension,
    this.url,
    this.elementUrl,
    this.description,
    this.elementDescription,
  });

  factory TestScript_Link.fromJson(Map<String, dynamic> json) =>
      _$TestScript_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_LinkToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Capability {
  static Future<TestScript_Capability> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    bool require,
    Element elementRequired,
    bool validated,
    Element elementValidated,
    String description,
    Element elementDescription,
    List<int> origin,
    List<Element> elementOrigin,
    int destination,
    Element elementDestination,
    List<String> link,
    List<Element> elementLink,
    String capabilities,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript_Capability newTestScript_Capability = new TestScript_Capability(
      id: id ?? await fhirDb.newResourceId('TestScript_Capability'),
      extension: extension,
      modifierExtension: modifierExtension,
      require: require,
      elementRequired: elementRequired,
      validated: validated,
      elementValidated: elementValidated,
      description: description,
      elementDescription: elementDescription,
      origin: origin,
      elementOrigin: elementOrigin,
      destination: destination,
      elementDestination: elementDestination,
      link: link,
      elementLink: elementLink,
      capabilities: capabilities,
    );
    return newTestScript_Capability;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool require;
  Element elementRequired;
  bool validated;
  Element elementValidated;
  String description;
  Element elementDescription;
  List<int> origin;
  List<Element> elementOrigin;
  int destination;
  Element elementDestination;
  List<String> link;
  List<Element> elementLink;
  String capabilities;

  TestScript_Capability({
    this.id,
    this.extension,
    this.modifierExtension,
    this.require,
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
    this.elementLink,
    @required this.capabilities,
  });

  factory TestScript_Capability.fromJson(Map<String, dynamic> json) =>
      _$TestScript_CapabilityFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_CapabilityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Fixture {
  static Future<TestScript_Fixture> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    bool autocreate,
    Element elementAutocreate,
    bool autodelete,
    Element elementAutodelete,
    Reference resource,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript_Fixture newTestScript_Fixture = new TestScript_Fixture(
      id: id ?? await fhirDb.newResourceId('TestScript_Fixture'),
      extension: extension,
      modifierExtension: modifierExtension,
      autocreate: autocreate,
      elementAutocreate: elementAutocreate,
      autodelete: autodelete,
      elementAutodelete: elementAutodelete,
      resource: resource,
    );
    return newTestScript_Fixture;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool autocreate;
  Element elementAutocreate;
  bool autodelete;
  Element elementAutodelete;
  Reference resource;

  TestScript_Fixture({
    this.id,
    this.extension,
    this.modifierExtension,
    this.autocreate,
    this.elementAutocreate,
    this.autodelete,
    this.elementAutodelete,
    this.resource,
  });

  factory TestScript_Fixture.fromJson(Map<String, dynamic> json) =>
      _$TestScript_FixtureFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_FixtureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Variable {
  static Future<TestScript_Variable> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    String defaultValue,
    Element elementDefaultValue,
    String description,
    Element elementDescription,
    String expression,
    Element elementExpression,
    String headerField,
    Element elementHeaderField,
    String hint,
    Element elementHint,
    String path,
    Element elementPath,
    String sourceId,
    Element elementSourceId,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript_Variable newTestScript_Variable = new TestScript_Variable(
      id: id ?? await fhirDb.newResourceId('TestScript_Variable'),
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      defaultValue: defaultValue,
      elementDefaultValue: elementDefaultValue,
      description: description,
      elementDescription: elementDescription,
      expression: expression,
      elementExpression: elementExpression,
      headerField: headerField,
      elementHeaderField: elementHeaderField,
      hint: hint,
      elementHint: elementHint,
      path: path,
      elementPath: elementPath,
      sourceId: sourceId,
      elementSourceId: elementSourceId,
    );
    return newTestScript_Variable;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String defaultValue;
  Element elementDefaultValue;
  String description;
  Element elementDescription;
  String expression;
  Element elementExpression;
  String headerField;
  Element elementHeaderField;
  String hint;
  Element elementHint;
  String path;
  Element elementPath;
  String sourceId;
  Element elementSourceId;

  TestScript_Variable({
    this.id,
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
    this.elementSourceId,
  });

  factory TestScript_Variable.fromJson(Map<String, dynamic> json) =>
      _$TestScript_VariableFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_VariableToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Setup {
  static Future<TestScript_Setup> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<TestScript_Action> action,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript_Setup newTestScript_Setup = new TestScript_Setup(
      id: id ?? await fhirDb.newResourceId('TestScript_Setup'),
      extension: extension,
      modifierExtension: modifierExtension,
      action: action,
    );
    return newTestScript_Setup;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<TestScript_Action> action;

  TestScript_Setup({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.action,
  });

  factory TestScript_Setup.fromJson(Map<String, dynamic> json) =>
      _$TestScript_SetupFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_SetupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Action {
  static Future<TestScript_Action> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    TestScript_Operation operation,
    TestScript_Assert asserts,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript_Action newTestScript_Action = new TestScript_Action(
      id: id ?? await fhirDb.newResourceId('TestScript_Action'),
      extension: extension,
      modifierExtension: modifierExtension,
      operation: operation,
      asserts: asserts,
    );
    return newTestScript_Action;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  TestScript_Operation operation;
  TestScript_Assert asserts;

  TestScript_Action({
    this.id,
    this.extension,
    this.modifierExtension,
    this.operation,
    this.asserts,
  });

  factory TestScript_Action.fromJson(Map<String, dynamic> json) =>
      _$TestScript_ActionFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Operation {
  static Future<TestScript_Operation> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Coding type,
    String resource,
    Element elementResource,
    String label,
    Element elementLabel,
    String description,
    Element elementDescription,
    String accept,
    Element elementAccept,
    String contentType,
    Element elementContentType,
    int destination,
    Element elementDestination,
    bool encodeRequestUrl,
    Element elementEncodeRequestUrl,
    String method,
    Element elementMethod,
    int origin,
    Element elementOrigin,
    String params,
    Element elementParams,
    List<TestScript_RequestHeader> requestHeader,
    String requestId,
    Element elementRequestId,
    String responseId,
    Element elementResponseId,
    String sourceId,
    Element elementSourceId,
    String targetId,
    Element elementTargetId,
    String url,
    Element elementUrl,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript_Operation newTestScript_Operation = new TestScript_Operation(
      id: id ?? await fhirDb.newResourceId('TestScript_Operation'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      resource: resource,
      elementResource: elementResource,
      label: label,
      elementLabel: elementLabel,
      description: description,
      elementDescription: elementDescription,
      accept: accept,
      elementAccept: elementAccept,
      contentType: contentType,
      elementContentType: elementContentType,
      destination: destination,
      elementDestination: elementDestination,
      encodeRequestUrl: encodeRequestUrl,
      elementEncodeRequestUrl: elementEncodeRequestUrl,
      method: method,
      elementMethod: elementMethod,
      origin: origin,
      elementOrigin: elementOrigin,
      params: params,
      elementParams: elementParams,
      requestHeader: requestHeader,
      requestId: requestId,
      elementRequestId: elementRequestId,
      responseId: responseId,
      elementResponseId: elementResponseId,
      sourceId: sourceId,
      elementSourceId: elementSourceId,
      targetId: targetId,
      elementTargetId: elementTargetId,
      url: url,
      elementUrl: elementUrl,
    );
    return newTestScript_Operation;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Coding type;
  String resource;
  Element elementResource;
  String label;
  Element elementLabel;
  String description;
  Element elementDescription;
  String accept;
  Element elementAccept;
  String contentType;
  Element elementContentType;
  int destination;
  Element elementDestination;
  bool encodeRequestUrl;
  Element elementEncodeRequestUrl;
  String method;
  Element elementMethod;
  int origin;
  Element elementOrigin;
  String params;
  Element elementParams;
  List<TestScript_RequestHeader> requestHeader;
  String requestId;
  Element elementRequestId;
  String responseId;
  Element elementResponseId;
  String sourceId;
  Element elementSourceId;
  String targetId;
  Element elementTargetId;
  String url;
  Element elementUrl;

  TestScript_Operation({
    this.id,
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
    this.elementUrl,
  });

  factory TestScript_Operation.fromJson(Map<String, dynamic> json) =>
      _$TestScript_OperationFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_OperationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_RequestHeader {
  static Future<TestScript_RequestHeader> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String field,
    Element elementField,
    String value,
    Element elementValue,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript_RequestHeader newTestScript_RequestHeader =
        new TestScript_RequestHeader(
      id: id ?? await fhirDb.newResourceId('TestScript_RequestHeader'),
      extension: extension,
      modifierExtension: modifierExtension,
      field: field,
      elementField: elementField,
      value: value,
      elementValue: elementValue,
    );
    return newTestScript_RequestHeader;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String field;
  Element elementField;
  String value;
  Element elementValue;

  TestScript_RequestHeader({
    this.id,
    this.extension,
    this.modifierExtension,
    this.field,
    this.elementField,
    this.value,
    this.elementValue,
  });

  factory TestScript_RequestHeader.fromJson(Map<String, dynamic> json) =>
      _$TestScript_RequestHeaderFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_RequestHeaderToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Assert {
  static Future<TestScript_Assert> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String label,
    Element elementLabel,
    String description,
    Element elementDescription,
    String direction,
    Element elementDirection,
    String compareToSourceId,
    Element elementCompareToSourceId,
    String compareToSourceExpression,
    Element elementCompareToSourceExpression,
    String compareToSourcePath,
    Element elementCompareToSourcePath,
    String contentType,
    Element elementContentType,
    String expression,
    Element elementExpression,
    String headerField,
    Element elementHeaderField,
    String minimumId,
    Element elementMinimumId,
    bool navigationLinks,
    Element elementNavigationLinks,
    String operator,
    Element elementOperator,
    String path,
    Element elementPath,
    String requestMethod,
    Element elementRequestMethod,
    String requestURL,
    Element elementRequestURL,
    String resource,
    Element elementResource,
    String response,
    Element elementResponse,
    String responseCode,
    Element elementResponseCode,
    String sourceId,
    Element elementSourceId,
    String validateProfileId,
    Element elementValidateProfileId,
    String value,
    Element elementValue,
    bool warningOnly,
    Element elementWarningOnly,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript_Assert newTestScript_Assert = new TestScript_Assert(
      id: id ?? await fhirDb.newResourceId('TestScript_Assert'),
      extension: extension,
      modifierExtension: modifierExtension,
      label: label,
      elementLabel: elementLabel,
      description: description,
      elementDescription: elementDescription,
      direction: direction,
      elementDirection: elementDirection,
      compareToSourceId: compareToSourceId,
      elementCompareToSourceId: elementCompareToSourceId,
      compareToSourceExpression: compareToSourceExpression,
      elementCompareToSourceExpression: elementCompareToSourceExpression,
      compareToSourcePath: compareToSourcePath,
      elementCompareToSourcePath: elementCompareToSourcePath,
      contentType: contentType,
      elementContentType: elementContentType,
      expression: expression,
      elementExpression: elementExpression,
      headerField: headerField,
      elementHeaderField: elementHeaderField,
      minimumId: minimumId,
      elementMinimumId: elementMinimumId,
      navigationLinks: navigationLinks,
      elementNavigationLinks: elementNavigationLinks,
      operator: operator,
      elementOperator: elementOperator,
      path: path,
      elementPath: elementPath,
      requestMethod: requestMethod,
      elementRequestMethod: elementRequestMethod,
      requestURL: requestURL,
      elementRequestURL: elementRequestURL,
      resource: resource,
      elementResource: elementResource,
      response: response,
      elementResponse: elementResponse,
      responseCode: responseCode,
      elementResponseCode: elementResponseCode,
      sourceId: sourceId,
      elementSourceId: elementSourceId,
      validateProfileId: validateProfileId,
      elementValidateProfileId: elementValidateProfileId,
      value: value,
      elementValue: elementValue,
      warningOnly: warningOnly,
      elementWarningOnly: elementWarningOnly,
    );
    return newTestScript_Assert;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String label;
  Element elementLabel;
  String description;
  Element elementDescription;
  String direction;
  Element elementDirection;
  String compareToSourceId;
  Element elementCompareToSourceId;
  String compareToSourceExpression;
  Element elementCompareToSourceExpression;
  String compareToSourcePath;
  Element elementCompareToSourcePath;
  String contentType;
  Element elementContentType;
  String expression;
  Element elementExpression;
  String headerField;
  Element elementHeaderField;
  String minimumId;
  Element elementMinimumId;
  bool navigationLinks;
  Element elementNavigationLinks;
  String operator;
  Element elementOperator;
  String path;
  Element elementPath;
  String requestMethod;
  Element elementRequestMethod;
  String requestURL;
  Element elementRequestURL;
  String resource;
  Element elementResource;
  String response;
  Element elementResponse;
  String responseCode;
  Element elementResponseCode;
  String sourceId;
  Element elementSourceId;
  String validateProfileId;
  Element elementValidateProfileId;
  String value;
  Element elementValue;
  bool warningOnly;
  Element elementWarningOnly;

  TestScript_Assert({
    this.id,
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
    this.elementWarningOnly,
  });

  factory TestScript_Assert.fromJson(Map<String, dynamic> json) =>
      _$TestScript_AssertFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_AssertToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Test {
  static Future<TestScript_Test> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    String description,
    Element elementDescription,
    List<TestScript_Action1> action,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript_Test newTestScript_Test = new TestScript_Test(
      id: id ?? await fhirDb.newResourceId('TestScript_Test'),
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      description: description,
      elementDescription: elementDescription,
      action: action,
    );
    return newTestScript_Test;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String description;
  Element elementDescription;
  List<TestScript_Action1> action;

  TestScript_Test({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.description,
    this.elementDescription,
    @required this.action,
  });

  factory TestScript_Test.fromJson(Map<String, dynamic> json) =>
      _$TestScript_TestFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_TestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Action1 {
  static Future<TestScript_Action1> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    TestScript_Operation operation,
    TestScript_Assert asserts,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript_Action1 newTestScript_Action1 = new TestScript_Action1(
      id: id ?? await fhirDb.newResourceId('TestScript_Action1'),
      extension: extension,
      modifierExtension: modifierExtension,
      operation: operation,
      asserts: asserts,
    );
    return newTestScript_Action1;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  TestScript_Operation operation;
  TestScript_Assert asserts;

  TestScript_Action1({
    this.id,
    this.extension,
    this.modifierExtension,
    this.operation,
    this.asserts,
  });

  factory TestScript_Action1.fromJson(Map<String, dynamic> json) =>
      _$TestScript_Action1FromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_Action1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Teardown {
  static Future<TestScript_Teardown> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<TestScript_Action2> action,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript_Teardown newTestScript_Teardown = new TestScript_Teardown(
      id: id ?? await fhirDb.newResourceId('TestScript_Teardown'),
      extension: extension,
      modifierExtension: modifierExtension,
      action: action,
    );
    return newTestScript_Teardown;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<TestScript_Action2> action;

  TestScript_Teardown({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.action,
  });

  factory TestScript_Teardown.fromJson(Map<String, dynamic> json) =>
      _$TestScript_TeardownFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_TeardownToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestScript_Action2 {
  static Future<TestScript_Action2> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    TestScript_Operation operation,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript_Action2 newTestScript_Action2 = new TestScript_Action2(
      id: id ?? await fhirDb.newResourceId('TestScript_Action2'),
      extension: extension,
      modifierExtension: modifierExtension,
      operation: operation,
    );
    return newTestScript_Action2;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  TestScript_Operation operation;

  TestScript_Action2({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.operation,
  });

  factory TestScript_Action2.fromJson(Map<String, dynamic> json) =>
      _$TestScript_Action2FromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_Action2ToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestScript _$TestScriptFromJson(Map<String, dynamic> json) {
  return TestScript(
    resourceType: json['resourceType'] as String,
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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
      'resourceType': instance.resourceType,
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
    profile: json['profile'] == null
        ? null
        : Coding.fromJson(json['profile'] as Map<String, dynamic>),
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
    profile: json['profile'] == null
        ? null
        : Coding.fromJson(json['profile'] as Map<String, dynamic>),
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
    capability: (json['capability'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Capability.fromJson(e as Map<String, dynamic>))
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
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    require: json['require'] as bool,
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
    capabilities: json['capabilities'] as String,
  );
}

Map<String, dynamic> _$TestScript_CapabilityToJson(
        TestScript_Capability instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'require': instance.require,
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
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    action: (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Action.fromJson(e as Map<String, dynamic>))
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
    action: (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Action1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    action: (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : TestScript_Action2.fromJson(e as Map<String, dynamic>))
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
