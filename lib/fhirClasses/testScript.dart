import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
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
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'TestScript';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  String url;
  @HiveField(12)
  Element elementUrl;
  @HiveField(13)
  Identifier identifier;
  @HiveField(14)
  String version;
  @HiveField(15)
  Element elementVersion;
  @HiveField(16)
  String name;
  @HiveField(17)
  Element elementName;
  @HiveField(18)
  String title;
  @HiveField(19)
  Element elementTitle;
  @HiveField(20)
  String status;
  @HiveField(21)
  Element elementStatus;
  @HiveField(22)
  bool experimental;
  @HiveField(23)
  Element elementExperimental;
  @HiveField(24)
  DateTime date;
  @HiveField(25)
  Element elementDate;
  @HiveField(26)
  String publisher;
  @HiveField(27)
  Element elementPublisher;
  @HiveField(28)
  List<ContactDetail> contact;
  @HiveField(29)
  String description;
  @HiveField(30)
  Element elementDescription;
  @HiveField(31)
  List<UsageContext> useContext;
  @HiveField(32)
  List<CodeableConcept> jurisdiction;
  @HiveField(33)
  String purpose;
  @HiveField(34)
  Element elementPurpose;
  @HiveField(35)
  String copyright;
  @HiveField(36)
  Element elementCopyright;
  @HiveField(37)
  List<TestScript_Origin> origin;
  @HiveField(38)
  List<TestScript_Destination> destination;
  @HiveField(39)
  TestScript_Metadata metadata;
  @HiveField(40)
  List<TestScript_Fixture> fixture;
  @HiveField(41)
  List<Reference> profile;
  @HiveField(42)
  List<TestScript_Variable> variable;
  @HiveField(43)
  TestScript_Setup setup;
  @HiveField(44)
  List<TestScript_Test> test;
  @HiveField(45)
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
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      index: index,
      elementIndex: elementIndex,
      profile: profile,
    );
    return newTestScript_Origin;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  int index;
  @HiveField(4)
  Element elementIndex;
  @HiveField(5)
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
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      index: index,
      elementIndex: elementIndex,
      profile: profile,
    );
    return newTestScript_Destination;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  int index;
  @HiveField(4)
  Element elementIndex;
  @HiveField(5)
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
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      link: link,
      capability: capability,
    );
    return newTestScript_Metadata;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<TestScript_Link> link;
  @HiveField(4)
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
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      url: url,
      elementUrl: elementUrl,
      description: description,
      elementDescription: elementDescription,
    );
    return newTestScript_Link;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String url;
  @HiveField(4)
  Element elementUrl;
  @HiveField(5)
  String description;
  @HiveField(6)
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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  bool require;
  @HiveField(4)
  Element elementRequired;
  @HiveField(5)
  bool validated;
  @HiveField(6)
  Element elementValidated;
  @HiveField(7)
  String description;
  @HiveField(8)
  Element elementDescription;
  @HiveField(9)
  List<int> origin;
  @HiveField(10)
  List<Element> elementOrigin;
  @HiveField(11)
  int destination;
  @HiveField(12)
  Element elementDestination;
  @HiveField(13)
  List<String> link;
  @HiveField(14)
  List<Element> elementLink;
  @HiveField(15)
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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  bool autocreate;
  @HiveField(4)
  Element elementAutocreate;
  @HiveField(5)
  bool autodelete;
  @HiveField(6)
  Element elementAutodelete;
  @HiveField(7)
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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String name;
  @HiveField(4)
  Element elementName;
  @HiveField(5)
  String defaultValue;
  @HiveField(6)
  Element elementDefaultValue;
  @HiveField(7)
  String description;
  @HiveField(8)
  Element elementDescription;
  @HiveField(9)
  String expression;
  @HiveField(10)
  Element elementExpression;
  @HiveField(11)
  String headerField;
  @HiveField(12)
  Element elementHeaderField;
  @HiveField(13)
  String hint;
  @HiveField(14)
  Element elementHint;
  @HiveField(15)
  String path;
  @HiveField(16)
  Element elementPath;
  @HiveField(17)
  String sourceId;
  @HiveField(18)
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

