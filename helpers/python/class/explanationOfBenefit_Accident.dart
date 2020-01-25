

part 'explanationOfBenefit_Accident.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Accident {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String date;
  Element _date;
  CodeableConcept type;
  Address locationAddress;
  Reference locationReference;


ExplanationOfBenefit_Accident(
      {this.id,
this.extension,
this.modifierExtension,
this.date,
this._date,
this.type,
this.locationAddress,
this.locationReference});

  factory ExplanationOfBenefit_Accident.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_AccidentFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_AccidentToJson(this);
}