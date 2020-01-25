

part 'explanationOfBenefit_Procedure.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Procedure {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element _sequence;
  List<CodeableConcept> type;
  StringTime date;
  Element _date;
  CodeableConcept procedureCodeableConcept;
  Reference procedureReference;
  List<Reference> udi;


ExplanationOfBenefit_Procedure(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.type,
this.date,
this._date,
this.procedureCodeableConcept,
this.procedureReference,
this.udi});

  factory ExplanationOfBenefit_Procedure.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_ProcedureFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_ProcedureToJson(this);
}