class TestScript_Setup {
  static Future<TestScript_Setup> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<TestScript_Action> action,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript_Setup newTestScript_Setup = new TestScript_Setup(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      action: action,
    );
    return newTestScript_Setup;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
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
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      operation: operation,
      asserts: asserts,
    );
    return newTestScript_Action;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  TestScript_Operation operation;
  @HiveField(4)
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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Coding type;
  @HiveField(4)
  String resource;
  @HiveField(5)
  Element elementResource;
  @HiveField(6)
  String label;
  @HiveField(7)
  Element elementLabel;
  @HiveField(8)
  String description;
  @HiveField(9)
  Element elementDescription;
  @HiveField(10)
  String accept;
  @HiveField(11)
  Element elementAccept;
  @HiveField(12)
  String contentType;
  @HiveField(13)
  Element elementContentType;
  @HiveField(14)
  int destination;
  @HiveField(15)
  Element elementDestination;
  @HiveField(16)
  bool encodeRequestUrl;
  @HiveField(17)
  Element elementEncodeRequestUrl;
  @HiveField(18)
  String method;
  @HiveField(19)
  Element elementMethod;
  @HiveField(20)
  int origin;
  @HiveField(21)
  Element elementOrigin;
  @HiveField(22)
  String params;
  @HiveField(23)
  Element elementParams;
  @HiveField(24)
  List<TestScript_RequestHeader> requestHeader;
  @HiveField(25)
  String requestId;
  @HiveField(26)
  Element elementRequestId;
  @HiveField(27)
  String responseId;
  @HiveField(28)
  Element elementResponseId;
  @HiveField(29)
  String sourceId;
  @HiveField(30)
  Element elementSourceId;
  @HiveField(31)
  String targetId;
  @HiveField(32)
  Element elementTargetId;
  @HiveField(33)
  String url;
  @HiveField(34)
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
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      field: field,
      elementField: elementField,
      value: value,
      elementValue: elementValue,
    );
    return newTestScript_RequestHeader;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String field;
  @HiveField(4)
  Element elementField;
  @HiveField(5)
  String value;
  @HiveField(6)
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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String label;
  @HiveField(4)
  Element elementLabel;
  @HiveField(5)
  String description;
  @HiveField(6)
  Element elementDescription;
  @HiveField(7)
  String direction;
  @HiveField(8)
  Element elementDirection;
  @HiveField(9)
  String compareToSourceId;
  @HiveField(10)
  Element elementCompareToSourceId;
  @HiveField(11)
  String compareToSourceExpression;
  @HiveField(12)
  Element elementCompareToSourceExpression;
  @HiveField(13)
  String compareToSourcePath;
  @HiveField(14)
  Element elementCompareToSourcePath;
  @HiveField(15)
  String contentType;
  @HiveField(16)
  Element elementContentType;
  @HiveField(17)
  String expression;
  @HiveField(18)
  Element elementExpression;
  @HiveField(19)
  String headerField;
  @HiveField(20)
  Element elementHeaderField;
  @HiveField(21)
  String minimumId;
  @HiveField(22)
  Element elementMinimumId;
  @HiveField(23)
  bool navigationLinks;
  @HiveField(24)
  Element elementNavigationLinks;
  @HiveField(25)
  String operator;
  @HiveField(26)
  Element elementOperator;
  @HiveField(27)
  String path;
  @HiveField(28)
  Element elementPath;
  @HiveField(29)
  String requestMethod;
  @HiveField(30)
  Element elementRequestMethod;
  @HiveField(31)
  String requestURL;
  @HiveField(32)
  Element elementRequestURL;
  @HiveField(33)
  String resource;
  @HiveField(34)
  Element elementResource;
  @HiveField(35)
  String response;
  @HiveField(36)
  Element elementResponse;
  @HiveField(37)
  String responseCode;
  @HiveField(38)
  Element elementResponseCode;
  @HiveField(39)
  String sourceId;
  @HiveField(40)
  Element elementSourceId;
  @HiveField(41)
  String validateProfileId;
  @HiveField(42)
  Element elementValidateProfileId;
  @HiveField(43)
  String value;
  @HiveField(44)
  Element elementValue;
  @HiveField(45)
  bool warningOnly;
  @HiveField(46)
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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String name;
  @HiveField(4)
  Element elementName;
  @HiveField(5)
  String description;
  @HiveField(6)
  Element elementDescription;
  @HiveField(7)
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
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      operation: operation,
      asserts: asserts,
    );
    return newTestScript_Action1;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  TestScript_Operation operation;
  @HiveField(4)
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

