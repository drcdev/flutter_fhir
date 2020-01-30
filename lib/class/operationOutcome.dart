import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'operationOutcome.g.dart';

@JsonSerializable(explicitToJson: true)
class OperationOutcome {

//  This is a OperationOutcome resource
String resourceType;

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

//  An error, warning, or information message that results from a system
// action.
List<OperationOutcome_Issue> issue;

OperationOutcome(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.issue
    });

  factory OperationOutcome.fromJson(Map<String, dynamic> json) => _$OperationOutcomeFromJson(json);
  Map<String, dynamic> toJson() => _$OperationOutcomeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OperationOutcome_Issue {

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

//  Indicates whether the issue indicates a variation from successful
// processing.
String severity; // <code> enum: fatal/error/warning/information;

//  Extensions for severity
Element element_severity;

//  Describes the type of the issue. The system that creates an
// OperationOutcome SHALL choose the most applicable code from the
// IssueType value set, and may additional provide its own code for the
// error in the details element.
String code; // <code> enum: invalid/structure/required/value/invariant/security/login/unknown/expired/forbidden/suppressed/processing/not-supported/duplicate/multiple-matches/not-found/deleted/too-long/code-invalid/extension/too-costly/business-rule/conflict/transient/lock-error/no-store/exception/timeout/incomplete/throttled/informational;

//  Extensions for code
Element element_code;

//  Additional details about the error. This may be a text description of
// the error or a system code that identifies the error.
CodeableConcept details;

//  Additional diagnostic information about the issue.
String diagnostics;

//  Extensions for diagnostics
Element element_diagnostics;

//  This element is deprecated because it is XML specific. It is replaced
// by issue.expression, which is format independent, and simpler to parse.
//  For resource issues, this will be a simple XPath limited to element
// names, repetition indicators and the default child accessor that
// identifies one of the elements in the resource that caused this issue
// to be raised.  For HTTP errors, will be "http." + the parameter name.
List<String> location;

//  Extensions for location
List<Element> element_location;

//  A [simple subset of FHIRPath](fhirpath.html#simple) limited to element
// names, repetition indicators and the default child accessor that
// identifies one of the elements in the resource that caused this issue
// to be raised.
List<String> expression;

//  Extensions for expression
List<Element> element_expression;

OperationOutcome_Issue(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.severity,
    this.element_severity,
    this.code,
    this.element_code,
    this.details,
    this.diagnostics,
    this.element_diagnostics,
    this.location,
    this.element_location,
    this.expression,
    this.element_expression
    });

  factory OperationOutcome_Issue.fromJson(Map<String, dynamic> json) => _$OperationOutcome_IssueFromJson(json);
  Map<String, dynamic> toJson() => _$OperationOutcome_IssueToJson(this);
}

