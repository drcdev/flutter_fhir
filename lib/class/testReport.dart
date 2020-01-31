import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'testReport.g.dart';

@JsonSerializable(explicitToJson: true)
class TestReport {

  //  This is a TestReport resource
  final String resourceType= 'TestReport';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  String implicitRules;

  //  Extensions for implicitRules
  Element element_implicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element element_language;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  List<ResourceList> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Identifier for the TestScript assigned for external purposes outside
  // the context of FHIR.
  Identifier identifier;

  //  A free text natural language name identifying the executed TestScript.
  String name;

  //  Extensions for name
  Element element_name;

  //  The current state of this test report.
  String status; // <code> enum: completed/in-progress/waiting/stopped/entered-in-error;

  //  Extensions for status
  Element element_status;

  //  Ideally this is an absolute URL that is used to identify the
  // version-specific TestScript that was executed, matching the
  // `TestScript.url`.
  Reference testScript;

  //  The overall result from the execution of the TestScript.
  String result; // <code> enum: pass/fail/pending;

  //  Extensions for result
  Element element_result;

  //  The final score (percentage of tests passed) resulting from the
  // execution of the TestScript.
  double score;

  //  Extensions for score
  Element element_score;

  //  Name of the tester producing this report (Organization or individual).
  String tester;

  //  Extensions for tester
  Element element_tester;

  //  When the TestScript was executed and this TestReport was generated.
  DateTime issued;

  //  Extensions for issued
  Element element_issued;

  //  A participant in the test execution, either the execution engine, a
  // client, or a server.
  List<TestReport_Participant> participant;

  //  The results of the series of required setup operations before the
  // tests were executed.
  TestReport_Setup setup;

  //  A test executed from the test script.
  List<TestReport_Test> test;

  //  The results of the series of operations required to clean up after all
  // the tests were executed (successfully or otherwise).
  TestReport_Teardown teardown;

TestReport(
  this.testScript,
    {this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.name,
    this.element_name,
    this.status,
    this.element_status,
    this.result,
    this.element_result,
    this.score,
    this.element_score,
    this.tester,
    this.element_tester,
    this.issued,
    this.element_issued,
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
  Element element_type;

  //  The uri of the participant. An absolute URL is preferred.
  String uri;

  //  Extensions for uri
  Element element_uri;

  //  The display name of the participant.
  String display;

  //  Extensions for display
  Element element_display;

TestReport_Participant(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.element_type,
    this.uri,
    this.element_uri,
    this.display,
    this.element_display
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
  Element element_result;

  //  An explanatory message associated with the result.
  String message;

  //  Extensions for message
  Element element_message;

  //  A link to further details on the result.
  String detail;

  //  Extensions for detail
  Element element_detail;

TestReport_Operation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.result,
    this.element_result,
    this.message,
    this.element_message,
    this.detail,
    this.element_detail
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
  Element element_result;

  //  An explanatory message associated with the result.
  String message;

  //  Extensions for message
  Element element_message;

  //  A link to further details on the result.
  String detail;

  //  Extensions for detail
  Element element_detail;

TestReport_Assert(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.result,
    this.element_result,
    this.message,
    this.element_message,
    this.detail,
    this.element_detail
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
  Element element_name;

  //  A short description of the test used by test engines for tracking and
  // reporting purposes.
  String description;

  //  Extensions for description
  Element element_description;

  //  Action would contain either an operation or an assertion.
  List<TestReport_Action1> action;

TestReport_Test(
  this.action,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.element_name,
    this.description,
    this.element_description
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