class TestScript_Teardown {
  static Future<TestScript_Teardown> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<TestScript_Action2> action,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript_Teardown newTestScript_Teardown = new TestScript_Teardown(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      action: action,
    );
    return newTestScript_Teardown;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
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

class TestScript_Action2 {
  static Future<TestScript_Action2> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    TestScript_Operation operation,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestScript_Action2 newTestScript_Action2 = new TestScript_Action2(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      operation: operation,
    );
    return newTestScript_Action2;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
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

Map<String, dynamic> _$TestScriptToJson(TestScript instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('version', instance.version);
  writeNotNull('elementVersion', instance.elementVersion?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('experimental', instance.experimental);
  writeNotNull('elementExperimental', instance.elementExperimental?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('publisher', instance.publisher);
  writeNotNull('elementPublisher', instance.elementPublisher?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull(
      'useContext', instance.useContext?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e?.toJson())?.toList());
  writeNotNull('purpose', instance.purpose);
  writeNotNull('elementPurpose', instance.elementPurpose?.toJson());
  writeNotNull('copyright', instance.copyright);
  writeNotNull('elementCopyright', instance.elementCopyright?.toJson());
  writeNotNull('origin', instance.origin?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'destination', instance.destination?.map((e) => e?.toJson())?.toList());
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('fixture', instance.fixture?.map((e) => e?.toJson())?.toList());
  writeNotNull('profile', instance.profile?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'variable', instance.variable?.map((e) => e?.toJson())?.toList());
  writeNotNull('setup', instance.setup?.toJson());
  writeNotNull('test', instance.test?.map((e) => e?.toJson())?.toList());
  writeNotNull('teardown', instance.teardown?.toJson());
  return val;
}

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

Map<String, dynamic> _$TestScript_OriginToJson(TestScript_Origin instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('index', instance.index);
  writeNotNull('elementIndex', instance.elementIndex?.toJson());
  writeNotNull('profile', instance.profile?.toJson());
  return val;
}

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
    TestScript_Destination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('index', instance.index);
  writeNotNull('elementIndex', instance.elementIndex?.toJson());
  writeNotNull('profile', instance.profile?.toJson());
  return val;
}

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

Map<String, dynamic> _$TestScript_MetadataToJson(TestScript_Metadata instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('link', instance.link?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'capability', instance.capability?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$TestScript_LinkToJson(TestScript_Link instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  return val;
}

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
    TestScript_Capability instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('require', instance.require);
  writeNotNull('elementRequired', instance.elementRequired?.toJson());
  writeNotNull('validated', instance.validated);
  writeNotNull('elementValidated', instance.elementValidated?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('origin', instance.origin);
  writeNotNull('elementOrigin',
      instance.elementOrigin?.map((e) => e?.toJson())?.toList());
  writeNotNull('destination', instance.destination);
  writeNotNull('elementDestination', instance.elementDestination?.toJson());
  writeNotNull('link', instance.link);
  writeNotNull(
      'elementLink', instance.elementLink?.map((e) => e?.toJson())?.toList());
  writeNotNull('capabilities', instance.capabilities);
  return val;
}

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

Map<String, dynamic> _$TestScript_FixtureToJson(TestScript_Fixture instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('autocreate', instance.autocreate);
  writeNotNull('elementAutocreate', instance.elementAutocreate?.toJson());
  writeNotNull('autodelete', instance.autodelete);
  writeNotNull('elementAutodelete', instance.elementAutodelete?.toJson());
  writeNotNull('resource', instance.resource?.toJson());
  return val;
}

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

Map<String, dynamic> _$TestScript_VariableToJson(TestScript_Variable instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('elementDefaultValue', instance.elementDefaultValue?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('expression', instance.expression);
  writeNotNull('elementExpression', instance.elementExpression?.toJson());
  writeNotNull('headerField', instance.headerField);
  writeNotNull('elementHeaderField', instance.elementHeaderField?.toJson());
  writeNotNull('hint', instance.hint);
  writeNotNull('elementHint', instance.elementHint?.toJson());
  writeNotNull('path', instance.path);
  writeNotNull('elementPath', instance.elementPath?.toJson());
  writeNotNull('sourceId', instance.sourceId);
  writeNotNull('elementSourceId', instance.elementSourceId?.toJson());
  return val;
}

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

Map<String, dynamic> _$TestScript_SetupToJson(TestScript_Setup instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('action', instance.action?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$TestScript_ActionToJson(TestScript_Action instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('operation', instance.operation?.toJson());
  writeNotNull('asserts', instance.asserts?.toJson());
  return val;
}

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
    TestScript_Operation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('resource', instance.resource);
  writeNotNull('elementResource', instance.elementResource?.toJson());
  writeNotNull('label', instance.label);
  writeNotNull('elementLabel', instance.elementLabel?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('accept', instance.accept);
  writeNotNull('elementAccept', instance.elementAccept?.toJson());
  writeNotNull('contentType', instance.contentType);
  writeNotNull('elementContentType', instance.elementContentType?.toJson());
  writeNotNull('destination', instance.destination);
  writeNotNull('elementDestination', instance.elementDestination?.toJson());
  writeNotNull('encodeRequestUrl', instance.encodeRequestUrl);
  writeNotNull(
      'elementEncodeRequestUrl', instance.elementEncodeRequestUrl?.toJson());
  writeNotNull('method', instance.method);
  writeNotNull('elementMethod', instance.elementMethod?.toJson());
  writeNotNull('origin', instance.origin);
  writeNotNull('elementOrigin', instance.elementOrigin?.toJson());
  writeNotNull('params', instance.params);
  writeNotNull('elementParams', instance.elementParams?.toJson());
  writeNotNull('requestHeader',
      instance.requestHeader?.map((e) => e?.toJson())?.toList());
  writeNotNull('requestId', instance.requestId);
  writeNotNull('elementRequestId', instance.elementRequestId?.toJson());
  writeNotNull('responseId', instance.responseId);
  writeNotNull('elementResponseId', instance.elementResponseId?.toJson());
  writeNotNull('sourceId', instance.sourceId);
  writeNotNull('elementSourceId', instance.elementSourceId?.toJson());
  writeNotNull('targetId', instance.targetId);
  writeNotNull('elementTargetId', instance.elementTargetId?.toJson());
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  return val;
}

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
    TestScript_RequestHeader instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('field', instance.field);
  writeNotNull('elementField', instance.elementField?.toJson());
  writeNotNull('value', instance.value);
  writeNotNull('elementValue', instance.elementValue?.toJson());
  return val;
}

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

Map<String, dynamic> _$TestScript_AssertToJson(TestScript_Assert instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('label', instance.label);
  writeNotNull('elementLabel', instance.elementLabel?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('direction', instance.direction);
  writeNotNull('elementDirection', instance.elementDirection?.toJson());
  writeNotNull('compareToSourceId', instance.compareToSourceId);
  writeNotNull(
      'elementCompareToSourceId', instance.elementCompareToSourceId?.toJson());
  writeNotNull('compareToSourceExpression', instance.compareToSourceExpression);
  writeNotNull('elementCompareToSourceExpression',
      instance.elementCompareToSourceExpression?.toJson());
  writeNotNull('compareToSourcePath', instance.compareToSourcePath);
  writeNotNull('elementCompareToSourcePath',
      instance.elementCompareToSourcePath?.toJson());
  writeNotNull('contentType', instance.contentType);
  writeNotNull('elementContentType', instance.elementContentType?.toJson());
  writeNotNull('expression', instance.expression);
  writeNotNull('elementExpression', instance.elementExpression?.toJson());
  writeNotNull('headerField', instance.headerField);
  writeNotNull('elementHeaderField', instance.elementHeaderField?.toJson());
  writeNotNull('minimumId', instance.minimumId);
  writeNotNull('elementMinimumId', instance.elementMinimumId?.toJson());
  writeNotNull('navigationLinks', instance.navigationLinks);
  writeNotNull(
      'elementNavigationLinks', instance.elementNavigationLinks?.toJson());
  writeNotNull('operator', instance.operator);
  writeNotNull('elementOperator', instance.elementOperator?.toJson());
  writeNotNull('path', instance.path);
  writeNotNull('elementPath', instance.elementPath?.toJson());
  writeNotNull('requestMethod', instance.requestMethod);
  writeNotNull('elementRequestMethod', instance.elementRequestMethod?.toJson());
  writeNotNull('requestURL', instance.requestURL);
  writeNotNull('elementRequestURL', instance.elementRequestURL?.toJson());
  writeNotNull('resource', instance.resource);
  writeNotNull('elementResource', instance.elementResource?.toJson());
  writeNotNull('response', instance.response);
  writeNotNull('elementResponse', instance.elementResponse?.toJson());
  writeNotNull('responseCode', instance.responseCode);
  writeNotNull('elementResponseCode', instance.elementResponseCode?.toJson());
  writeNotNull('sourceId', instance.sourceId);
  writeNotNull('elementSourceId', instance.elementSourceId?.toJson());
  writeNotNull('validateProfileId', instance.validateProfileId);
  writeNotNull(
      'elementValidateProfileId', instance.elementValidateProfileId?.toJson());
  writeNotNull('value', instance.value);
  writeNotNull('elementValue', instance.elementValue?.toJson());
  writeNotNull('warningOnly', instance.warningOnly);
  writeNotNull('elementWarningOnly', instance.elementWarningOnly?.toJson());
  return val;
}

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

Map<String, dynamic> _$TestScript_TestToJson(TestScript_Test instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('action', instance.action?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$TestScript_Action1ToJson(TestScript_Action1 instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('operation', instance.operation?.toJson());
  writeNotNull('asserts', instance.asserts?.toJson());
  return val;
}

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

Map<String, dynamic> _$TestScript_TeardownToJson(TestScript_Teardown instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('action', instance.action?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$TestScript_Action2ToJson(TestScript_Action2 instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('operation', instance.operation?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TestScriptAdapter extends TypeAdapter<TestScript> {
  @override
  TestScript read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript(
      resourceType: fields[0] as String,
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
  TestScript_Origin read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Origin(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      index: fields[3] as int,
      elementIndex: fields[4] as Element,
      profile: fields[5] as Coding,
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
  TestScript_Destination read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Destination(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      index: fields[3] as int,
      elementIndex: fields[4] as Element,
      profile: fields[5] as Coding,
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
  TestScript_Metadata read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Metadata(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      link: (fields[3] as List)?.cast<TestScript_Link>(),
      capability: (fields[4] as List)?.cast<TestScript_Capability>(),
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
  TestScript_Capability read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Capability(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      require: fields[3] as bool,
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
      capabilities: fields[15] as String,
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
      ..write(obj.require)
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
  TestScript_Setup read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Setup(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      action: (fields[3] as List)?.cast<TestScript_Action>(),
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
  TestScript_Test read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Test(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      description: fields[5] as String,
      elementDescription: fields[6] as Element,
      action: (fields[7] as List)?.cast<TestScript_Action1>(),
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
  TestScript_Teardown read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Teardown(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      action: (fields[3] as List)?.cast<TestScript_Action2>(),
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
  TestScript_Action2 read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestScript_Action2(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      operation: fields[3] as TestScript_Operation,
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
