

part 'claim_Accident.g.dart';

@JsonSerializable(explicitToJson: true)
class Claim_Accident {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String date;
  Element _date;
  CodeableConcept type;
  Address locationAddress;
  Reference locationReference;


Claim_Accident(
      {this.id,
this.extension,
this.modifierExtension,
this.date,
this._date,
this.type,
this.locationAddress,
this.locationReference});

  factory Claim_Accident.fromJson(Map<String, dynamic> json) => _$Claim_AccidentFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_AccidentToJson(this);
}