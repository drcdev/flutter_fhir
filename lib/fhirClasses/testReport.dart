import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class TestReport {
  static Future<TestReport> newInstance({
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
    Identifier identifier,
    String name,
    Element elementName,
    String status,
    Element elementStatus,
    Reference testScript,
    String result,
    Element elementResult,
    double score,
    Element elementScore,
    String tester,
    Element elementTester,
    DateTime issued,
    Element elementIssued,
    List<TestReport_Participant> participant,
    TestReport_Setup setup,
    List<TestReport_Test> test,
    TestReport_Teardown teardown,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestReport newTestReport = new TestReport(
      resourceType: 'TestReport',
      id: id ?? await fhirDb.newResourceId('TestReport'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      name: name,
      elementName: elementName,
      status: status,
      elementStatus: elementStatus,
      testScript: testScript,
      result: result,
      elementResult: elementResult,
      score: score,
      elementScore: elementScore,
      tester: tester,
      elementTester: elementTester,
      issued: issued,
      elementIssued: elementIssued,
      participant: participant,
      setup: setup,
      test: test,
      teardown: teardown,
    );
    newTestReport.meta.createdAt = DateTime.now();
    newTestReport.meta.lastUpdated = newTestReport.meta.createdAt;
    int saved = await fhirDb.saveResource(newTestReport);
    return newTestReport;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saveed = await fhirDb.saveResource(this);
  }

  String resourceType = 'TestReport';
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
  Identifier identifier;
  String name;
  Element elementName;
  String status;
  Element elementStatus;
  Reference testScript;
  String result;
  Element elementResult;
  double score;
  Element elementScore;
  String tester;
  Element elementTester;
  DateTime issued;
  Element elementIssued;
  List<TestReport_Participant> participant;
  TestReport_Setup setup;
  List<TestReport_Test> test;
  TestReport_Teardown teardown;

  TestReport({
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
    this.identifier,
    this.name,
    this.elementName,
    this.status,
    this.elementStatus,
    @required this.testScript,
    this.result,
    this.elementResult,
    this.score,
    this.elementScore,
    this.tester,
    this.elementTester,
    this.issued,
    this.elementIssued,
    this.participant,
    this.setup,
    this.test,
    this.teardown,
  });

  factory TestReport.fromJson(Map<String, dynamic> json) =>
      _$TestReportFromJson(json);
  Map<String, dynamic> toJson() => _$TestReportToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Participant {
  static Future<TestReport_Participant> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String type,
    Element elementType,
    String uri,
    Element elementUri,
    String display,
    Element elementDisplay,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestReport_Participant newTestReport_Participant =
        new TestReport_Participant(
      id: id ?? await fhirDb.newResourceId('TestReport_Participant'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      elementType: elementType,
      uri: uri,
      elementUri: elementUri,
      display: display,
      elementDisplay: elementDisplay,
    );
    return newTestReport_Participant;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element elementType;
  String uri;
  Element elementUri;
  String display;
  Element elementDisplay;

  TestReport_Participant({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.uri,
    this.elementUri,
    this.display,
    this.elementDisplay,
  });

  factory TestReport_Participant.fromJson(Map<String, dynamic> json) =>
      _$TestReport_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_ParticipantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Setup {
  static Future<TestReport_Setup> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<TestReport_Action> action,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestReport_Setup newTestReport_Setup = new TestReport_Setup(
      id: id ?? await fhirDb.newResourceId('TestReport_Setup'),
      extension: extension,
      modifierExtension: modifierExtension,
      action: action,
    );
    return newTestReport_Setup;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<TestReport_Action> action;

  TestReport_Setup({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.action,
  });

  factory TestReport_Setup.fromJson(Map<String, dynamic> json) =>
      _$TestReport_SetupFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_SetupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Action {
  static Future<TestReport_Action> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    TestReport_Operation operation,
    TestReport_Assert asserts,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestReport_Action newTestReport_Action = new TestReport_Action(
      id: id ?? await fhirDb.newResourceId('TestReport_Action'),
      extension: extension,
      modifierExtension: modifierExtension,
      operation: operation,
      asserts: asserts,
    );
    return newTestReport_Action;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  TestReport_Operation operation;
  TestReport_Assert asserts;

  TestReport_Action({
    this.id,
    this.extension,
    this.modifierExtension,
    this.operation,
    this.asserts,
  });

  factory TestReport_Action.fromJson(Map<String, dynamic> json) =>
      _$TestReport_ActionFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Operation {
  static Future<TestReport_Operation> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String result,
    Element elementResult,
    String message,
    Element elementMessage,
    String detail,
    Element elementDetail,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestReport_Operation newTestReport_Operation = new TestReport_Operation(
      id: id ?? await fhirDb.newResourceId('TestReport_Operation'),
      extension: extension,
      modifierExtension: modifierExtension,
      result: result,
      elementResult: elementResult,
      message: message,
      elementMessage: elementMessage,
      detail: detail,
      elementDetail: elementDetail,
    );
    return newTestReport_Operation;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String result;
  Element elementResult;
  String message;
  Element elementMessage;
  String detail;
  Element elementDetail;

  TestReport_Operation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.result,
    this.elementResult,
    this.message,
    this.elementMessage,
    this.detail,
    this.elementDetail,
  });

  factory TestReport_Operation.fromJson(Map<String, dynamic> json) =>
      _$TestReport_OperationFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_OperationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Assert {
  static Future<TestReport_Assert> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String result,
    Element elementResult,
    String message,
    Element elementMessage,
    String detail,
    Element elementDetail,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestReport_Assert newTestReport_Assert = new TestReport_Assert(
      id: id ?? await fhirDb.newResourceId('TestReport_Assert'),
      extension: extension,
      modifierExtension: modifierExtension,
      result: result,
      elementResult: elementResult,
      message: message,
      elementMessage: elementMessage,
      detail: detail,
      elementDetail: elementDetail,
    );
    return newTestReport_Assert;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String result;
  Element elementResult;
  String message;
  Element elementMessage;
  String detail;
  Element elementDetail;

  TestReport_Assert({
    this.id,
    this.extension,
    this.modifierExtension,
    this.result,
    this.elementResult,
    this.message,
    this.elementMessage,
    this.detail,
    this.elementDetail,
  });

  factory TestReport_Assert.fromJson(Map<String, dynamic> json) =>
      _$TestReport_AssertFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_AssertToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Test {
  static Future<TestReport_Test> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    String description,
    Element elementDescription,
    List<TestReport_Action1> action,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestReport_Test newTestReport_Test = new TestReport_Test(
      id: id ?? await fhirDb.newResourceId('TestReport_Test'),
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      description: description,
      elementDescription: elementDescription,
      action: action,
    );
    return newTestReport_Test;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String description;
  Element elementDescription;
  List<TestReport_Action1> action;

  TestReport_Test({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.description,
    this.elementDescription,
    @required this.action,
  });

  factory TestReport_Test.fromJson(Map<String, dynamic> json) =>
      _$TestReport_TestFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_TestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Action1 {
  static Future<TestReport_Action1> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    TestReport_Operation operation,
    TestReport_Assert asserts,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestReport_Action1 newTestReport_Action1 = new TestReport_Action1(
      id: id ?? await fhirDb.newResourceId('TestReport_Action1'),
      extension: extension,
      modifierExtension: modifierExtension,
      operation: operation,
      asserts: asserts,
    );
    return newTestReport_Action1;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  TestReport_Operation operation;
  TestReport_Assert asserts;

  TestReport_Action1({
    this.id,
    this.extension,
    this.modifierExtension,
    this.operation,
    this.asserts,
  });

  factory TestReport_Action1.fromJson(Map<String, dynamic> json) =>
      _$TestReport_Action1FromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_Action1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Teardown {
  static Future<TestReport_Teardown> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<TestReport_Action2> action,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestReport_Teardown newTestReport_Teardown = new TestReport_Teardown(
      id: id ?? await fhirDb.newResourceId('TestReport_Teardown'),
      extension: extension,
      modifierExtension: modifierExtension,
      action: action,
    );
    return newTestReport_Teardown;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<TestReport_Action2> action;

  TestReport_Teardown({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.action,
  });

  factory TestReport_Teardown.fromJson(Map<String, dynamic> json) =>
      _$TestReport_TeardownFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_TeardownToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Action2 {
  static Future<TestReport_Action2> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    TestReport_Operation operation,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestReport_Action2 newTestReport_Action2 = new TestReport_Action2(
      id: id ?? await fhirDb.newResourceId('TestReport_Action2'),
      extension: extension,
      modifierExtension: modifierExtension,
      operation: operation,
    );
    return newTestReport_Action2;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  TestReport_Operation operation;

  TestReport_Action2({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.operation,
  });

  factory TestReport_Action2.fromJson(Map<String, dynamic> json) =>
      _$TestReport_Action2FromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_Action2ToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestReport _$TestReportFromJson(Map<String, dynamic> json) {
  return TestReport(
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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    testScript: json['testScript'] == null
        ? null
        : Reference.fromJson(json['testScript'] as Map<String, dynamic>),
    result: json['result'] as String,
    elementResult: json['elementResult'] == null
        ? null
        : Element.fromJson(json['elementResult'] as Map<String, dynamic>),
    score: (json['score'] as num)?.toDouble(),
    elementScore: json['elementScore'] == null
        ? null
        : Element.fromJson(json['elementScore'] as Map<String, dynamic>),
    tester: json['tester'] as String,
    elementTester: json['elementTester'] == null
        ? null
        : Element.fromJson(json['elementTester'] as Map<String, dynamic>),
    issued: json['issued'] == null
        ? null
        : DateTime.parse(json['issued'] as String),
    elementIssued: json['elementIssued'] == null
        ? null
        : Element.fromJson(json['elementIssued'] as Map<String, dynamic>),
    participant: (json['participant'] as List)
        ?.map((e) => e == null
            ? null
            : TestReport_Participant.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    setup: json['setup'] == null
        ? null
        : TestReport_Setup.fromJson(json['setup'] as Map<String, dynamic>),
    test: (json['test'] as List)
        ?.map((e) => e == null
            ? null
            : TestReport_Test.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    teardown: json['teardown'] == null
        ? null
        : TestReport_Teardown.fromJson(
            json['teardown'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestReportToJson(TestReport instance) =>
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
      'identifier': instance.identifier?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'testScript': instance.testScript?.toJson(),
      'result': instance.result,
      'elementResult': instance.elementResult?.toJson(),
      'score': instance.score,
      'elementScore': instance.elementScore?.toJson(),
      'tester': instance.tester,
      'elementTester': instance.elementTester?.toJson(),
      'issued': instance.issued?.toIso8601String(),
      'elementIssued': instance.elementIssued?.toJson(),
      'participant': instance.participant?.map((e) => e?.toJson())?.toList(),
      'setup': instance.setup?.toJson(),
      'test': instance.test?.map((e) => e?.toJson())?.toList(),
      'teardown': instance.teardown?.toJson(),
    };

TestReport_Participant _$TestReport_ParticipantFromJson(
    Map<String, dynamic> json) {
  return TestReport_Participant(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    uri: json['uri'] as String,
    elementUri: json['elementUri'] == null
        ? null
        : Element.fromJson(json['elementUri'] as Map<String, dynamic>),
    display: json['display'] as String,
    elementDisplay: json['elementDisplay'] == null
        ? null
        : Element.fromJson(json['elementDisplay'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestReport_ParticipantToJson(
        TestReport_Participant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'uri': instance.uri,
      'elementUri': instance.elementUri?.toJson(),
      'display': instance.display,
      'elementDisplay': instance.elementDisplay?.toJson(),
    };

TestReport_Setup _$TestReport_SetupFromJson(Map<String, dynamic> json) {
  return TestReport_Setup(
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
            : TestReport_Action.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TestReport_SetupToJson(TestReport_Setup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'action': instance.action?.map((e) => e?.toJson())?.toList(),
    };

TestReport_Action _$TestReport_ActionFromJson(Map<String, dynamic> json) {
  return TestReport_Action(
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
        : TestReport_Operation.fromJson(
            json['operation'] as Map<String, dynamic>),
    asserts: json['asserts'] == null
        ? null
        : TestReport_Assert.fromJson(json['asserts'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestReport_ActionToJson(TestReport_Action instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'operation': instance.operation?.toJson(),
      'asserts': instance.asserts?.toJson(),
    };

TestReport_Operation _$TestReport_OperationFromJson(Map<String, dynamic> json) {
  return TestReport_Operation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    result: json['result'] as String,
    elementResult: json['elementResult'] == null
        ? null
        : Element.fromJson(json['elementResult'] as Map<String, dynamic>),
    message: json['message'] as String,
    elementMessage: json['elementMessage'] == null
        ? null
        : Element.fromJson(json['elementMessage'] as Map<String, dynamic>),
    detail: json['detail'] as String,
    elementDetail: json['elementDetail'] == null
        ? null
        : Element.fromJson(json['elementDetail'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestReport_OperationToJson(
        TestReport_Operation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'result': instance.result,
      'elementResult': instance.elementResult?.toJson(),
      'message': instance.message,
      'elementMessage': instance.elementMessage?.toJson(),
      'detail': instance.detail,
      'elementDetail': instance.elementDetail?.toJson(),
    };

TestReport_Assert _$TestReport_AssertFromJson(Map<String, dynamic> json) {
  return TestReport_Assert(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    result: json['result'] as String,
    elementResult: json['elementResult'] == null
        ? null
        : Element.fromJson(json['elementResult'] as Map<String, dynamic>),
    message: json['message'] as String,
    elementMessage: json['elementMessage'] == null
        ? null
        : Element.fromJson(json['elementMessage'] as Map<String, dynamic>),
    detail: json['detail'] as String,
    elementDetail: json['elementDetail'] == null
        ? null
        : Element.fromJson(json['elementDetail'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestReport_AssertToJson(TestReport_Assert instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'result': instance.result,
      'elementResult': instance.elementResult?.toJson(),
      'message': instance.message,
      'elementMessage': instance.elementMessage?.toJson(),
      'detail': instance.detail,
      'elementDetail': instance.elementDetail?.toJson(),
    };

TestReport_Test _$TestReport_TestFromJson(Map<String, dynamic> json) {
  return TestReport_Test(
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
            : TestReport_Action1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TestReport_TestToJson(TestReport_Test instance) =>
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

TestReport_Action1 _$TestReport_Action1FromJson(Map<String, dynamic> json) {
  return TestReport_Action1(
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
        : TestReport_Operation.fromJson(
            json['operation'] as Map<String, dynamic>),
    asserts: json['asserts'] == null
        ? null
        : TestReport_Assert.fromJson(json['asserts'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestReport_Action1ToJson(TestReport_Action1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'operation': instance.operation?.toJson(),
      'asserts': instance.asserts?.toJson(),
    };

TestReport_Teardown _$TestReport_TeardownFromJson(Map<String, dynamic> json) {
  return TestReport_Teardown(
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
            : TestReport_Action2.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TestReport_TeardownToJson(
        TestReport_Teardown instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'action': instance.action?.map((e) => e?.toJson())?.toList(),
    };

TestReport_Action2 _$TestReport_Action2FromJson(Map<String, dynamic> json) {
  return TestReport_Action2(
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
        : TestReport_Operation.fromJson(
            json['operation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TestReport_Action2ToJson(TestReport_Action2 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'operation': instance.operation?.toJson(),
    };
