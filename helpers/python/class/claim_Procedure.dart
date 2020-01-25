

part 'claim_Procedure.g.dart';

@JsonSerializable(explicitToJson: true)
class Claim_Procedure {

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


Claim_Procedure(
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

  factory Claim_Procedure.fromJson(Map<String, dynamic> json) => _$Claim_ProcedureFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_ProcedureToJson(this);
}