import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 616)
class TestReport {

  //  This is a TestReport resource
  @HiveField(0)
  final String resourceType= 'TestReport';

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

  //  Identifier for the TestScript assigned for external purposes outside
  // the context of FHIR.
  @HiveField(11)
  Identifier identifier;

  //  A free text natural language name identifying the executed TestScript.
  @HiveField(12)
  String name;

  //  Extensions for name
  @HiveField(13)
  Element elementName;

  //  The current state of this test report.
  @HiveField(14)
  String status; // <code> enum: completed/in-progress/waiting/stopped/entered-in-error;

  //  Extensions for status
  @HiveField(15)
  Element elementStatus;

  //  Ideally this is an absolute URL that is used to identify the
  // version-specific TestScript that was executed, matching the
  // `TestScript.url`.
  @HiveField(16)
  Reference testScript;

  //  The overall result from the execution of the TestScript.
  @HiveField(17)
  String result; // <code> enum: pass/fail/pending;

  //  Extensions for result
  @HiveField(18)
  Element elementResult;

  //  The final score (percentage of tests passed) resulting from the
  // execution of the TestScript.
  @HiveField(19)
  double score;

  //  Extensions for score
  @HiveField(20)
  Element elementScore;

  //  Name of the tester producing this report (Organization or individual).
  @HiveField(21)
  String tester;

  //  Extensions for tester
  @HiveField(22)
  Element elementTester;

  //  When the TestScript was executed and this TestReport was generated.
  @HiveField(23)
  DateTime issued;

  //  Extensions for issued
  @HiveField(24)
  Element elementIssued;

  //  A participant in the test execution, either the execution engine, a
  // client, or a server.
  @HiveField(25)
  List<TestReport_Participant> participant;

  //  The results of the series of required setup operations before the
  // tests were executed.
  @HiveField(26)
  TestReport_Setup setup;

  //  A test executed from the test script.
  @HiveField(27)
  List<TestReport_Test> test;

  //  The results of the series of operations required to clean up after all
  // the tests were executed (successfully or otherwise).
  @HiveField(28)
  TestReport_Teardown teardown;

TestReport(
  this.testScript,
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
    this.identifier,
    this.name,
    this.elementName,
    this.status,
    this.elementStatus,
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
    this.teardown
    });

  factory TestReport.fromJson(Map<String, dynamic> json) => _$TestReportFromJson(json);
  Map<String, dynamic> toJson() => _$TestReportToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Participant {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The type of participant.
  String type; // <code> enum: test-engine/client/server;

  //  Extensions for type
  Element elementType;

  //  The uri of the participant. An absolute URL is preferred.
  String uri;

  //  Extensions for uri
  Element elementUri;

  //  The display name of the participant.
  String display;

  //  Extensions for display
  Element elementDisplay;

TestReport_Participant(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.uri,
    this.elementUri,
    this.display,
    this.elementDisplay
    });

  factory TestReport_Participant.fromJson(Map<String, dynamic> json) => _$TestReport_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_ParticipantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Setup {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Action would contain either an operation or an assertion.
  List<TestReport_Action> action;

TestReport_Setup(
  this.action,
    {this.id,
    this.extension,
    this.modifierExtension
    });

  factory TestReport_Setup.fromJson(Map<String, dynamic> json) => _$TestReport_SetupFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_SetupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Action {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The operation performed.
  TestReport_Operation operation;

  //  The results of the assertion performed on the previous operations.
  TestReport_Assert asserts;

TestReport_Action(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.operation,
    this.asserts
    });

  factory TestReport_Action.fromJson(Map<String, dynamic> json) => _$TestReport_ActionFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Operation {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The result of this operation.
  String result; // <code> enum: pass/skip/fail/warning/error;

  //  Extensions for result
  Element elementResult;

  //  An explanatory message associated with the result.
  String message;

  //  Extensions for message
  Element elementMessage;

  //  A link to further details on the result.
  String detail;

  //  Extensions for detail
  Element elementDetail;

TestReport_Operation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.result,
    this.elementResult,
    this.message,
    this.elementMessage,
    this.detail,
    this.elementDetail
    });

  factory TestReport_Operation.fromJson(Map<String, dynamic> json) => _$TestReport_OperationFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_OperationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Assert {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The result of this assertion.
  String result; // <code> enum: pass/skip/fail/warning/error;

  //  Extensions for result
  Element elementResult;

  //  An explanatory message associated with the result.
  String message;

  //  Extensions for message
  Element elementMessage;

  //  A link to further details on the result.
  String detail;

  //  Extensions for detail
  Element elementDetail;

TestReport_Assert(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.result,
    this.elementResult,
    this.message,
    this.elementMessage,
    this.detail,
    this.elementDetail
    });

  factory TestReport_Assert.fromJson(Map<String, dynamic> json) => _$TestReport_AssertFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_AssertToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Test {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The name of this test used for tracking/logging purposes by test
  // engines.
  String name;

  //  Extensions for name
  Element elementName;

  //  A short description of the test used by test engines for tracking and
  // reporting purposes.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  Action would contain either an operation or an assertion.
  List<TestReport_Action1> action;

TestReport_Test(
  this.action,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.description,
    this.elementDescription
    });

  factory TestReport_Test.fromJson(Map<String, dynamic> json) => _$TestReport_TestFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_TestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Action1 {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  An operation would involve a REST request to a server.
  TestReport_Operation operation;

  //  The results of the assertion performed on the previous operations.
  TestReport_Assert asserts;

TestReport_Action1(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.operation,
    this.asserts
    });

  factory TestReport_Action1.fromJson(Map<String, dynamic> json) => _$TestReport_Action1FromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_Action1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Teardown {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The teardown action will only contain an operation.
  List<TestReport_Action2> action;

TestReport_Teardown(
  this.action,
    {this.id,
    this.extension,
    this.modifierExtension
    });

  factory TestReport_Teardown.fromJson(Map<String, dynamic> json) => _$TestReport_TeardownFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_TeardownToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestReport_Action2 {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  An operation would involve a REST request to a server.
  TestReport_Operation operation;

TestReport_Action2(
  this.operation,
    {this.id,
    this.extension,
    this.modifierExtension
    });

  factory TestReport_Action2.fromJson(Map<String, dynamic> json) => _$TestReport_Action2FromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_Action2ToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TestReportAdapter extends TypeAdapter<TestReport> {
  @override
  final typeId = 616;

  @override
  TestReport read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TestReport(
      fields[16] as Reference,
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestReport _$TestReportFromJson(Map<String, dynamic> json) {
  return TestReport(
    json['testScript'] == null
        ? null
        : Reference.fromJson(json['testScript'] as Map<String, dynamic>),
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
    (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : TestReport_Action.fromJson(e as Map<String, dynamic>))
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
    (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : TestReport_Action1.fromJson(e as Map<String, dynamic>))
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
    (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : TestReport_Action2.fromJson(e as Map<String, dynamic>))
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
    json['operation'] == null
        ? null
        : TestReport_Operation.fromJson(
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

Map<String, dynamic> _$TestReport_Action2ToJson(TestReport_Action2 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'operation': instance.operation?.toJson(),
    };
