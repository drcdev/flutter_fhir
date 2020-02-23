import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

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
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'TestReport';
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
  Identifier identifier;
  @HiveField(12)
  String name;
  @HiveField(13)
  Element elementName;
  @HiveField(14)
  String status;
  @HiveField(15)
  Element elementStatus;
  @HiveField(16)
  Reference testScript;
  @HiveField(17)
  String result;
  @HiveField(18)
  Element elementResult;
  @HiveField(19)
  double score;
  @HiveField(20)
  Element elementScore;
  @HiveField(21)
  String tester;
  @HiveField(22)
  Element elementTester;
  @HiveField(23)
  DateTime issued;
  @HiveField(24)
  Element elementIssued;
  @HiveField(25)
  List<TestReport_Participant> participant;
  @HiveField(26)
  TestReport_Setup setup;
  @HiveField(27)
  List<TestReport_Test> test;
  @HiveField(28)
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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String type;
  @HiveField(4)
  Element elementType;
  @HiveField(5)
  String uri;
  @HiveField(6)
  Element elementUri;
  @HiveField(7)
  String display;
  @HiveField(8)
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

class TestReport_Setup {
  static Future<TestReport_Setup> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<TestReport_Action> action,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestReport_Setup newTestReport_Setup = new TestReport_Setup(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      action: action,
    );
    return newTestReport_Setup;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
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
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      operation: operation,
      asserts: asserts,
    );
    return newTestReport_Action;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  TestReport_Operation operation;
  @HiveField(4)
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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String result;
  @HiveField(4)
  Element elementResult;
  @HiveField(5)
  String message;
  @HiveField(6)
  Element elementMessage;
  @HiveField(7)
  String detail;
  @HiveField(8)
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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String result;
  @HiveField(4)
  Element elementResult;
  @HiveField(5)
  String message;
  @HiveField(6)
  Element elementMessage;
  @HiveField(7)
  String detail;
  @HiveField(8)
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
      id: id,
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
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      operation: operation,
      asserts: asserts,
    );
    return newTestReport_Action1;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  TestReport_Operation operation;
  @HiveField(4)
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

class TestReport_Teardown {
  static Future<TestReport_Teardown> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<TestReport_Action2> action,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestReport_Teardown newTestReport_Teardown = new TestReport_Teardown(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      action: action,
    );
    return newTestReport_Teardown;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
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

class TestReport_Action2 {
  static Future<TestReport_Action2> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    TestReport_Operation operation,
  }) async {
    var fhirDb = new DatabaseHelper();
    TestReport_Action2 newTestReport_Action2 = new TestReport_Action2(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      operation: operation,
    );
    return newTestReport_Action2;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
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

Map<String, dynamic> _$TestReportToJson(TestReport instance) {
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
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('testScript', instance.testScript?.toJson());
  writeNotNull('result', instance.result);
  writeNotNull('elementResult', instance.elementResult?.toJson());
  writeNotNull('score', instance.score);
  writeNotNull('elementScore', instance.elementScore?.toJson());
  writeNotNull('tester', instance.tester);
  writeNotNull('elementTester', instance.elementTester?.toJson());
  writeNotNull('issued', instance.issued?.toIso8601String());
  writeNotNull('elementIssued', instance.elementIssued?.toJson());
  writeNotNull(
      'participant', instance.participant?.map((e) => e?.toJson())?.toList());
  writeNotNull('setup', instance.setup?.toJson());
  writeNotNull('test', instance.test?.map((e) => e?.toJson())?.toList());
  writeNotNull('teardown', instance.teardown?.toJson());
  return val;
}

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
    TestReport_Participant instance) {
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
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('uri', instance.uri);
  writeNotNull('elementUri', instance.elementUri?.toJson());
  writeNotNull('display', instance.display);
  writeNotNull('elementDisplay', instance.elementDisplay?.toJson());
  return val;
}

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

