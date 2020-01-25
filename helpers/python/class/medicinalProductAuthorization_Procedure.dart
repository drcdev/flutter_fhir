

part 'medicinalProductAuthorization_Procedure.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductAuthorization_Procedure {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier identifier;
  CodeableConcept type;
  Period datePeriod;
  String dateDateTime;
  Element _dateDateTime;
  List<MedicinalProductAuthorization_Procedure> application;


MedicinalProductAuthorization_Procedure(
      {this.id,
this.extension,
this.modifierExtension,
this.identifier,
this.type,
this.datePeriod,
this.dateDateTime,
this._dateDateTime,
this.application});

  factory MedicinalProductAuthorization_Procedure.fromJson(Map<String, dynamic> json) => _$MedicinalProductAuthorization_ProcedureFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductAuthorization_ProcedureToJson(this);
}