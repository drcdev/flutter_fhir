

part 'testReport.g.dart';

@JsonSerializable(explicitToJson: true)
class TestReport {

  This is a TestReport resource resourceType;
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
  enum: completedin-progresswaitingstoppedentered-in-error status;
  Element _status;
  Reference testScript;
  enum: passfailpending result;
  Element _result;
  double score;
  Element _score;
  String tester;
  Element _tester;
  StringTime issued;
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
this.teardown});

  factory TestReport.fromJson(Map<String, dynamic> json) => _$TestReportFromJson(json);
  Map<String, dynamic> toJson() => _$TestReportToJson(this);
}