Map<String, dynamic> _$TestReport_SetupToJson(TestReport_Setup instance) {
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

Map<String, dynamic> _$TestReport_ActionToJson(TestReport_Action instance) {
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
    TestReport_Operation instance) {
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
  writeNotNull('result', instance.result);
  writeNotNull('elementResult', instance.elementResult?.toJson());
  writeNotNull('message', instance.message);
  writeNotNull('elementMessage', instance.elementMessage?.toJson());
  writeNotNull('detail', instance.detail);
  writeNotNull('elementDetail', instance.elementDetail?.toJson());
  return val;
}

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

Map<String, dynamic> _$TestReport_AssertToJson(TestReport_Assert instance) {
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
  writeNotNull('result', instance.result);
  writeNotNull('elementResult', instance.elementResult?.toJson());
  writeNotNull('message', instance.message);
  writeNotNull('elementMessage', instance.elementMessage?.toJson());
  writeNotNull('detail', instance.detail);
  writeNotNull('elementDetail', instance.elementDetail?.toJson());
  return val;
}

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

Map<String, dynamic> _$TestReport_TestToJson(TestReport_Test instance) {
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

Map<String, dynamic> _$TestReport_Action1ToJson(TestReport_Action1 instance) {
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

Map<String, dynamic> _$TestReport_TeardownToJson(TestReport_Teardown instance) {
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

Map<String, dynamic> _$TestReport_Action2ToJson(TestReport_Action2 instance) {
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

class TestReportAdapter extends TypeAdapter<TestReport> {
  @override
  TestReport read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestReport(
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
      identifier: fields[11] as Identifier,
      name: fields[12] as String,
      elementName: fields[13] as Element,
      status: fields[14] as String,
      elementStatus: fields[15] as Element,
      testScript: fields[16] as Reference,
      result: fields[17] as String,
      elementResult: fields[18] as Element,
      score: fields[19] as double,
      elementScore: fields[20] as Element,
      tester: fields[21] as String,
      elementTester: fields[22] as Element,
      issued: fields[23] as DateTime,
      elementIssued: fields[24] as Element,
      participant: (fields[25] as List)?.cast<TestReport_Participant>(),
      setup: fields[26] as TestReport_Setup,
      test: (fields[27] as List)?.cast<TestReport_Test>(),
      teardown: fields[28] as TestReport_Teardown,
    );
  }

  @override
  void write(BinaryWriter writer, TestReport obj) {
    writer
      ..writeByte(29)
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
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.name)
      ..writeByte(13)
      ..write(obj.elementName)
      ..writeByte(14)
      ..write(obj.status)
      ..writeByte(15)
      ..write(obj.elementStatus)
      ..writeByte(16)
      ..write(obj.testScript)
      ..writeByte(17)
      ..write(obj.result)
      ..writeByte(18)
      ..write(obj.elementResult)
      ..writeByte(19)
      ..write(obj.score)
      ..writeByte(20)
      ..write(obj.elementScore)
      ..writeByte(21)
      ..write(obj.tester)
      ..writeByte(22)
      ..write(obj.elementTester)
      ..writeByte(23)
      ..write(obj.issued)
      ..writeByte(24)
      ..write(obj.elementIssued)
      ..writeByte(25)
      ..write(obj.participant)
      ..writeByte(26)
      ..write(obj.setup)
      ..writeByte(27)
      ..write(obj.test)
      ..writeByte(28)
      ..write(obj.teardown);
  }
}

class TestReport_ParticipantAdapter
    extends TypeAdapter<TestReport_Participant> {
  @override
  TestReport_Participant read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestReport_Participant(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as String,
      elementType: fields[4] as Element,
      uri: fields[5] as String,
      elementUri: fields[6] as Element,
      display: fields[7] as String,
      elementDisplay: fields[8] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, TestReport_Participant obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.elementType)
      ..writeByte(5)
      ..write(obj.uri)
      ..writeByte(6)
      ..write(obj.elementUri)
      ..writeByte(7)
      ..write(obj.display)
      ..writeByte(8)
      ..write(obj.elementDisplay);
  }
}

class TestReport_SetupAdapter extends TypeAdapter<TestReport_Setup> {
  @override
  TestReport_Setup read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestReport_Setup(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      action: (fields[3] as List)?.cast<TestReport_Action>(),
    );
  }

  @override
  void write(BinaryWriter writer, TestReport_Setup obj) {
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

class TestReport_ActionAdapter extends TypeAdapter<TestReport_Action> {
  @override
  TestReport_Action read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestReport_Action(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      operation: fields[3] as TestReport_Operation,
      asserts: fields[4] as TestReport_Assert,
    );
  }

  @override
  void write(BinaryWriter writer, TestReport_Action obj) {
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

class TestReport_OperationAdapter extends TypeAdapter<TestReport_Operation> {
  @override
  TestReport_Operation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestReport_Operation(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      result: fields[3] as String,
      elementResult: fields[4] as Element,
      message: fields[5] as String,
      elementMessage: fields[6] as Element,
      detail: fields[7] as String,
      elementDetail: fields[8] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, TestReport_Operation obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.result)
      ..writeByte(4)
      ..write(obj.elementResult)
      ..writeByte(5)
      ..write(obj.message)
      ..writeByte(6)
      ..write(obj.elementMessage)
      ..writeByte(7)
      ..write(obj.detail)
      ..writeByte(8)
      ..write(obj.elementDetail);
  }
}

class TestReport_AssertAdapter extends TypeAdapter<TestReport_Assert> {
  @override
  TestReport_Assert read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestReport_Assert(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      result: fields[3] as String,
      elementResult: fields[4] as Element,
      message: fields[5] as String,
      elementMessage: fields[6] as Element,
      detail: fields[7] as String,
      elementDetail: fields[8] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, TestReport_Assert obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.result)
      ..writeByte(4)
      ..write(obj.elementResult)
      ..writeByte(5)
      ..write(obj.message)
      ..writeByte(6)
      ..write(obj.elementMessage)
      ..writeByte(7)
      ..write(obj.detail)
      ..writeByte(8)
      ..write(obj.elementDetail);
  }
}

class TestReport_TestAdapter extends TypeAdapter<TestReport_Test> {
  @override
  TestReport_Test read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestReport_Test(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      description: fields[5] as String,
      elementDescription: fields[6] as Element,
      action: (fields[7] as List)?.cast<TestReport_Action1>(),
    );
  }

  @override
  void write(BinaryWriter writer, TestReport_Test obj) {
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

class TestReport_Action1Adapter extends TypeAdapter<TestReport_Action1> {
  @override
  TestReport_Action1 read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestReport_Action1(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      operation: fields[3] as TestReport_Operation,
      asserts: fields[4] as TestReport_Assert,
    );
  }

  @override
  void write(BinaryWriter writer, TestReport_Action1 obj) {
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

class TestReport_TeardownAdapter extends TypeAdapter<TestReport_Teardown> {
  @override
  TestReport_Teardown read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestReport_Teardown(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      action: (fields[3] as List)?.cast<TestReport_Action2>(),
    );
  }

  @override
  void write(BinaryWriter writer, TestReport_Teardown obj) {
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

class TestReport_Action2Adapter extends TypeAdapter<TestReport_Action2> {
  @override
  TestReport_Action2 read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestReport_Action2(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      operation: fields[3] as TestReport_Operation,
    );
  }

  @override
  void write(BinaryWriter writer, TestReport_Action2 obj) {
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
