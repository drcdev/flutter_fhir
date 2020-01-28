part 'testReport.g.dart';

@JsonSerializable(explicitToJson: true)
class TestReport {

TestReport resourceType;
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
Identifier identifier;
String name;
Element _name;
String status; // <code> enum: completed/in-progress/waiting/stopped/entered-in-error;
Element _status;
Reference testScript;
String result; // <code> enum: pass/fail/pending;
Element _result;
double score;
Element _score;
String tester;
Element _tester;
DateTime issued;
Element _issued;
List<TestReport_Participant> participant;
TestReport_Setup setup;
List<TestReport_Test> test;
TestReport_Teardown teardown;

TestReport(
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
      this.identifier,
      this.name,
      this._name,
      this.status,
      this._status,
      this.testScript,
      this.result,
      this._result,
      this.score,
      this._score,
      this.tester,
      this._tester,
      this.issued,
      this._issued,
      this.participant,
      this.setup,
      this.test,
      this.teardown,
      });

  factory TestReport.fromJson(Map<String, dynamic> json) => _$TestReportFromJson(json);
  Map<String, dynamic> toJson() _$TestReportToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Participant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: test-engine/client/server;
Element _type;
String uri;
Element _uri;
String display;
Element _display;

TestReport_Participant(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.uri,
      this._uri,
      this.display,
      this._display,
      });

  factory TestReport_Participant.fromJson(Map<String, dynamic> json) => _$TestReport_ParticipantFromJson(json);
  Map<String, dynamic> toJson() _$TestReport_ParticipantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Setup {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<TestReport_Action> action;

TestReport_Setup(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.action,
      });

  factory TestReport_Setup.fromJson(Map<String, dynamic> json) => _$TestReport_SetupFromJson(json);
  Map<String, dynamic> toJson() _$TestReport_SetupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Action {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
TestReport_Operation operation;
TestReport_Assert assert;

TestReport_Action(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.operation,
      this.assert,
      });

  factory TestReport_Action.fromJson(Map<String, dynamic> json) => _$TestReport_ActionFromJson(json);
  Map<String, dynamic> toJson() _$TestReport_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Operation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String result; // <code> enum: pass/skip/fail/warning/error;
Element _result;
String message;
Element _message;
String detail;
Element _detail;

TestReport_Operation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.result,
      this._result,
      this.message,
      this._message,
      this.detail,
      this._detail,
      });

  factory TestReport_Operation.fromJson(Map<String, dynamic> json) => _$TestReport_OperationFromJson(json);
  Map<String, dynamic> toJson() _$TestReport_OperationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Assert {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String result; // <code> enum: pass/skip/fail/warning/error;
Element _result;
String message;
Element _message;
String detail;
Element _detail;

TestReport_Assert(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.result,
      this._result,
      this.message,
      this._message,
      this.detail,
      this._detail,
      });

  factory TestReport_Assert.fromJson(Map<String, dynamic> json) => _$TestReport_AssertFromJson(json);
  Map<String, dynamic> toJson() _$TestReport_AssertToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Test {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String description;
Element _description;
List<TestReport_Action1> action;

TestReport_Test(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.description,
      this._description,
      this.action,
      });

  factory TestReport_Test.fromJson(Map<String, dynamic> json) => _$TestReport_TestFromJson(json);
  Map<String, dynamic> toJson() _$TestReport_TestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Action1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
TestReport_Operation operation;
TestReport_Assert assert;

TestReport_Action1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.operation,
      this.assert,
      });

  factory TestReport_Action1.fromJson(Map<String, dynamic> json) => _$TestReport_Action1FromJson(json);
  Map<String, dynamic> toJson() _$TestReport_Action1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Teardown {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<TestReport_Action2> action;

TestReport_Teardown(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.action,
      });

  factory TestReport_Teardown.fromJson(Map<String, dynamic> json) => _$TestReport_TeardownFromJson(json);
  Map<String, dynamic> toJson() _$TestReport_TeardownToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Action2 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
TestReport_Operation operation;

TestReport_Action2(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.operation,
      });

  factory TestReport_Action2.fromJson(Map<String, dynamic> json) => _$TestReport_Action2FromJson(json);
  Map<String, dynamic> toJson() _$TestReport_Action2ToJson(this);
}

