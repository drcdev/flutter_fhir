part 'operationOutcome.g.dart';

@JsonSerializable(explicitToJson: true)
class OperationOutcome {

OperationOutcome resourceType;
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
List<OperationOutcome_Issue> issue;

OperationOutcome(
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
      this.issue,
      });

  factory OperationOutcome.fromJson(Map<String, dynamic> json) => _$OperationOutcomeFromJson(json);
  Map<String, dynamic> toJson() _$OperationOutcomeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OperationOutcome_Issue {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String severity; // <code> enum: fatal/error/warning/information;
Element _severity;
String code; // <code> enum: invalid/structure/required/value/invariant/security/login/unknown/expired/forbidden/suppressed/processing/not-supported/duplicate/multiple-matches/not-found/deleted/too-long/code-invalid/extension/too-costly/business-rule/conflict/transient/lock-error/no-store/exception/timeout/incomplete/throttled/informational;
Element _code;
CodeableConcept details;
String diagnostics;
Element _diagnostics;
List<String> location;
List<Element> _location;
List<String> expression;
List<Element> _expression;

OperationOutcome_Issue(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.severity,
      this._severity,
      this.code,
      this._code,
      this.details,
      this.diagnostics,
      this._diagnostics,
      this.location,
      this._location,
      this.expression,
      this._expression,
      });

  factory OperationOutcome_Issue.fromJson(Map<String, dynamic> json) => _$OperationOutcome_IssueFromJson(json);
  Map<String, dynamic> toJson() _$OperationOutcome_IssueToJson(this);
}

