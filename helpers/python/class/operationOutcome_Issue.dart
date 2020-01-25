

part 'operationOutcome_Issue.g.dart';

@JsonSerializable(explicitToJson: true)
class OperationOutcome_Issue {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: fatalerrorwarninginformation severity;
  Element _severity;
  enum: invalidstructurerequiredvalueinvariantsecurityloginunknownexpiredforbiddensuppressedprocessingnot-supportedduplicatemultiple-matchesnot-founddeletedtoo-longcode-invalidextensiontoo-costlybusiness-ruleconflicttransientlock-errorno-storeexceptiontimeoutincompletethrottledinformational code;
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
this._expression});

  factory OperationOutcome_Issue.fromJson(Map<String, dynamic> json) => _$OperationOutcome_IssueFromJson(json);
  Map<String, dynamic> toJson() => _$OperationOutcome_IssueToJson(this);
}